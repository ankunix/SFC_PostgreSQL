import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.DatabaseMetaData;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.lang.StringBuilder;
import java.lang.Math;
import java.util.Properties;
import java.io.*;

public class genPointQueriesBaseline {
  public static void main(String[] args) {
    
    String dbURL1 = "jdbc:postgresql:postgres?user=postgres&password=sdb";
    Connection conn1 = null;
    Statement st1 = null;
    ResultSet rs1 = null;
    Statement st2 = null;
    ResultSet rs2 = null;
    boolean Verbose = false;
    int iDim=8;
    
    try 
    {
      PrintWriter pw = new PrintWriter (new File("point_u_1000_"+iDim+"_baseline.sql"));
      long timeStart = System.currentTimeMillis();
      conn1 = DriverManager.getConnection(dbURL1);
      if (conn1 != null) 
      {
        System.out.println("Connected to database.");
      }
      st1 = conn1.createStatement();
      String sStmt="SELECT id,";
      for (int x=0; x<iDim; x++) 
      {
        sStmt+= "dim"+x;
        if(x<iDim-1) 
        {
          sStmt+=",";
        }
      }
      sStmt+=" FROM point_u_1000_"+iDim+";";
      if(Verbose) 
      {
        System.out.println("sStmt= "+sStmt);
      }
      
      rs1 = st1.executeQuery(sStmt);
      st2 = conn1.createStatement();
      
      int id=0;        
      Long Lvkey=0L;
      String vkey="";
      int dimension[] = new int[iDim];
      
      String sZeroPad="";
      String strOutput="";
      while (rs1.next()) { 
        id=Integer.parseInt(rs1.getString(1));
        String sStmt2="";
        for(int n=0; n<iDim; n++) {
          dimension[n]=(Integer.parseInt(rs1.getString(n+2)));
          if(Verbose) {
            System.out.println(" dimension["+n+"]= "+dimension[n]+"\n");
          }
          
        }
        sStmt2="SELECT ";
        for(int n=0; n<iDim; n++) {
          
          sStmt2+="dim"+n;
          if (n<iDim-1) {
            sStmt2+=", ";
          }
        }
        sStmt2+=" FROM uniform_"+iDim+" WHERE";
        for(int n=0; n<iDim; n++) {
          
          sStmt2+=" dim"+n+"="+dimension[n];
          if (n<iDim-1) {
            sStmt2+=" AND";
          }
        }
        sStmt2+=";";
        pw.println(sStmt2);
        if(Verbose) 
        {
          System.out.println("\n"+sStmt2+"\n");
        }
        //st2.executeUpdate(sStmt2);
      }
      
      long timeEnd = System.currentTimeMillis();
      System.out.println(((Long) (timeEnd-timeStart)).toString());
      pw.close();
    } catch (SQLException ex) {
      ex.printStackTrace();
      System.out.println(ex.getMessage());
    } catch (IOException iex) {
      iex.printStackTrace();
      System.out.println(iex.getMessage());
    }
  } 
}