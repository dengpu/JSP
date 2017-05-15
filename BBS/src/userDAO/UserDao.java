package userDAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	 public UserDao(){
		try {
			String dbURL = "jdbc:mysql://localhost:3306/bbs";
			String dbID = "root";
			String dbPassword = "1234";
			
			
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL,dbID,dbPassword);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	 }
	 
	 public int login(String userID, String userPassword){
		 String SQL = "SELECT userPassword FROM user WHERE userID = ?";
		 
		 
		 try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				if(rs.getString(1).equals(userPassword)){
					return 1; //Login成功
				}
				else{
					return 0; //Passwordの間違い
				}
				
			}
			return -1; //IDがなし
			
			 
		} catch (Exception e) {
			e.printStackTrace();
		}
		 return -2; //データベース　エラー
		 
	 }
	
}
