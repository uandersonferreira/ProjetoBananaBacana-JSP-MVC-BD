package controle;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import modelo.Produto;

import java.io.IOException;

@WebServlet(name = "CadastrarProdutoController", value = "/CadastrarProdutoController")
public class CadastrarProdutoController extends HttpServlet {
    public CadastrarProdutoController() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        this.doPost(request, response);//manda a requisição para o doPost caso for feita utilizando o doGet

    }//doGet

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        String descricao = request.getParameter("descricao");
        boolean online = false;
        String mensagem;
        Produto produto = new Produto();

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("cadastrarProduto.jsp");

        if (descricao != null && !descricao.isEmpty() &&
                request.getParameter("quantidade") != null && !request.getParameter("quantidade").isEmpty() &&
                request.getParameter("preco") != null && !request.getParameter("preco").isEmpty()
        ) {
            int quantidade = Integer.parseInt(request.getParameter("quantidade"));
            double preco = Double.parseDouble(request.getParameter("preco"));

            if (request.getParameter("online")!= null && request.getParameter("online").equals("on")){
                online = true;

                produto.setDescricao(descricao);
                produto.setQuantidade(quantidade);
                produto.setPreco(preco);
                produto.setOnline(online);
                produto.salvar();

                mensagem = " Produto Cadastrado com Sucesso!";

            }

        }else {
            mensagem = "Os campos Precisão ser preenchidos!";
            request.setAttribute("mensagem",mensagem);
            requestDispatcher.forward(request,response);
        }

    }//doPost

}//class
