<%--
  Created by IntelliJ IDEA.
  User: uanderson
  Date: 29/09/2022
  Time: 13:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Banana Bacana</title>
    <link rel="stylesheet" href="css/bananaStyle.css">
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
    <form action="cadastrarProduto" method="post" class="bananaForm">
        <div>
            <label><strong>Descrição:</strong></label><input type="text"
                                                             name="descricao">
        </div>
        <div>
            <label><strong>Quantidade:</strong></label><input type="text"
                                                              name="quantidade">
        </div>
        <div>
            <label><strong>Preço:</strong></label><input type="text"
                                                         name="preco">
        </div>

        <label><strong>Disponível On-Line:</strong></label><input
            type="checkbox" name="online">
        <br>
        <div>
            <input id="bananaButton" type="submit" name="salvar"
                   value="Cadastrar Produto">
        </div>
        <div>
            <%

                String mensagem = (String) request.getAttribute("mensagem");
                if (mensagem != null){
                    out.print(mensagem);
                }
            %>
        </div>
    </form>
</main>
</body>
</html>