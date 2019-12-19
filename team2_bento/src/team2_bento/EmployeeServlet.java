package jp.ac.jc21.jk3a34;

import java.io.IOException;
import java.util.ArrayList;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EmployeeServlet
 */
@WebServlet("/Employee")
public class EmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeServlet() {
        super();
        // TODO Auto-generated constructor stub
        
        
    }
    
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		final String driverName = "oracle.jdbc.driver.OracleDriver";
		final String url = "jdbc:oracle:thin:@192.168.54.192:1521/orcl";
		final String id = "team2";   //
		final String pass = "Oracle_11g";  //
		
		try {
			
			Class.forName(driverName);
			Connection connection = DriverManager.getConnection(url,id,pass);			
			PreparedStatement st =
					connection.prepareStatement(
							" select emp_order.emp_id,emp.emp_name,sum(price*qty) as goukei from (emp_order inner join emp on emp_order.emp_id=emp.emp_id) inner join bento on emp_order.bento_id = bento.bento_id  where extract(month from order_date)='11'group by emp_order.emp_id,emp.emp_name"					
		        			 );
			
					ResultSet rs = st.executeQuery();
			
			ArrayList<String[]> list = new ArrayList<String[]>();
			
			while(rs.next() != false) {
			String[] s = new String[3];
			s[0] = rs.getString("emp_id"); //emp_nameÅ@é–àıñº
			s[1] = rs.getString("emp_name"); //emp_id é–àıID
			s[2] = rs.getString("goukei"); //sumÅ@çáåvã‡äz
			
			list.add(s);
			}
			request.setAttribute("list", list);
        
	
			
		RequestDispatcher rd = request.getRequestDispatcher("/Employee.jsp");
		rd.forward(request, response);
		}catch(SQLException e) {}
		catch(ClassNotFoundException e) {}
	}
}
