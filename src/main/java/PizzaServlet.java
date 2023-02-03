import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;

@WebServlet(name = "PizzaServlet", urlPatterns = "/pizza-order")
public class PizzaServlet extends HttpServlet  {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        req.getRequestDispatcher("/WEB-INF/pizza-order.jsp").forward(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

        String crust = req.getParameter("crust");
        String sauce = req.getParameter("sauce");
        String[] toppings = req.getParameterValues("toppings");
        String address = req.getParameter("address");
        String allToppings = Arrays.toString(toppings);

        System.out.println("toppings: " + allToppings + " \n " + sauce + "\n "+ crust+"\n" + "delivered to " + address);
        resp.sendRedirect("/pizza-order");
    }
}
