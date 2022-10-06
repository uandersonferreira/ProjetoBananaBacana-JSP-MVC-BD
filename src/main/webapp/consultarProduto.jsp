<%--
  Created by IntelliJ IDEA.
  User: uanderson
  Date: 29/09/2022
  Time: 13:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="css/bananaStyle.css">

    <meta charset="ISO-8859-1">
    <title>Banana Bacana</title>
</head>
<body>
<nav class="bananaNav">
    <ul>
        <li><span style="color: yellow">BananaBacana</span></li>
        <li><img src="img/bacana.png" height="20px"></li>
        <li><a href="cadastrarProduto.jsp">Cadastrar Produto</a></li>
        <li><a href="consultarProduto.jsp">Consultar Produto</a></li>
    </ul>
</nav>
<main class="bananaMain">
    <form action="" method="post" class="bananaForm">
        <div>
            <label><strong>Busca pela Descrição:</strong></label><input type="text"
                                                                        name="descricao">
        </div>
        <br>
        <div>
            <input id="bananaButton" type="submit" name="salvar"
                   value="Consultar Produto">
        </div>
    </form>
</main>
</body>
</html>