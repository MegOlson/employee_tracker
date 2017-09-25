require 'spec_helper'

describe 'Project' do
  describe '.find_by_employee' do
    it 'will find all employees in project' do
      project = Project.new({name: "Clean House"})
      project.save
      employee2 = Employee.new({name: "Sam", project_id: project.id})
      employee = Employee.new({name: "Elrey", project_id: project.id})
      employee.save
      employee2.save
      expect(Project.find_by_employee(project.id)).to eq [employee, employee2]
    end
  end
end
