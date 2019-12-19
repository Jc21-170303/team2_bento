package jp.ac.jc21.jk3a34;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserOrderServlet
 */
@WebServlet("/UserOrder")
public class UserOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserOrderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		final String driverName = "oracle.jdbc.driver.OracleDriver";
		final String url = "jdbc:oracle:thin:@192.168.54.192:1521/orcl";
		final String id = "team2";   //
		final String pass = "Oracle_11g";  //
		
		try {//DBから商品名、単価、写真を持ってくる
			Class.forName(driverName);
			Connection connection=DriverManager.getConnection(url,id,pass);
			PreparedStatement st = 
					connection.prepareStatement(
						"select bento_name,price,url from bento" //
						);
			ResultSet rs = st.executeQuery();
			ArrayList<String[]>list= new ArrayList<String[]>();
			while(rs.next() != false) {
				String[] s = new String[3];
				
				s[0]=rs.getString("bento_name");
				s[1]=rs.getString("price");
				s[2]=rs.getString("url");
				list.add(s);
				}
			request.setAttribute("list", list);
		RequestDispatcher rd = request.getRequestDispatcher("./UserOrder.jsp");
		rd.forward(request, response);
		}catch(ClassNotFoundException e) {
			System.out.println("ClassNotFoundException");
			e.printStackTrace(System.out);
		}catch(SQLException e) {
			System.out.println("SQLException");
			e.printStackTrace(System.out);
		}
	}
}
