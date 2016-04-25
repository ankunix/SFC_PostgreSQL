
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

public class MC2 {

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
  private static String txtSor_table="";
  private static String txtDes_table="";

  public static void main(String[] args) {
    if(args.length==0) {
      JFrame MC_frame = new MCGUI();
      MC_frame.setSize(FRAME_WIDTH, FRAME_HEIGHT);
      MC_frame.setResizable(true);

    }
    else {
// build the SFC index according to the command line parameters
      if(args.length !=5) {
        System.out.println("Usage: <source table> <destination table> <dimension> <bitdepth> <verbose>"
                             + "\n Example:"
                             +"\n\t java MC2 u_10000_2 mortongj_u_10000_2 2 8 false");
      } else {
        txtSor_table=args[0];
        txtDes_table=args[1];
        iDim = Integer.parseInt(args[2]);
        iBitdepth = Integer.parseInt(args[3]);
        Verbose = Boolean.parseBoolean(args[4]);
      }
      System.out.println("  args[0] = "+args[0]+"  args[1] = "+args[1]+"  args[2] = "+args[2]+"  args[3] = "+args[3]+"  args[4] = "+args[4]);

      String dbURL1 = "jdbc:postgresql://localhost/sdb?user=sdb&password=sdb";
      try {
        long timeStart = System.currentTimeMillis();
        conn1 = DriverManager.getConnection(dbURL1);
        if (conn1 != null) {
          System.out.println("Connected to database.");
        }
        st1 = conn1.createStatement();
        String sStmt="SELECT id,";
        for (int x=0; x<iDim; x++)  {
          sStmt+= "dim"+x;
          if(x<iDim-1) {
            sStmt+=",";
          }
        }
        sStmt+=" FROM "+txtSor_table+";";
        if(Verbose)  {
          System.out.println("sStmt= "+sStmt);
        }

        rs1 = st1.executeQuery(sStmt);
        st2 = conn1.createStatement();

        int id=0;
        Long Lvkey=0L;
        String vkey="";
        Double dimension[] = new Double[iDim];
        String binvalue[] = new String[iDim];

        String sZeroPad="";
        String strOutput="";
        while (rs1.next()) {
          id=Integer.parseInt(rs1.getString(1));

          for(int n=0; n<iDim; n++) {
            dimension[n]=(Double.parseDouble(rs1.getString(n+2)));
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
          Lvkey = toLvkey(vkey);

          String sStmt2 = "INSERT INTO "+txtDes_table
            +"(vkey,id) SELECT '"+Lvkey+"','"
            +id+"' WHERE NOT EXISTS (SELECT 1 FROM "+txtDes_table
            +" WHERE vkey='"+Lvkey+"')";
          if(Verbose) {
            System.out.println("\n"+sStmt2+"\n");
          }
          st2.executeUpdate(sStmt2);
        }

        long timeEnd = System.currentTimeMillis();
        System.out.println("\n\nRUN TIME IN MilliSeconds: "+(timeEnd-timeStart));

      } catch (SQLException ex) {
        ex.printStackTrace();
        System.out.println(ex.getMessage());
      }
    }
  }// end of main()

 private static Long toLvkey(String skey) {
    Long lReturn=0L;
    if (skey.substring(0,1).equals("1")) {
      lReturn= ( Long.parseLong(skey.substring(1), 2));
    }
    else {
      lReturn = Long.parseLong(skey, 2);
    }
    if(Verbose) {
        System.out.println("from 'toLvkey(String)' skey = "+skey+ "  returning: "+lReturn );
    }
    return(lReturn);
  }

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
}
