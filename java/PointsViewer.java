import java.awt.Color;
import java.awt.Dimension;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.util.Random;

import javax.swing.JFrame;
import javax.swing.JPanel;

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
import java.util.Properties;

public class PointsViewer extends JPanel {
  
  public void paintComponent(Graphics g) {
    super.paintComponent(g);
    
    Graphics2D g2d = (Graphics2D) g;
    
    g2d.setColor(Color.black);
    
    String dbURL1 = "jdbc:postgresql:postgres?user=postgres&password=sdb";
    Connection conn1 = null;
    Statement st1 = null;
    ResultSet rs1 = null;
    Statement st2 = null;
    ResultSet rs2 = null;
    int iNum = 2;
    
    try {
      conn1 = DriverManager.getConnection(dbURL1);
      if (conn1 != null) {
        System.out.println("Connected to database.");
      }
      st1 = conn1.createStatement();
      String sStmt="SELECT id,dim0,dim1 from cluster_1000_2;";
      
      rs1 = st1.executeQuery(sStmt);     
      
      Dimension size = getSize();
      int w = size.width ;
      int h = size.height;
      while (rs1.next()){ 
        
        double dx =Math.abs(Double.parseDouble(rs1.getString(2)));
        double dy =Math.abs(Double.parseDouble(rs1.getString(3)));
        int x = (int)dx;
        int y = (int)dy;
        x=x%w;
        y=y%h;
        g2d.drawLine(x, y, x, y);  
        //System.out.println("x= "+x+" y = "+y);
      }
    }
    catch(SQLException ex) 
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
      catch (SQLException ex2) 
      {
        ex2.printStackTrace();
      }
    } 
    
    
  }
  
  public static void main(String[] args) {
    Points points = new Points();
    JFrame frame = new JFrame("Points");
    frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    frame.add(points);
    frame.setSize(850, 800);
    frame.setLocationRelativeTo(null);
    frame.setTitle("CLUSTERED 2D DATA");
    frame.setVisible(true);
  }
}