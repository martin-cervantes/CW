#include<string>
using namespace std;

string bonus_time(int salary, bool bonus)
{
    if(bonus) salary = salary * 10;

    return "$"+to_string(salary);
}
