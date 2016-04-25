import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.DatabaseMetaData;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

import java.util.Properties;

/**
 * This program demonstrates how to make database connection to PostgreSQL
 * server using JDBC.
 * @author www.codejava.net
 *
 */
public class JdbcPostgresqlConnection 
{
  
  public static void main(String[] args) 
  {
    Connection conn1 = null;
    Statement st = null;
    ResultSet rs = null;
    
    try 
    {
      // Connect 
      String dbURL1 = "jdbc:postgresql:demo?user=postgres&password=sdb";
      conn1 = DriverManager.getConnection(dbURL1);
      if (conn1 != null) 
      {
        System.out.println("Connected to database #1");
      }
      st = conn1.createStatement();
      rs = st.executeQuery("SELECT column_name FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='towns';");
      int colCnt=0;
      
      while (rs.next())
      { 
        colCnt++;
        System.out.print((rs.getString(1).toString()).toUpperCase()+"\t");
      }
      System.out.println();
      
      rs = st.executeQuery("SELECT * FROM towns ORDER BY towns.town_id;");
      
      while (rs.next())
      { 
        System.out.printf("%-6s%-4s%-20s",rs.getString(1),rs.getString(2),rs.getString(3));
        for(int k=4; k<=colCnt-1; k++)
        {
          System.out.print((rs.getString(k).toString())+"\t");
        }
        System.out.println();
      }
      
    } 
    catch (SQLException ex) 
    {
      ex.printStackTrace();
      System.out.println(ex.getMessage());
      
    } 
    finally 
    {
      try 
      {
        if (conn1 != null && !conn1.isClosed()) 
        {
          conn1.close();
        }
      } 
      catch (SQLException ex) 
      {
        ex.printStackTrace();
      }
    }
    
    int byte1 = 0b101010101010;
    System.out.println(byte1);
    
  } //end of main
}