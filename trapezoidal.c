#include<stdio.h>
#include<math.h>


double function(double x);
double calculateArea(double a, double b, int n);
double intervalLenth(double a,double b,int n);


int main () {

double a1 = 0.0; 
double b1 = 6.0; 
int n1 = 400; 
double store1 = calculateArea(a1,b1,n1);
printf("The Area is : %f", store1);

return 0; 

}


double calculateArea(double a,double b, int n){

   double delX2; 
   delX2 = intervalLenth(a,b,n);
    double x1[n+1]; 

    for(int j = 0; j<=n; j++){
        if(j==0){
            x1[j] = a; 
        }
    else if(j==(n)){
        x1[j] = b; 
    }
    else{
        x1[j] = x1[j-1]+delX2;

    }
 }

    double A=0; 

    for(int i = 0; i<=n; i++){

       if(i==0 || i==n){
           A = A+((delX2/2)*function(x1[i]));
        }
        else{
           A = A+(delX2*function(x1[i]));
        }

    }

    return A;
}

double intervalLenth(double a,double b,int n)
{
    double deltaX; 
    deltaX = (b-a)/n;
    return deltaX;
}



double function(double x){

    double func; 
    func = ((6*x-(6/8)*(x*x)))/24; 
    return func;

}






