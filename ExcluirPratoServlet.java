package restaurante.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import restaurante.DAO.PratoDAO;

@WebServlet("/ExcluirPratoServlet")
public class ExcluirPratoServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtenha o ID do prato a ser excluído a partir dos parâmetros da URL
        int id = Integer.parseInt(request.getParameter("id"));

        // Chame o método para excluir o prato do banco de dados (use o PratoDAO)
        PratoDAO pratoDAO = new PratoDAO();
        pratoDAO.deletePrato(id);

        // Redirecione de volta à página de listagem de pratos
        response.sendRedirect("ListarPratosServlet");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Reutiliza a lógica de GET para lidar com solicitações POST
        doGet(request, response);
    }
}
