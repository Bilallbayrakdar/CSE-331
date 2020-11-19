#include <iostream>
#include <stdio.h>

using namespace std;

#define MAX_SIZE 1000 

bool CheckSumPossibility(int num, int arr[], int size)
{
	if (num == false)
		return true;
	if (size == false)
		return false;

	if (arr[size - 1] > num)
		return CheckSumPossibility(num, arr, size - 1);

	return CheckSumPossibility(num, arr, size - 1 )
		|| CheckSumPossibility(num - arr[size - 1], arr, size - 1);
}

// Driver code
int main() 
{
    int arraySize; 
    int arr[MAX_SIZE]; 
    int num; 
    int returnVal;
    
    cin >> arraySize; 
    cin >> num;
    
    for(int i = 0; i < arraySize; ++i) {
        cin >> arr[i]; 
    } 
    returnVal = CheckSumPossibility(num, arr, arraySize);
    
    if(returnVal == true) 
    {
        cout << "Possible!\n" << endl; 
    }
    else 
    {
        cout << "Not possible!\n" << endl; 
    } 
    
    return 0; 
}
