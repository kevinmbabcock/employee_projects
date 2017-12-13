require("spec_helper")

describe(Project) do
  it("has many employees") do

    test_employee1 = Employee.create({:name => "Marie-Grace Gardner"})
    test_employee2 = Employee.create({:name => "Rohan Patel"})
    test_project = Project.create({:name => "Terribly important project", :employee_ids => [test_employee1.id, test_employee2.id]})
    expect(test_project.employees).to(eq([test_employee1,test_employee2]))
  end
end
