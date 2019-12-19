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
 * Servlet implementation class EmployeeDetaServlet
 */
@WebServlet("/EmployeeDeta")
public class EmployeeDetaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeDetaServlet() {
        super();
    }
    
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    		final String driverName = "oracle.jdbc.driver.OracleDriver";
    		final String url = "jdbc:oracle:thin:@192.168.54.192:1521/orcl";
    		final String id = "team2";
    		final String pass = "Oracle_11g";
    		
    		
    		try {
    			request.setCharacterEncoding("UTF-8");
    			String syain = (String)request.getParameter("deta");
    			
        		Class.forName(driverName);
        		Connection connection = DriverManager.getConnection(url,id,pass);
			PreparedStatement st =
    		connection.prepareStatement("select to_char(order_date,'MM/DD')as date,sum(price*qty) as kingaku from (emp_order inner join emp on emp_order.emp_id=emp.emp_id) inner join bento on emp_order.bento_id = bento.bento_id where emp_name = syain group by to_char(order_date,'MM/DD')");
    		ResultSet rs1 = st.executeQuery();
    		ArrayList<String[]> list =new ArrayList<String[]>();
			while(rs1.next() != false) {
    			String[] s =new String[2];
    			s[0] = rs1.getString("hiduke");
    			s[1] = rs1.getString("kingaku");
    			list.add(s);
    		}
    		request.setAttribute("list",list);
    		RequestDispatcher rd = request.getRequestDispatcher("./EmployeeDeta.jsp");
    		rd.forward(request, response);
    		}catch (ClassNotFoundException e) {
    		}catch (SQLException e) {}
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	}
