class Project < ActiveRecord::Base

  def self.find_by_employee(id)
    Employee.joins("INNER JOIN projects ON employees.project_id = #{id}")
  end
end
