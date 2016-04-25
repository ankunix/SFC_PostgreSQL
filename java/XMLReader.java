import java.io.File;
import java.io.IOException;
import java.io.StringReader;
import java.util.*;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathFactory;

import org.w3c.dom.Document;
import org.xml.sax.EntityResolver;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import org.xml.sax.SAXParseException;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.DatabaseMetaData;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class XMLReader {
  public static void main(String[] args) throws Exception {
    Connection conn1 = null;
    Statement st = null;
    ResultSet rs = null;
    try {
      DocumentBuilderFactory docBuilderFactory = DocumentBuilderFactory.newInstance();
      DocumentBuilder docBuilder = docBuilderFactory.newDocumentBuilder();
      Document doc = docBuilder.parse (new File("mortongj_uniform_2_stats.xml"));
      
      // normalize text representation
      doc.getDocumentElement().normalize();
      System.out.println ("Root element of the doc is " + doc.getDocumentElement().getNodeName());
      
      NodeList listOfRows = doc.getElementsByTagName("row");
      int totalRows = listOfRows.getLength();
      System.out.println("Total no of Rows : " + totalRows);
      String[] ColumnNames = new String[totalRows];
      String[] ColumnData =  new String[totalRows];
      
      for(int i=0; i<totalRows ; i++) {
        Node firstBookNode = listOfRows.item(i);
        
        if(firstBookNode.getNodeType() == Node.ELEMENT_NODE) {
          Element firstElement = (Element)firstBookNode; 
          ColumnNames[i]= firstElement.getAttribute("c1").toString();
          ColumnData[i]=  firstElement.getAttribute("c2").toString();
          System.out.printf("C1: %-29s  C2:%-12s\n",ColumnNames[i], ColumnData[i]);
        }
      }//end of for loop 
      String dbURL1 = "jdbc:postgresql:demo?user=postgres&password=sdb";
      conn1 = DriverManager.getConnection(dbURL1);
      if (conn1 != null) 
      {
        System.out.println("Connected to database...");
      }
      st = conn1.createStatement();
      String sStmt="";
      for(int i=0; i<totalRows; i++) {
        sStmt = "INSERT INTO uniform_stats (tblName,C1,C2)"
          + "VALUES ('uniform_2', '"+ColumnNames[i]+"', '"+ColumnData[i]+"' );";
        System.out.println(sStmt);
        //st.executeUpdate(sql);
      }
      
    } catch (SAXParseException err) {
      System.out.println ("** Parsing error" + ", line " + err.getLineNumber () + ", uri " + err.getSystemId ());
      System.out.println(" " + err.getMessage ());
    } catch (SAXException e) {
      Exception x = e.getException ();
      ((x == null) ? e : x).printStackTrace ();
    } catch (Throwable t) {
      t.printStackTrace ();
    } 
  }
}