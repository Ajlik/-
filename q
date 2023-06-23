Извините за предыдущую ошибку. Верный термин для массива в C++ - "массив". Ниже приведен пример создания и удаления строки из двумерного массива в C++:

cpp
Copy code
#include <iostream>
using namespace std;

int main() {
    int rows = 3;
    int cols = 4;

    // Создание двумерного массива
    int** array = new int*[rows];
    for (int i = 0; i < rows; ++i) {
        array[i] = new int[cols];
    }

    // Заполнение массива значениями
    for (int i = 0; i < rows; ++i) {
        for (int j = 0; j < cols; ++j) {
            array[i][j] = i * cols + j;
        }
    }

    // Вывод значений массива
    cout << "Исходный массив:\n";
    for (int i = 0; i < rows; ++i) {
        for (int j = 0; j < cols; ++j) {
            cout << array[i][j] << " ";
        }
        cout << endl;
    }

    // Добавление новой строки в массив
    int newRows = rows + 1;
    int** newArray = new int*[newRows];
    for (int i = 0; i < newRows; ++i) {
        if (i < rows) {
            newArray[i] = array[i];
        } else {
            newArray[i] = new int[cols];
            // Инициализация новой строки
            for (int j = 0; j < cols; ++j) {
                newArray[i][j] = i * cols + j;
            }
        }
    }

    // Удаление строки из массива
    int rowIndex = 1; // Индекс удаляемой строки
    newRows = rows - 1;
    int** updatedArray = new int*[newRows];
    int k = 0;
    for (int i = 0; i < rows; ++i) {
        if (i != rowIndex) {
            updatedArray[k] = newArray[i];
            ++k;
        } else {
            delete[] newArray[i]; // Освобождение памяти удаленной строки
        }
    }

    // Обновление переменных массива
    rows = newRows;
    array = updatedArray;

    // Вывод значений обновленного массива
    cout << "Обновленный массив:\n";
    for (int i = 0; i < rows; ++i) {
        for (int j = 0; j < cols; ++j) {
            cout << array[i][j] << " ";
        }
        cout << endl;
    }

    // Освобождение памяти
    for (int i = 0; i < rows; ++i) {
        delete[] array[i];
    }
    delete[] array;

    return 0;
}
Приведенный выше код создает двумерный массив, заполняет его значениями и затем добавляет новую строку в массив и удаляет одну строку из массива. Пожалуйста, адаптируйте его под свои нужды и убедитесь, что правильно управляете памятью и обрабатываете граничные условия.
