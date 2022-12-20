#include <iostream>

using namespace std;

// int argc, char *argv[]
int main(int argCount, char *argVector[]){

    if(argCount > 1){
        cout<<"Hello";
        for(int i = 1; i < argCount; i++){
            cout<<" "<<argVector[i];
        }

        cout<<endl;
        return 0;
    }

    cout<<"No args";



    return 0;
}