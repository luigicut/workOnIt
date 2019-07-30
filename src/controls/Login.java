package controls;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import connection.DriverManagerConnectionPool;


@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
   
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String redirectedPage;
		
		try {
			checkLogin(username, password);
			redirectedPage= "/Success.jsp";
			
		} catch(Exception e) {
			System.out.println("bellaaaaa");
			redirectedPage= "/Fail.jsp";
		}
		
		response.sendRedirect(request.getContextPath() + redirectedPage);
	}

	private static void checkLogin(String username, String password) throws Exception{
		Connection connection = null;
		try{
			connection = DriverManagerConnectionPool.getConnection();
			System.out.println("connesso\n");
		} catch(Exception e){
			System.out.println("Connessione Fallita...\n"+e);
		}
		
			PreparedStatement ps = null;
			String query="SELECT * FROM membro WHERE username=? AND psw=?";
			ps = connection.prepareStatement(query);
			ps.setString(1, username);
			ps.setString(2, password);
			ResultSet re = ps.executeQuery();
			
			if(re.next()){
				System.out.println("trovato");
			} else {
				System.out.println("nessuna corrispondenza");
				throw new Exception("Invalid login and password");
			}
	}
}
