require("spec_helper")

describe(Employee) do
  it("has many projects") do
    test_project1 = Project.create({:name => "Very important project"})
    test_project2 = Project.create({:name => "Not Very important project"})
    test_employee1 = Employee.create({:name => "Pilar Martinez", :project_ids => [test_project1.id, test_project2.id]})
    expect(test_employee1.projects).to(eq([test_project1, test_project2]))
  end
end
