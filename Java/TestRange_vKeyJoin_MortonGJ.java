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
import java.util.Date;

public class TestRange_vKeyJoin_MortonGJ {
  private static Connection conn1 = null;
  private static Statement st1 = null;
  private static ResultSet rs1 = null;
  private static Statement st2 = null;
  private static ResultSet rs2 = null;
  private static int iDim = 0;
  private static boolean Verbose = false;
  private static int iBitdepth = 0;
  private static String txtSor_table="range_u_";
  private static String dbURL1;
  
  private static Double DtimeStart;
  private static Long LtimeStart;
  private static ArrayList<Double> DtimeRuns = new ArrayList<Double>();
  private static ArrayList<Long> LtimeRuns = new ArrayList<Long>();
  
  public static void main(String[] args) {
    Date d1 = new Date();
    Date d2 = new Date();
    System.out.println(d1.toString());
    
    try {
      dbURL1 = "jdbc:postgresql:postgres?user=postgres&password=sdb";
      String sStmt="";
      Verbose = false;
      conn1 = DriverManager.getConnection(dbURL1);
      if (conn1 == null) {
        System.out.println("NOT Connected to database.");
        System.exit(0);
      }
      st2 = conn1.createStatement();
      st1 = conn1.createStatement();
      
      //change iDim, iBitdepth, mbrid, to run for each sequence
      int iMaxDim=16;
      int iDim=2;
      int iBitdepth=32;
      int mbrID=4;
      
      for(int M=1; M<=iMaxDim/4; M++) {
        for(int MBR=0; MBR<mbrID; MBR++) {
          d1 = new Date();
          System.out.println(d1.toString());
          
          sStmt="SELECT ";
          for (int x=0; x<iDim; x++)  {
            sStmt+= "dim"+x;
            if(x<iDim-1) {
              sStmt+= ", ";
            }
          }
          sStmt+=" FROM "+txtSor_table+iDim+" WHERE ID="+MBR+"; ";
          if(Verbose)  {
            System.out.println(sStmt);
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
            BigInteger BIvkey = new BigInteger(vkey,2);
            String sStmt2 = "SELECT U2.* FROM public.u_10000_"+iDim 
              +" U2 JOIN public.mortongj_u_10000_"+iDim+" MU ON (U2.id=MU.id AND MU.vkey="
              + BIvkey+");";
            Statement st2 = null;
            st2 = conn1.createStatement();
            ResultSet rs2 = null;
            rs2 = st2.executeQuery(sStmt2);
            while(rs2.next()) { ; }
            
            DtimeRuns.add(((Long)(System.nanoTime())).doubleValue()/1000.0-DtimeStart);
            if(Verbose) {
              System.out.println(sStmt2+"\n");
            }
            sStmt="INSERT INTO results_range_uniform (mbrid, dim, vkey, mu_stime, mu_etime) VALUES (";
            sStmt+= MBR+", "+iDim+", "+BIvkey+", "+DtimeStart+", "+((Long)(System.nanoTime())).doubleValue()/1000.0+");";
            if(Verbose) {
              System.out.println(sStmt);
            }
            st2.executeUpdate(sStmt);
            
          }// end of while loop
          Double DtimeTotal=0.0;
          for (Double D1 : DtimeRuns) {
            DtimeTotal += D1;
          }
          System.out.println("Total Milliseconds= "+DtimeTotal+" Average= "
                               +(DtimeTotal/(DtimeRuns.size()))+"  MBR="+MBR+" Dimension="+iDim);
          
        }
        iDim=iDim*2;
      }
    } catch (SQLException ex) {
      ex.printStackTrace();
      System.out.println(ex.getMessage());
    }  
    
//    
    d2 = new Date();
    System.out.println(d2.toString());
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




//    int x0=11;
//    int x1=26;
//    int x2=91;
//    int x3=16;
//    int x4=181;
//    int x5=45;
//    int x6=194;
//    int x7=126;
//    
//    int y0=13;
//    int y1=36;
//    int y2=94;
//    int y3=26;
//    int y4=191;
//    int y5=55;
//    int y6=204;
//    int y7=136;
//    
//      int minx0 =Math.min(x0, x1);
//      int maxx0 =Math.max(x0, x1);
//      
//      int minx1 =Math.min(x1, x2);
//      int maxx1 =Math.max(x1, x2);
//      
//      int minx2 =Math.min(x2, x3);
//      int maxx2 =Math.max(x2, x3);
//      
//      int minx3 =Math.min(x3, x4);
//      int maxx3 =Math.max(x3, x4);
//      
//      int minx4 =Math.min(x4, x5);
//      int maxx4 =Math.max(x4, x5);
//      
//      int minx5 =Math.min(x5, x6);
//      int maxx5 =Math.max(x5, x6);
//      
//      int minx6 =Math.min(x6, x7);
//      int maxx6 =Math.max(x6, x7);
//      
//      int minx7 =Math.min(x7, x0);
//      int maxx7 =Math.max(x7, x0);
//
////================================
//      
//      int miny0 =Math.min(y0, y1);
//      int maxy0 =Math.max(y0, y1);
//      int miny1 =Math.min(y1, y2);
//      int maxy1 =Math.max(y1, y2);
//      int miny2 =Math.min(y2, y3);
//      int maxy2 =Math.max(y2, y3);
//      int miny3 =Math.min(y3, y4);
//      int maxy3 =Math.max(y3, y4);
//      int miny4 =Math.min(y4, y5);
//      int maxy4 =Math.max(y4, y5);
//      int miny5 =Math.min(y5, y6);
//      int maxy5 =Math.max(y5, y6);
//      int miny6 =Math.min(y6, y7);
//      int maxy6 =Math.max(y6, y7);
//      int miny7 =Math.min(y7, y0);
//      int maxy7 =Math.max(y7, y0);   
//      sStmt="";
//
//      for(int a=minx0; a<maxx0; a++) {
//        for(int b=minx1; b<maxx1; b++) { 
//          for(int c=minx2; a<maxx2; c++) {
//            for(int d=minx3; b<=maxx3; d++) {
//              for(int e=miny4; e<maxy4; e++) {
//                for(int f=miny5; f<maxy5; f++) {
//                  for(int g=miny6; g<maxy6; g++) {
//                    sStmt="BEGIN;\n";
//                    for(int h=miny7; h<maxy7; h++) {
//                       sStmt+="INSERT INTO "+txtSor_table+iDim
//                         +" (id, dim0, dim1, dim2, dim3, dim4, dim5, dim6, dim7) VALUES ("
//                         +mbrID+", "+a+", "+b+", "+c+", "+d+", "+e+", "+f+", "+g+", "+h+");\n";
//                    }
//                    sStmt+="COMMIT;\n";
//                    st2.executeUpdate(sStmt);
//                    sStmt="";
//                  }
//                }
//              }
//            }
//          }
//        }
//      }
//      
//      
//      
//      
//      Date d2 = new Date();
//      System.out.println(d2.toString());
//      
//      System.exit(0);

