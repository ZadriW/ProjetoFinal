package restaurante.servlets;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import restaurante.DAO.PratoDAO;
import restaurante.model.Prato;

@WebServlet("/ListarPratosServlet")
public class ListarPratosServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtenha a lista de pratos do banco de dados (use o PratoDAO)
        PratoDAO pratoDAO = new PratoDAO();
        List<Prato> pratos = pratoDAO.getAllPratos();

        // Defina os pratos como um atributo da requisição para a página JSP
        request.setAttribute("pratos", pratos);

        // Encaminhe a requisição para a página JSP de listagem de pratos
        request.getRequestDispatcher("listarPrato.jsp").forward(request, response);
    }
}
