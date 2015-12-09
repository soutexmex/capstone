package pharmdb;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/search")
public class SearchServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException 
    {
        String search = req.getParameter("search");
        
        req.setAttribute("search", search);
        req.getRequestDispatcher("/WEB-INF/search.jsp").forward(req, resp);
    }

}
