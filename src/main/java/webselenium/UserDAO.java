package webselenium;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {
	
	public int insert(User user) throws ClassNotFoundException, SQLException {
		Connection con=dBUtil.dbConn();
		String sql="insert into  userdetails (uname, uemail, upassword, uconfirmpassword) values(?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,user.getName());
		ps.setString(2, user.getEmail());
		ps.setString(3, user.getPassword());
		ps.setString(4, user.getComfirmpassword());
		return ps.executeUpdate();
		
		
		}
	public boolean checkEmp(String email, String pwd) throws SQLException, ClassNotFoundException
	{

		Connection con=dBUtil.dbConn();
		if(con==null)
		{
			System.out.println("Connection failed");
		}
		else
		{
			System.out.println("Connection successful");
		}
		String sql="select *from userdetails where uemail=? and upassword=?";
		
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, email);
		ps.setString(2, pwd);
		
		ResultSet rs=ps.executeQuery();
		
	    if(rs.next())
	    {
	    	return true;
	    }
	    else
	    {
	    	return false;
	    }
		
	}


	

}
