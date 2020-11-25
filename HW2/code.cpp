#include <iostream>
#include <stdio.h>

using namespace std;

#define MAX_SIZE 1000 

bool CheckSumPossibility(int num, int arr[], int size)
{
    // cout << num << " " <<size << " ";
	if (num == 0){
        // cout << "true"<<endl;
		return true;
    }
	if (size == 0){
        // cout << "false"<<endl;
		return false;
    }

	if (arr[size - 1] > num){
        // cout << "case:1"<<endl;
		return CheckSumPossibility(num, arr, size - 1);
    }
    // cout << "f1"<<endl;
    bool val = CheckSumPossibility(num, arr, size - 1 );
	if(! val){
    // cout << num << " " <<size << " ";
        // cout << "f2"<<endl;
		return CheckSumPossibility(num - arr[size - 1], arr, size - 1);
    }
    else
        return true;
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
