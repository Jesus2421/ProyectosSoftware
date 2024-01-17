<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String mensaje = request.getParameter("<h2>Hola Mundo!</h2>");
if (mensaje == null) {
    mensaje = "Hola Mundo!";
}
int Edad = 42;
double Pi = 3.14;
int[] numeros = {1, 2, 3, 4, 5};
String[] colores = {"Rojo", "Verde", "Azul"};
int[][] matrizNumeros = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}};
out.println("<h2>"+ mensaje + "</h2>");
out.println("<p>su edad es=</p>"+ Edad);
out.println("<p>Pi es=</p>"+ Pi);
out.println("<h3>Números:</h3>");
        out.println("<ul>");
        for (int i = 0; i < numeros.length; i++) {
            out.println("<li>" + numeros[i] + "</li>");
        }
        out.println("</ul>");

        // Acceder y mostrar elementos del arreglo de cadenas
        out.println("<h3>Colores:</h3>");
        out.println("<ul>");
        for (int i = 0; i < colores.length; i++) {
            out.println("<li>" + colores[i] + "</li>");
        }
        out.println("</ul>");
        // Acceder y mostrar elementos del arreglo bidimensional
        out.println("<h3>Matriz de Números:</h3>");
        out.println("<table border='1'>");
        for (int i = 0; i < matrizNumeros.length; i++) {
            out.println("<tr>");
            for (int j = 0; j < matrizNumeros[i].length; j++) {
                out.println("<td>" + matrizNumeros[i][j] + "</td>");
            }
            out.println("</tr>");
        }
        out.println("</table>");
%>