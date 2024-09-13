#include <iostream>
#include <cstdlib>
#include <ctime>
#include <string>
#include <vector>
#include <algorithm>

const int TamañoPoblacion = 100;
const int MaxGeneraciones = 1000;
const double TasaMutacion = 0.01;

// Función para calcular la aptitud
int calcularAptitud(const std::string& palabraGenerada, const std::string& palabraObjetivo) {
    int aptitud = 0;
    for (int i = 0; i < palabraObjetivo.length(); i++) {
        if (palabraGenerada[i] == palabraObjetivo[i]) {
            aptitud++;
        }
    }
    return aptitud;
}

// Función de crossover
std::string crossover(const std::string& padre1, const std::string& padre2) {
    std::string hijo = "";
    for (int i = 0; i < padre1.length(); i++) {
        hijo += (rand() % 2 == 0) ? padre1[i] : padre2[i];
    }
    return hijo;
}

// Función de mutación
void mutacion(std::string& hijo, double tasaMutacion) {
    for (int i = 0; i < hijo.length(); i++) {
        if ((rand() / double(RAND_MAX)) < tasaMutacion) {
            hijo[i] = 'a' + rand() % 26;
        }
    }
}

// Seleccionar los mejores individuos
std::vector<std::string> seleccionarMejores(const std::vector<std::pair<std::string, int>>& poblacion) {
    std::vector<std::string> seleccionados;
    for (int i = 0; i < TamañoPoblacion / 2; i++) {
        seleccionados.push_back(poblacion[i].first);
    }
    return seleccionados;
}

int main() {
    srand(time(0));

    // Entrada del usuario
    std::string palabraObjetivo;
    std::cout << "Introduce una palabra: ";
    std::cin >> palabraObjetivo;

    // Inicializar población
    std::vector<std::pair<std::string, int>> poblacion(TamañoPoblacion);
    for (int i = 0; i < TamañoPoblacion; i++) {
        std::string palabra = "";
        for (int j = 0; j < palabraObjetivo.length(); j++) {
            palabra += 'a' + rand() % 26;
        }
        poblacion[i] = { palabra, 0 };
    }

    for (int generacion = 0; generacion < MaxGeneraciones; generacion++) {
        // Calcular aptitud para toda la población
        for (auto& individuo : poblacion) {
            individuo.second = calcularAptitud(individuo.first, palabraObjetivo);
        }

        // Ordenar población por aptitud
        std::sort(poblacion.begin(), poblacion.end(), [](const auto& a, const auto& b) {
            return a.second > b.second;
        });

        // Si encontramos la palabra objetivo
        if (poblacion[0].second == palabraObjetivo.length()) {
            std::cout << "Palabra encontrada en la generacion " << generacion << ": " << poblacion[0].first << std::endl;
            break;
        }

        // Selección de los mejores
        std::vector<std::string> seleccionados = seleccionarMejores(poblacion);

        // Nueva generación
        std::vector<std::pair<std::string, int>> nuevaPoblacion(TamañoPoblacion);
        for (int i = 0; i < TamañoPoblacion; i++) {
            std::string padre1 = seleccionados[rand() % seleccionados.size()];
            std::string padre2 = seleccionados[rand() % seleccionados.size()];
            std::string hijo = crossover(padre1, padre2);
            mutacion(hijo, TasaMutacion);
            nuevaPoblacion[i] = { hijo, 0 };
        }

        // Reemplazar la vieja población con la nueva
        poblacion = nuevaPoblacion;

        // Mostrar progreso
        std::cout << "Generacion " << generacion << " - Mejor palabra: " << poblacion[0].first 
                  << " Aptitud: " << poblacion[0].second << std::endl;
    }

    return 0;
}
