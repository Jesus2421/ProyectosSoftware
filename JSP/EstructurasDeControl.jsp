<%
   int condicion=0;
   out.println("Estrutura 1: If/else");
   out.println("<br>");
   if (condicion==1){
    out.println("La variable es 1");
   }else{   
    out.println("La variable no es 1");
   }
   out.println("<br>");
   out.println("<br>");
   out.println("Estrutura 2: Switch case");
   out.println("<br>");
   char letra='b';
   switch(letra) {
    case 'a':
    out.println("La letra es a");
    break;
    case 'b':
    out.println("La letra es b");
    break;
    default :
    out.println("No corresponde a ninguna opcion");
   }

%>