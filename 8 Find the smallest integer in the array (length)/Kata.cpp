#include <vector>

using namespace std;

int findSmallest(vector <int> list)
{
    int lower = list[0];
    for(int i = 0; i < list.size(); i++)
        if(list[i] < lower)
            lower = list[i];

    return lower;
}
