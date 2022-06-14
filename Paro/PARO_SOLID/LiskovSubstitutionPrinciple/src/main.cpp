#include <iostream>
#include <vector>
#include <memory>

#include <Employee.hpp>
#include <SummerTrainee.hpp>
#include <Accountant.hpp>

void motivate(std::vector<std::unique_ptr<Employee>>& employees)
{
    for (auto& employee: employees)\
    {
        employee->sendEmail("keep up the good work!");
    }
}

int main()
{
    std::vector<std::unique_ptr<Employee>> employees;
    employees.push_back(std::make_unique<Employee>("Adam", 1000));
    employees.push_back(std::make_unique<Employee>("Bartosz", 2000));
    employees.push_back(std::make_unique<Employee>("Celina", 3000));
    employees.push_back(std::make_unique<SummerTrainee>("Zbyszek"));

    motivate(employees);

    Accountant accountant(std::move(employees));
    accountant.paySalaries(6000);
    accountant.paySalaries(7200);

}
