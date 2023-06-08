package conexion.pildoras.es;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;

@WebServlet(name = "Servlet", value = "/Servlet")
public class Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String jdbcUrl = "jdbc:mysql://localhost:3306/bbddrunnersjunio2023?useSSL=false";
        String usuario = "root";
        String password = "Unicamente1";

        String driver = "com.mysql.jdbc.Driver";

        try {

            PrintWriter out=response.getWriter(); // codigo explido en video de Servlet

            out.print("Nombre de la BBDD: " + jdbcUrl);

            Class.forName(driver);	// cargamos driver jdbc

            Connection myConnection = (Connection) DriverManager.getConnection(jdbcUrl, usuario, password);

            out.print("\n\n\nConectado!!!!");

            myConnection.close();



        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
