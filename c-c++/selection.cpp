#include <iostream>
#include <vector>

using namespace std;

vector<int> selection_sort(vector<int> v)
{
    int initial = v.size();
    vector<int> sorted;
    
    while(sorted.size() < initial)
    {
        int min = v[0];
        int found = 0;
        for (int i = 0;i< v.size();i++)
        {
            if (v[i] < min) 
            {
              min = v[i];
              found = i;
            } 
        }

        v.erase(v.begin() + found);
        sorted.push_back(min);
    }
        return sorted;
}

void print_vec(vector<int> v)
{
    for (int i = 0;i < v.size();i++)
      cout << v[i] << " ";
    cout << endl;
}

int main()
{
    vector<int> vec;
    vec.push_back(4);
    vec.push_back(2);
    vec.push_back(7);
    vec.push_back(0);
    vec.push_back(1);
    vec.push_back(2);
    vec.push_back(10);
    vec.push_back(-3);

    print_vec(vec);

    vector<int> sorted = selection_sort(vec);

    print_vec(sorted);
    
}
