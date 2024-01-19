// C++ es un lenguaje orientado a objeto como Java
// pero con una sintaxis más simple y no tiene la clase abstracta.
#include <iostream>
#include <string>
using namespace std;
// Vamos hace un objeto persona
class Persona {
    public:
    int edad;
    string identificacion;
    string nombre= "Jesus";
    string apellido= "Campos";
    };
    int main() {
        // crear un objeto de la clase persona
        Persona miPersona;
        cout << "Nombre completo: "<<miPersona.nombre<<" "<<miPersona.apellido<<endl;
        // acceder a los atributos de la clase
        miPersona.edad = 25;
        miPersona.identificacion ="10346789";
        cout << "Edad: "<<miPersona.edad<<endl;
        cout << "Identificacion: "<<miPersona.identificacion<<endl;
}