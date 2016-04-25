
import javax.swing.JFrame;
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
import java.util.ArrayList;


public class TestPointsUniform_MortonGJ {
  
  private static final int FRAME_WIDTH = 460;
  private static final int FRAME_HEIGHT = 170;
  private static Connection conn1 = null;
  private static Statement st1 = null;
  private static ResultSet rs1 = null;
  private static Statement st2 = null;
  private static ResultSet rs2 = null;
  private static int iDim = 0;
  private static boolean Verbose = false;
  private static int iBitdepth = 0;
  private static String txtSor_table="point_uniform_";
  
  private static Double DtimeStart;
  private static ArrayList<Double> DtimeRuns = new ArrayList<Double>();
  
  public static void main(String[] args) {
    String dbURL1 = "jdbc:postgresql:postgres?user=postgres&password=sdb";
    Connection conn1 = null;
    Statement st1 = null;
    ResultSet rs1 = null;
    boolean Verbose = false;
    int iDim=16;
    
    try {
      
      conn1 = DriverManager.getConnection(dbURL1);
      if (conn1 == null) {
        System.out.println("NOT Connected to database.");
        System.exit(0);
      }
      st1 = conn1.createStatement();
      String sStmt="SELECT ";
      for (int x=0; x<iDim; x++)  {
        sStmt+= "dim"+x;
        if(x<iDim-1) {
          sStmt+= ", ";
        }
      }
      sStmt+=" FROM "+txtSor_table+iDim+"; ";
      if(Verbose)  {
        System.out.println("sStmt= "+sStmt);
      }
      
      rs1 = st1.executeQuery(sStmt);    
      String dimension[] = new String[iDim];
      
      while (rs1.next()) { 
        DtimeStart = ((Long)System.nanoTime()).doubleValue()/1000.0;
        for(int n=0; n<iDim; n++) {
          dimension[n]=rs1.getString(n+1);
        }
        String sStmt2 = "SELECT * FROM uniform_100_"+iDim +" WHERE";
        for(int n=0; n<iDim; n++) {
          sStmt2+=" dim"+n+"="+dimension[n];
          if (n<iDim-1) {
            sStmt2+=" AND";
          }
        }
        
        sStmt2+=";";
        
        if(Verbose) {
            System.out.println(sStmt2+"\n");
          }
        Statement st2 = null;
        st2 = conn1.createStatement();
        ResultSet rs2 = null;
        rs2 = st2.executeQuery(sStmt2);
        while(rs2.next()) { System.out.println("hello"); }
        
        DtimeRuns.add(((Long)(System.nanoTime())).doubleValue()/1000.0-DtimeStart);
        sStmt="INSERT INTO results_point_uniform(dim, vkey, mu_stime, mu_etime) VALUES(";
        sStmt+= iDim+", 0, "+DtimeStart+", "+((Long)(System.nanoTime())).doubleValue()/1000.0+");";
        //System.out.println(sStmt);
        st2.executeUpdate(sStmt);
        
      }// end of while loop
      
    } catch (SQLException ex) {
      ex.printStackTrace();
      System.out.println(ex.getMessage());
    }  
    Double DtimeTotal=0.0;
    for (Double D1 : DtimeRuns) {
      System.out.printf("Time = %10.6f\n",D1);
      DtimeTotal += D1;
    }
    System.out.println("Total Milliseconds= "+DtimeTotal+" Average= "
                         +(DtimeTotal/(DtimeRuns.size())));
  } // end of main
  
  
}// end of class