// es mi primer Driver en lenguaje c
#include <windows.h>
#include <setupapi.h>
#include <winusb.h>
#include <stdio.h>
#define BUFFER_SIZE 1024
// leeremos un dispositivo USB ficticio
int main() {
   // Variables
    HANDLE hDevice;
    BOOL bResult;
    UCHAR buffer[BUFFER_SIZE];
    DWORD dwBytesRead;
    // Abrir el dispositivo USB
    /*
      si queremos abrir un dispositivo USB real requerimos de la ID_del_hardware que podemos obtener en 
      la pestalla de detalles del Driver en especifico.                                                   
      en este caso el Id del Harware es:USB#VID_xxxx&PID_xxxx#xxxxxxxxxxxx#{yyyyyyyy-yyyy-yyyy-yyyy-yyyyyyyyyyyy}
    */
    hDevice = CreateFileW(L"\\\\.\\USB#VID_13D3&PID_xxxx#xxxxxxxxxxxx#{yyyyyyyy-yyyy-yyyy-yyyy-yyyyyyyyyyyy}",
                         GENERIC_READ | GENERIC_WRITE,
                         FILE_SHARE_READ | FILE_SHARE_WRITE,
                         NULL,
                         OPEN_EXISTING,
                         FILE_FLAG_OVERLAPPED,
                         NULL);

    if (hDevice == INVALID_HANDLE_VALUE) {
        printf("No se pudo abrir el dispositivo USB. Error: %d\n", GetLastError());
        return 1;
    }

    // Leer datos del dispositivo USB
    bResult = ReadFile(hDevice, buffer, BUFFER_SIZE, &dwBytesRead, NULL);
    if (!bResult) {
        printf("Error al leer datos del dispositivo USB. Error: %d\n", GetLastError());
        CloseHandle(hDevice);
        return 1;
    }
    // Mostrar los datos leídos
    printf("Datos leídos del dispositivo USB:\n");
    for (DWORD i = 0; i < dwBytesRead; i++) {
        printf("%02X ", buffer[i]);
    }
    printf("\n");

    // Cerrar el dispositivo USB
    CloseHandle(hDevice);

    getchar();
    return 0;
}
