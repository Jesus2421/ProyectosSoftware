<%--Variables Glovales --%>
<%!
   int numero = 10;
   String nombre = "Jesus";
%>
<p>El numero es: <%= numero %></p>
<p>El nombre es: <%= nombre %></p>

<% 
   int resultado = numero * 2;
%>
<p>El doble del numero es: <%= resultado %></p>
<%--
  Uso de objetos implicitos:
 JSP proporciona objetos implícitos como request, response, session, y out,
 que puedes utilizar para interactuar con el entorno de la aplicación web.
--%>
<%
   String parametro = request.getParameter("parametro");
   if (parametro != null) {
    out.println("El valor del parametro es: " + parametro);
 } else {
    out.println("El valor= parametro");
 }
%>

