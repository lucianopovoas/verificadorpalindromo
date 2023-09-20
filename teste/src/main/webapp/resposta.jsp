<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Resultado</title>
</head>
<body>
    <h1>Resultado</h1>
    
    <%
        String palavra = request.getParameter("palavra");
        
        palavra = palavra.replaceAll(" ", "").toLowerCase();
        
        String palavraInvertida = new StringBuilder(palavra).reverse().toString();
        
        boolean ehPalindromo = palavra.equals(palavraInvertida);
    %>
    
    <p>Palavra inserida: <%= palavra %></p>
    <p>Palavra invertida: <%= palavraInvertida %></p>
    
    <% if (ehPalindromo) { %>
        <p>A palavra é um palíndromo!</p>
    <% } else { %>
        <p>A palavra não é um palíndromo.</p>
    <% } %>
    
    <a href="palindromo.jsp">Voltar</a>
</body>
</html>