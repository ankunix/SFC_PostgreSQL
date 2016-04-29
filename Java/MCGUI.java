import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.BorderLayout;
import java.awt.GridLayout;

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

public class MCGUI extends JFrame 
{
  private JPanel p1;
  private JLabel lblDim, lblBitdepth, lblSor_table, lblDes_table, lblVerbose, lblStatus, lblCount;
  private JTextField txtDim;
  private JTextField txtBitdepth;
  private JTextField txtSor_table;
  private JTextField txtDes_table;
  private JCheckBox chkVerbose;
  private boolean Verbose;
  
  private JButton btnExit, btnBuild;
  
  public MCGUI() 
  {
    p1 = new JPanel(new GridLayout(7,2,3,3));
    lblDim = new JLabel("Dimensions (2,4,8):",SwingConstants.RIGHT);
    lblBitdepth = new JLabel("Bits (8,16,32):",SwingConstants.RIGHT);
    lblSor_table = new JLabel("Source db table:",SwingConstants.RIGHT);
    lblDes_table = new JLabel("Destination db table:",SwingConstants.RIGHT);
    lblVerbose = new JLabel("Verbose output?",SwingConstants.RIGHT);
    lblStatus = new JLabel ("Milliseconds: ", SwingConstants.RIGHT);
    lblCount = new JLabel("0", SwingConstants.LEFT);
    
    txtDim = new JTextField(5);
    txtBitdepth = new JTextField(5);
    txtSor_table = new JTextField(25);
    txtDes_table = new JTextField(25);
    chkVerbose = new JCheckBox();
    
    btnBuild = new JButton("Build SFC Index");
    btnExit = new JButton("Exit");
    
    ActionListener ExitListen = new ExitListener();
    btnExit.addActionListener(ExitListen);
    ActionListener BuildListen = new BuildListener();
    btnBuild.addActionListener(BuildListen);
    
    p1.add(lblDim);
    p1.add(txtDim);
    p1.add(lblBitdepth);
    p1.add(txtBitdepth);
    p1.add(lblSor_table);
    p1.add(txtSor_table);
    p1.add(lblDes_table);
    p1.add(txtDes_table);
    p1.add(lblVerbose);
    p1.add(chkVerbose);
    p1.add(lblStatus);
    p1.add(lblCount);
    p1.add(btnBuild);
    p1.add(btnExit);
    
    add(p1);
    setTitle("Morton Code Space-Filling Curve Generator");
    setVisible(true);
    setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
  }
  
  public class BuildListener implements ActionListener
  { 
    public void actionPerformed(ActionEvent e)
    {  
      if (Integer.parseInt(txtDim.getText()) > 32) 
      {
        JOptionPane.showMessageDialog(null,"Maximum dimension is 32x32",
                                      "Dimsional Problem",JOptionPane.INFORMATION_MESSAGE); 
        txtDim.setText("");
        txtBitdepth.setText("");
        txtSor_table.setText("");
        txtDes_table.setText("");
        chkVerbose.setSelected(false);
        return;
      }
      String dbURL1 = "jdbc:postgresql:postgres?user=postgres&password=sdb";
      Connection conn1 = null;
      Statement st1 = null;
      ResultSet rs1 = null;
      Statement st2 = null;
      ResultSet rs2 = null;
      int iDim = Integer.parseInt(txtDim.getText());
      Verbose = chkVerbose.isSelected();
      int iBitdepth = Integer.parseInt(txtBitdepth.getText());
     
      try 
      {
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
        sStmt+=" FROM "+txtSor_table.getText()+";";
        if(Verbose) 
        {
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
          BigInteger BIvkey = new BigInteger(vkey, 2);
          
          String sStmt2 = "INSERT INTO "+txtDes_table.getText()
            +"(vkey,id) SELECT '"+BIvkey+"','"
            +id+"' WHERE NOT EXISTS (SELECT 1 FROM "+txtDes_table.getText()
            +" WHERE vkey='"+BIvkey+"')"; 
          if(Verbose) 
          {
            System.out.println("\n"+sStmt2+"\n");
          }
          st2.executeUpdate(sStmt2);
        }
        
        long timeEnd = System.currentTimeMillis();
        lblCount.setText(((Long) (timeEnd-timeStart)).toString());
               
      } catch (SQLException ex) {
        ex.printStackTrace();
        System.out.println(ex.getMessage());
      } 
    } // end of actionPerformed
    
    private  String toBinary(int n, int iDepth) {
      String binary = "";
      if (n > 0)  {
        binary = "";
        while (n > 0) {
          int rem = n % 2;
          binary = rem + binary;
          n = n / 2;
        }
      }
      if(binary.length() <= iDepth){
        String zeroPad="";
        for(int q=0; q<(iDepth-binary.length()); q++) {
          zeroPad+="0";
        }
        binary= zeroPad+binary;
      }
      return binary;
    }    
  } // end of class BuildListener 
  
  public class ExitListener implements ActionListener {
    public void actionPerformed(ActionEvent e) {
      System.exit(0); 
    }
  }
}
