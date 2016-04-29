
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
import java.math.BigInteger;
import java.util.Properties;
import java.util.ArrayList;


public class TestPoint_vKeyJoin_MortonGJ {
  private static Connection conn1 = null;
  private static Statement st1 = null;
  private static ResultSet rs1 = null;
  private static Statement st2 = null;
  private static ResultSet rs2 = null;
  private static int iDim = 0;
  private static boolean Verbose = false;
  private static int iBitdepth = 0;
  private static int iNumValues= 0;
  private static String txtSor_table="point_u";
  
  private static Double DtimeStart;
  private static Long LtimeStart;
  private static ArrayList<Double> DtimeRuns = new ArrayList<Double>();
  private static ArrayList<Long> LtimeRuns = new ArrayList<Long>();
  
  public static void main(String[] args) {
    String dbURL1 = "jdbc:postgresql:postgres?user=postgres&password=sdb";
    
    Verbose = false;
    //change iDim and iBitdepth to run for each sequence as: iDim/iBitdepth
    //e.g., 2/32 4/16 8/8 16/4
    iDim=2;
    iBitdepth=4;
    iNumValues=10000;
    int iDim=2;
    int iMaxDim=16;
    try {
      conn1 = DriverManager.getConnection(dbURL1);
      if (conn1 == null) {
        System.out.println("NOT Connected to database.");
        System.exit(0);
      }
      for(int M=1; M<=iMaxDim/4; M++) {
        
        st1 = conn1.createStatement();
        String sStmt="SELECT ";
        for (int x=0; x<iDim; x++)  {
          sStmt+= "dim"+x;
          if(x<iDim-1) {
            sStmt+= ", ";
          }
        }
        sStmt+=" FROM "+txtSor_table+"_"+iDim+"; ";
        if(Verbose)  {
          System.out.println("sStmt= "+sStmt);
        }
        
        rs1 = st1.executeQuery(sStmt);    
        
        String vkey="";
        Double dimension[] = new Double[iDim];
        String binvalue[] = new String[iDim];
        String sZeroPad="";
        String strOutput="";
        
        while (rs1.next()) { 
          DtimeStart = ((Long)System.nanoTime()).doubleValue()/1000.0;
          
          for(int n=0; n<iDim; n++) {
            dimension[n]=(Double.parseDouble(rs1.getString(n+1)));
            int k = (int)Math.round(dimension[n]);
            binvalue[n]=toBinary(k,iBitdepth);
            if(Verbose) {
              System.out.println(" dimension["+n+"]= "+k+"  binValue["+n+"]= "+binvalue[n]);
            }
            
          }
          vkey="";
          for(int b=0; b<iBitdepth; b++) {
            for(int n=0; n<iDim; n++) {
              vkey += binvalue[n].substring(b, b+1);
            }
          }
          if(Verbose) {
            System.out.println(vkey);
          }
          BigInteger BIvkey = new BigInteger(vkey,2);
          String sStmt2 = "SELECT U2.* FROM public.u_"+iNumValues+"_"+iDim 
            +" U2 JOIN public.mortongj_u_"+iNumValues+"_"+iDim+" MU ON (U2.id=MU.id AND MU.vkey="
            + BIvkey+");";
          Statement st2 = null;
          st2 = conn1.createStatement();
          ResultSet rs2 = null;
          rs2 = st2.executeQuery(sStmt2);
          while(rs2.next()) { ; }
          
          DtimeRuns.add(((Long)(System.nanoTime())).doubleValue()/1000.0-DtimeStart);
          sStmt="INSERT INTO results_p_u_"+iNumValues+" (dim, vkey, mu_stime, mu_etime) VALUES(";
          sStmt+= iDim+", "+BIvkey+", "+DtimeStart+", "+((Long)(System.nanoTime())).doubleValue()/1000.0+");";
          st2.executeUpdate(sStmt);
          
        }// end of while loop
        Double DtimeTotal=0.0;
        for (Double D1 : DtimeRuns) {
          DtimeTotal += D1;
        }
        System.out.println("Total Milliseconds= "+DtimeTotal+" Average= "+(DtimeTotal/(DtimeRuns.size())));
        iDim = iDim*2;
      }
    } catch (SQLException ex) {
      ex.printStackTrace();
      System.out.println(ex.getMessage());
    }  
  } // end of main
  
  private static String toBinary(int n, int iDepth) {
    String binary = "";
    if (n > 0)  {
      binary = "";
      while (n > 0) {
        int rem = n % 2;
        binary = rem + binary;
        n = n / 2;
      }
    }
    if(binary.length() <= iDepth) {
      String zeroPad="";
      for(int q=0; q<(iDepth-binary.length()); q++) {
        zeroPad+="0";
      }
      binary= zeroPad+binary;
    }
    return binary;
  }    
  
}// end of class