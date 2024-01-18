<%
out.println("Ciclos de Numeros del 1 a 5");
for (int i = 1; i <= 5; i++) { %>
    <p><%= i %></p>
<% } 
String[] colores = {"Rojo", "Verde", "Azul"};
out.println("Ciclo de colores");
for (String color : colores) {
    %>
        <p><%= color %></p>
    <% } 
out.println("Ciclo While");
int i = 1;
while (i <= 5) {
%>
<p><%= i %></p>
<% 
    i++;
} 
out.println("bucle do-while");
int contador = 0;
out.println("<br>");
out.println("El inicio del contador = "+ contador);
do {  
    contador++;
} while (contador < 5);

%>
<p><%="El contador al final:" %></p>
<p><%=contador %></p>