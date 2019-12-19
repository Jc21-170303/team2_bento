package jp.ac.jc21.jk3a34;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserCheckServlet
 */
@WebServlet("/UserCheck")
public class UserCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserCheckServlet() {
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
		//JSPのデータを取得しそのまま表示 map<入力した値,name>
		
			// FORMの入力を受け取る
			try {
				
			PrintWriter out = response.getWriter();
			Map<String, String[]> map = request.getParameterMap();
			Set<String> keySet = map.keySet();
			ArrayList<String[]>list= new ArrayList<String[]>();
			
			
			for(String key : keySet) {
				int value = Integer.parseInt(map.get(key)[0]);
				request.setCharacterEncoding("UTF-8");
				Class.forName(driverName);
				Connection connection=DriverManager.getConnection(url,id,pass);
				PreparedStatement st = 
						connection.prepareStatement(
							"select bento_name,price from bento where bento_name = 'value'"//
							);
				ResultSet rs = st.executeQuery();
				//list2[r]=rs.getString("bento_name");
				
				if(value != 0) {//0以外の入力があったらlistに追加
					//out.print(key + ":" + value + namae);
					
				while(rs.next()){	        
			        String[] s = new String[3];		
			        int price=rs.getInt("price");
			        price=price*value;
					s[0]=rs.getString("bento_name");
					s[1]=String.valueOf(value);
					s[2]=String.valueOf(price);
					list.add(s);	       
				
				 	}
				}
			}
			// JSPで使う値を保存する
			request.setAttribute("list",list);				
		RequestDispatcher rd = request.getRequestDispatcher("/UserCheck.jsp");
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
