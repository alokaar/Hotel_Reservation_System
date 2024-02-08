package com.station;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;




public class PartyDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static boolean validate(String name) {
		
		try {
			con = DBConnector.getConnection();
			stmt = con.createStatement();
			String sql = "select * from reserve where name='"+name+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<Party> getEvent(String Name) {
		
		ArrayList<Party> cus = new ArrayList<>();
		
		try {
			
			con = DBConnector.getConnection();
			stmt = con.createStatement();
			String sql = "select * from reserve";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int id = rs.getInt(1);
				String name=rs.getString (2);
				String type=rs.getString(3);
				String contactNumber =rs.getString(4); 
				String noofpeople=rs.getString(5);
				String email=rs.getString(6);


	
				
				Party c = new Party(id,name,type,contactNumber,noofpeople,email);
				cus.add(c);
			}
			
		} catch (Exception e) {
			
		}
		
		return cus;	
	}
			 

	
    public static boolean insertstation(String name,String type,String contactNumber,String noofpeople,String email) {
    	
    	boolean isSuccess = false;
    	
    	try {
    		con = DBConnector.getConnection();
    		stmt = con.createStatement();
    	    String sql = "insert into reserve values(0,'"+name+"','"+type+"','"+contactNumber+"','"+noofpeople+"','"+email+"')";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    	return isSuccess;
    }
    
	  public static boolean updatestation(String id, String name,String type,String contactNumber,String noofpeople,String email) {
	    	
	    	try {
	    		
	    		con = DBConnector.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "update reserve set Name='"+name+"',Type='"+type+"',ContactNumber='"+contactNumber+"',noofpeople='"+noofpeople+"',Email='"+email+"'" + "where ID='"+id+"' ";
	    		int rs = stmt.executeUpdate(sql);
	    		
	    		if(rs > 0) {
	    			isSuccess = true;
	    		}
	    		else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}
	    	
	    	return isSuccess;
	    }
	 
	  public static List<Party> getEventDetails(String Id) {
			
			int convertedID = Integer.parseInt(Id);
			
			ArrayList<Party> cus = new ArrayList<>();
			
			try {
				
				con = DBConnector.getConnection();
				stmt = con.createStatement();
				String sql = "select * from reserve where id='"+convertedID+"'";
				rs = stmt.executeQuery(sql);
				
	    		while(rs.next()) {
	    			int id = rs.getInt(1);
	    			String name=rs.getString(2); 
					String type=rs.getString(3); 
					String contactNumber=rs.getString(4); 
					String noofpeople=rs.getString(5); 
					String email=rs.getString(6); 

	

	    			
	    			Party c = new Party(id,name,type,contactNumber,noofpeople,email);
	    			cus.add(c);
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}	
	    	return cus;	
	    }
	  public static List<Party> getEventDetailsall() {
			
		
			
			ArrayList<Party> cus = new ArrayList<>();
			
			try {
				
				con = DBConnector.getConnection();
				stmt = con.createStatement();
				String sql = "select * from reserve ";
				rs = stmt.executeQuery(sql);
				
	    		while(rs.next()) {
	    			int id = rs.getInt(1);
	    			String name=rs.getString(2); 
					String type=rs.getString(3); 
					String contactNumber=rs.getString(4); 
					String noofpeople=rs.getString(5); 
					String email=rs.getString(6); 

	

	    			
	    			Party c = new Party(id,name,type,contactNumber,noofpeople,email);
	    			cus.add(c);
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}	
	    	return cus;	
	    }
	    
	    public static boolean deleteEvent(String id) {
	    	
	    	int convId = Integer.parseInt(id);
	    	
	    	try {
	    		
	    		con = DBConnector.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "delete from reserve where id='"+convId+"'";
	    		int r = stmt.executeUpdate(sql);
	    		
	    		if (r > 0) {
	    			isSuccess = true;
	    		}
	    		else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch (Exception e) {
	    		e.printStackTrace();
	    	}
	    	
	    	return isSuccess;
	    }
}
