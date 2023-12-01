package restaurante.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import restaurante.DAO.PratoDAO;
import restaurante.model.Prato;

@WebServlet("/EditarPratoServlet")
public class EditarPratoServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtenha o ID do prato a ser editado a partir dos parâmetros da URL
        int id = Integer.parseInt(request.getParameter("id"));

        // Obtenha o prato do banco de dados com base no ID (use o PratoDAO)
        PratoDAO pratoDAO = new PratoDAO();
        Prato prato = pratoDAO.getPrato(id);

        // Defina o prato como um atributo da requisição para a página JSP
        request.setAttribute("prato", prato);

        // Encaminhe a requisição para a página JSP de edição de prato
        request.getRequestDispatcher("editarPrato.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Se a lógica para POST for a mesma que GET
        doGet(request, response);

        // Ou implemente uma lógica específica para POST aqui, se necessário
    }
}
