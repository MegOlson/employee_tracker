ENV['RACK_ENV'] = 'test'

require("sinatra/activerecord")
require 'rspec'
require 'pg'
require 'employee'
require 'department'
require 'project'


RSpec.configure do |config|
  config.after(:each) do
    Department.all().each() do |department|
      department.destroy()
    end
    Employee.all.each do |employee|
      employee.destroy
    end
    Project.all.each do |project|
      project.destroy
    end
  end
end
