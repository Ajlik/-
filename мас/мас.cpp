
#include <iostream>
using namespace std;
int main()
{
	srand(time(NULL));
	setlocale(LC_ALL, "RU");

/*	float mass[1000] = {2,4,7,2,6};
	float summa = 0;
	float min = mass[0];
	
	
	for (int i = 0; i < 10; i++) {
		cout << "введите эллемент:" << i << ":" << endl;
		cin >> mass[i];
	}
	
	for (int i = 0; i < 10; i++) {
		cout << "эллемент:" << i << ": " << mass[i] << endl;
	}
	
	for (int i = 0; i < 10; i++) {
		summa += mass[i];
		if (mass[i] < min)
			min = mass[i];
	
	}
	cout << "сумма: " << summa<< endl;
	cout << "минимальное число: " << min;
	*/
	int matrix[3][3] = { {3,6,43}, {4,3,6}, {3,8,10} };
	for (int i = 0; i < 3; i++) {
		for (int j = 0; j < 3; j++) {
			cout<< matrix[i][j]<<endl;
		}
	 }
	
	
	
	
	
	
	
	return 0;
}

