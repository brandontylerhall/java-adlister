import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "HelloWorldServlet", urlPatterns = "/hello")
public class HelloWorldServlet extends HttpServlet {
    private int pageCount;

    public void init() {
        // Reset hit counter.
        pageCount = 0;
    }
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
        int count;
        String name;
        try {
            count = Integer.parseInt(req.getParameter("count"));
        } catch (Exception e) {
            count = 1;
        }
        name = req.getParameter("name");
        if (name == null) {
            name = "World";
        }
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        for (int i = 0; i < count; i++) {
            out.println("<h1>Hello, " + name + "</h1>");
        }


        pageCount++;
        String title = "Total Number of Hits";
        String docType = "<!doctype html public \"-//w3c//dtd html 4.0 " + "transitional//en\">\n";

        out.println(docType +
                "<html>\n" +
                "<head><title>" + title + "</title></head>\n" +
                "<h1 align = \"center\">" + title + "</h1>\n" +
                "<h2 align = \"center\">" + pageCount + "</h2>\n" +
                "</html>"
        );
    }
}