import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


import java.sql.ResultSet;

import javax.swing.JOptionPane;


public class select {

	public static void main(String[] args) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/library?user=root&password=myproject");
			String query="select * from books";
			PreparedStatement st=cn.prepareStatement(query);
			ResultSet rs=st.executeQuery();
			while(rs.next())
			{
				System.out.println(rs.getString(1)+"\t"+rs.getString(2)+"\t"+rs.getString(3)+"\t"+rs.getString(4)+"\t"+rs.getString(5));
				
			}
			
			cn.close();
			
		} catch (Exception e) {
			JOptionPane.showMessageDialog(null, "Error"+e.getMessage());
		}
	}

}
