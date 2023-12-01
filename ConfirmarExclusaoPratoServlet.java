package restaurante.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import restaurante.DAO.PratoDAO;
import restaurante.model.Prato;

@WebServlet("/ConfirmarExclusaoPratoServlet")
public class ConfirmarExclusaoPratoServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));

        PratoDAO pratoDAO = new PratoDAO();
        Prato prato = pratoDAO.getPrato(id);

        request.setAttribute("prato", prato);
        request.getRequestDispatcher("confirmarExclusaoPrato.jsp").forward(request, response);
    }
}
