<%
   int condicion=0;
   out.println("Estrutura 1: If/else");
   if (condicion==1){
    System.out.println("La variable es 1");
   }else{   
    System.out.println("La variable no es 1");
   }
   out.println("<br>");
   out.println("Estrutura 2: Switch case");
   char letra='b';
   switch(letra) {
    case 'a':
    System.out.println("La letra es a");
    break;
    case 'b':
    System.out.println("La letra es b");
    break;
    default :
    System.out.println("No corresponde a ninguna opcion");
   }

%>