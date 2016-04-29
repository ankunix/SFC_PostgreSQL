/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package spacefillingcurves;

import java.sql.*;
import java.util.*;
import java.io.*;
import java.lang.*;
import java.math.*;

/**
 *
 * @author Admin
 */
public class SpaceFillingCurves {

        public static void main(String[] args) {
            // create a scanner so we can read the command-line input
            Scanner scanner = new Scanner(System.in);

            //  prompt for the user's name
            System.out.print("Enter source table name: ");
            String sourceTable = scanner.next();

            // prompt for their age
            System.out.print("Enter destination table name: ");
            String destinationTable = scanner.next();
            
            // prompt for the dimensions
            System.out.print("Enter dimensions: ");
            int dimension = scanner.nextInt();
            
            System.out.print("Enter bit size: ");
            int bitSize = scanner.nextInt();
            
            Connection connection = null;
            Statement stmt = null;
        
            try {
                connection = DriverManager.getConnection("jdbc:postgresql://127.0.0.1:5432/postgres","postgres","password");
            } catch (SQLException e) {
                System.out.println("Connection Failed! Check output console");
                e.printStackTrace();
            }
            Long stime = System.nanoTime();
            
            int numInQuad = (int)(Math.pow(2,bitSize)*Math.pow(2,bitSize))/4;
            long[][] moore = new long[(int)(Math.pow(2,bitSize))][(int)(Math.pow(2,bitSize))];
            for (int i = 0; i < (int)(Math.pow(2,bitSize)); i++){
                for (int j = 0; j < (int)(Math.pow(2,bitSize)); j++){
                    List<Object> point = new ArrayList<Object>();
                    point.add(i*(int)(Math.pow(2,bitSize))+j);
                    point.add(Integer.toString(i));
                    point.add(Integer.toString(j));
                    moore[i][j] = Long.parseLong(Hilbert_VKey(point,2,bitSize).get(1).toString());
                }
            }
            
            long[][] quad0 = new long[(int)(Math.pow(2,bitSize))/2][(int)(Math.pow(2,bitSize))/2];
            long[][] quad1 = new long[(int)(Math.pow(2,bitSize))/2][(int)(Math.pow(2,bitSize))/2];
            long[][] quad2 = new long[(int)(Math.pow(2,bitSize))/2][(int)(Math.pow(2,bitSize))/2];
            long[][] quad3 = new long[(int)(Math.pow(2,bitSize))/2][(int)(Math.pow(2,bitSize))/2];
            
            
            for (int i = 0; i < (int)(Math.pow(2,bitSize)); i++){
                for (int j = 0; j < (int)(Math.pow(2,bitSize)); j++){
                    if((moore[i][j] >= 0) && (moore[i][j] < numInQuad)){//quad0
                        quad0[i][j] = moore[i][j];
                    } else if((moore[i][j] >= numInQuad) && (moore[i][j] < numInQuad*2)){//quad1
                        quad1[i][j-(int)(Math.pow(2,bitSize))/2] = moore[i][j];
                    } else if((moore[i][j] >= numInQuad*2) && (moore[i][j] < numInQuad*3)){//quad2
                        quad2[i-(int)(Math.pow(2,bitSize))/2][j-(int)(Math.pow(2,bitSize))/2] = moore[i][j];
                    } else if((moore[i][j] >= numInQuad*3) && (moore[i][j] < numInQuad*4)){//quad3
                        quad3[i-(int)(Math.pow(2,bitSize))/2][j] = moore[i][j];
                    } else {
                        //nothing
                    }
                }
            }
            
            quad0 = flip(quad0);
            quad1 = rotateCCW(quad1);
            quad2 = rotateCW(quad2);
            quad3 = flip(quad3);
            
            for (int i = 0; i < (int)(Math.pow(2,bitSize)); i++){
                for (int j = 0; j < (int)(Math.pow(2,bitSize)); j++){
                    if((moore[i][j] >= 0) && (moore[i][j] < numInQuad)){//quad0
                        moore[i][j] = quad0[i][j];
                    } else if((moore[i][j] >= numInQuad) && (moore[i][j] < numInQuad*2)){//quad1
                        moore[i][j] = quad1[i][j-(int)(Math.pow(2,bitSize))/2];
                    } else if((moore[i][j] >= numInQuad*2) && (moore[i][j] < numInQuad*3)){//quad2
                        moore[i][j] = quad2[i-(int)(Math.pow(2,bitSize))/2][j-(int)(Math.pow(2,bitSize))/2];
                    } else if((moore[i][j] >= numInQuad*3) && (moore[i][j] < numInQuad*4)){//quad3
                        moore[i][j] = quad3[i-(int)(Math.pow(2,bitSize))/2][j];
                    } else {
                        //nothing
                    }
                }
            }
            
            
            List<Object> table = new ArrayList<Object>();

            List<Object> mooreTable = new ArrayList<Object>();
            if (destinationTable.contains("range")){
                try{
                    stmt = connection.createStatement();
                    //uniform_2_10;
                    String sql = "SELECT * FROM public."+sourceTable;
                    ResultSet rs = stmt.executeQuery(sql);

                    while(rs.next()){
                        List<Object> item = new ArrayList<Object>();
                        int x  = rs.getInt("id");
                        item.add(x);
                        for(int a = 0; a < dimension; a++){
                            int x1 = rs.getInt("pt1_dim"+a);
                            int x2 = rs.getInt("pt2_dim"+a);
                            if(x1 > x2 ){
                                item.add(x2);
                                item.add(x1);
                            } else{
                                item.add(x1);
                                item.add(x2);
                            }
                            
                        }
                    table.add(item);    //orientation of range is id, pt*_dim0, pt*_dim0, etc.
                }
                rs.close();
                connection.close();
            }catch(SQLException se){
                //Handle errors for JDBC
                se.printStackTrace();
            }
                
            Long i = 0L;
            Long ttime = System.nanoTime() - stime;
            System.out.println("Start Time: " +(Double)(stime.doubleValue())/1000000L);
            System.out.println("Total Time: " +(Double)(ttime.doubleValue())/1000000L);
            for(int size = 0; size < table.size();size++){
                stime = System.nanoTime();
                String mbr = new String(table.get(size).toString().replace("[","").replace("]","").replace(" ",""));
                List<Object> range = Arrays.asList(mbr.split(","));
                if(dimension == 2){
                    int low_dim0 = Integer.parseInt((String)range.get(1));
                    int high_dim0 = Integer.parseInt((String)range.get(2));
                    int low_dim1 = Integer.parseInt((String)range.get(3));
                    int high_dim1 = Integer.parseInt((String)range.get(4));
                    for(int dim0 = low_dim0; dim0 < high_dim0+1; dim0++){
                        for(int dim1 = low_dim1; dim1 < high_dim1+1; dim1++){
                            List<Object> point = new ArrayList<Object>();
                            List<Object> rangeTable = new ArrayList<Object>();
                            point.add(i);
                            point.add(dim0);
                            point.add(dim1);
                            rangeTable.add(point);
                            mooreTable = MooreAP_Curve(rangeTable,moore,dimension,bitSize);
                            String sql = "";

                            try {
                                connection = DriverManager.getConnection("jdbc:postgresql://127.0.0.1:5432/postgres","postgres","password");
                                stmt = connection.createStatement();
                                String value = mooreTable.get(0).toString().replace("[","").replace("]","").replace(" ","");
                                List<Object> item = Arrays.asList(value.split(","));
                                sql = "INSERT INTO public."+destinationTable+" (id,mbr,vkey) VALUES("+item.get(0)+","+size+","+item.get(1)+");\n";
                                stmt.executeUpdate(sql);
                                connection.close();
                            } catch (SQLException e) {
                                System.out.println("Connection Failed! Check output console");
                                e.printStackTrace();
                            }
                            i++;
                        }
                    }
                } else if(dimension == 4){
                    int low_dim0 = Integer.parseInt((String)range.get(1));
                    int high_dim0 = Integer.parseInt((String)range.get(2));
                    int low_dim1 = Integer.parseInt((String)range.get(3));
                    int high_dim1 = Integer.parseInt((String)range.get(4));
                    int low_dim2 = Integer.parseInt((String)range.get(5));
                    int high_dim2 = Integer.parseInt((String)range.get(6));
                    int low_dim3 = Integer.parseInt((String)range.get(7));
                    int high_dim3 = Integer.parseInt((String)range.get(8));
                    for(int dim0 = low_dim0; dim0 < high_dim0+1; dim0++){
                        for(int dim1 = low_dim1; dim1 < high_dim1+1; dim1++){
                            for(int dim2 = low_dim2; dim2 < high_dim2+1; dim2++){
                                for(int dim3 = low_dim3; dim3 < high_dim3+1;dim3++){
                                    List<Object> point = new ArrayList<Object>();
                                    List<Object> rangeTable = new ArrayList<Object>();
                                    point.add(i);
                                    point.add(dim0);
                                    point.add(dim1);
                                    point.add(dim2);
                                    point.add(dim3);
                                    rangeTable.add(point);
                                    mooreTable = MooreAP_Curve(rangeTable,moore,dimension,bitSize);
                                    
                                    try {
                                        connection = DriverManager.getConnection("jdbc:postgresql://127.0.0.1:5432/postgres","postgres","password");
                                        stmt = connection.createStatement();
                                        String value = mooreTable.get(0).toString().replace("[","").replace("]","").replace(" ","");
                                        List<Object> item = Arrays.asList(value.split(","));
                                        String sql = "INSERT INTO public."+destinationTable+" (id,mbr,vkey) VALUES("+item.get(0)+","+size+","+item.get(1)+");\n";
                                        stmt.executeUpdate(sql);
                                        connection.close();
                                    } catch (SQLException e) {
                                        System.out.println("Connection Failed! Check output console");
                                        e.printStackTrace();
                                    }
                                    i++;
                                }
                            }
                        }
                    }
                } else if(dimension == 8){
                    int low_dim0 = Integer.parseInt((String)range.get(1));
                    int high_dim0 = Integer.parseInt((String)range.get(2));
                    int low_dim1 = Integer.parseInt((String)range.get(3));
                    int high_dim1 = Integer.parseInt((String)range.get(4));
                    int low_dim2 = Integer.parseInt((String)range.get(5));
                    int high_dim2 = Integer.parseInt((String)range.get(6));
                    int low_dim3 = Integer.parseInt((String)range.get(7));
                    int high_dim3 = Integer.parseInt((String)range.get(8));
                    int low_dim4 = Integer.parseInt((String)range.get(9));
                    int high_dim4 = Integer.parseInt((String)range.get(10));
                    int low_dim5 = Integer.parseInt((String)range.get(11));
                    int high_dim5 = Integer.parseInt((String)range.get(12));
                    int low_dim6 = Integer.parseInt((String)range.get(13));
                    int high_dim6 = Integer.parseInt((String)range.get(14));
                    int low_dim7 = Integer.parseInt((String)range.get(15));
                    int high_dim7 = Integer.parseInt((String)range.get(16));
                    for(int dim0 = low_dim0; dim0 < high_dim0+1; dim0++){
                        for(int dim1 = low_dim1; dim1 < high_dim1+1; dim1++){
                            for(int dim2 = low_dim2; dim2 < high_dim2+1; dim2++){
                                for(int dim3 = low_dim3; dim3 < high_dim3+1; dim3++){
                                    for(int dim4 = low_dim4; dim4 < high_dim4+1; dim4++){
                                        for(int dim5 = low_dim5; dim5 < high_dim5+1; dim5++) {
                                            for(int dim6 = low_dim6; dim6 < high_dim6+1; dim6++){
                                                for(int dim7 = low_dim7; dim7 < high_dim7+1; dim7++){
                                                    List<Object> point = new ArrayList<Object>();
                                                    List<Object> rangeTable = new ArrayList<Object>();
                                                    point.add(i);
                                                    point.add(dim0);
                                                    point.add(dim1);
                                                    point.add(dim2);
                                                    point.add(dim3);
                                                    point.add(dim4);
                                                    point.add(dim5);
                                                    point.add(dim6);
                                                    point.add(dim7);
                                                    rangeTable.add(point);
                                                    mooreTable = MooreAP_Curve(rangeTable,moore,dimension,bitSize);
                
                                                    String sql = "";

                                                    try {
                                                        connection = DriverManager.getConnection("jdbc:postgresql://127.0.0.1:5432/postgres","postgres","password");
                                                        stmt = connection.createStatement();
                                                        String value = mooreTable.get(0).toString().replace("[","").replace("]","").replace(" ","");
                                                        List<Object> item = Arrays.asList(value.split(","));
                                                        sql = "INSERT INTO public."+destinationTable+" (id,mbr,vkey) VALUES("+item.get(0)+","+size+","+item.get(1)+");\n";
                                                        stmt.executeUpdate(sql);
                                                        connection.close();
                                                    } catch (SQLException e) {
                                                        System.out.println("Connection Failed! Check output console");
                                                        e.printStackTrace();
                                                    }
                                                    i++;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
//                mooreTable = MooreAP_Curve(rangeTable,moore,dimension,bitSize);
//                
//                String sql = "";
//                
//                try {
//                    connection = DriverManager.getConnection("jdbc:postgresql://127.0.0.1:5432/postgres","postgres","password");
//                    stmt = connection.createStatement();
//                    for(int j = 0; j < mooreTable.size(); j++){
//                        String value = mooreTable.get(j).toString().replace("[","").replace("]","").replace(" ","");
//                        List<Object> item = Arrays.asList(value.split(","));
//                        sql = "INSERT INTO public."+destinationTable+" (id,mbr,vkey) VALUES("+item.get(0)+","+size+","+item.get(1)+");\n";
//                        stmt.executeUpdate(sql);
//                    }
//                    connection.close();
//                } catch (SQLException e) {
//                    System.out.println("Connection Failed! Check output console");
//                    e.printStackTrace();
//                }
                
                ttime = System.nanoTime() - stime;
                System.out.println("Start Time of MBR "+size+": " +(Double)(stime.doubleValue())/1000000L);
                System.out.println("Total Time of MBR "+size+": " +(Double)(ttime.doubleValue())/1000000L);
            }
            
        } else if (destinationTable.contains("point")){
            try{
                stmt = connection.createStatement();
                
                String sql = "SELECT * FROM public."+sourceTable;
                ResultSet rs = stmt.executeQuery(sql);

                while(rs.next()){
                    List<Object> item = new ArrayList<Object>();
                    int id  = rs.getInt("id");
                    item.add(id);
                    for(int a = 0; a < dimension; a++){
                        int dim = rs.getInt("dim"+a);
                        item.add(dim);
                    }
                    table.add(item);
                }
                rs.close();
                connection.close();
            }catch(SQLException se){
                //Handle errors for JDBC
                se.printStackTrace();
            }
            //Long readtime = (System.nanoTime() - stime)/table.size();
            for(int size = 0; size < table.size();size++){
                stime = System.nanoTime();
                List<Object> point = new ArrayList<Object>();
                point.add(table.get(size));
                mooreTable = MooreAP_Curve(point,moore,dimension,bitSize);
                String sql = "";
                try {
                    connection = DriverManager.getConnection("jdbc:postgresql://127.0.0.1:5432/postgres","postgres","password");
                    stmt = connection.createStatement();
                    for(int j = 0; j < mooreTable.size(); j++){
                        String value = mooreTable.get(j).toString().replace("[","").replace("]","").replace(" ","");
                        List<Object> item = Arrays.asList(value.split(","));
                        Long ttime = System.nanoTime() - stime;
                        //ttime = ttime + readtime;
                        sql = "INSERT INTO public."+destinationTable+" (id,vkey,totalTime) VALUES("+item.get(0)+","+item.get(1)+","+(Double)(ttime.doubleValue())/1000000L+");\n";
                        stmt.executeUpdate(sql);
                    }
                    connection.close();
                } catch (SQLException e) {
                    System.out.println("Connection Failed! Check output console");
                    e.printStackTrace();
                }
            }
        } else if(destinationTable.contains("mooreap")){
                try{
                    stmt = connection.createStatement();

                    String sql = "SELECT * FROM public."+sourceTable;
                    ResultSet rs = stmt.executeQuery(sql);

                    while(rs.next()){
                        List<Object> item = new ArrayList<Object>();
                        int id  = rs.getInt("id");
                        item.add(id);
                        for(int a = 0; a < dimension; a++){
                            int dim = rs.getInt("dim"+a);
                            item.add(dim);
                        }
                        table.add(item);    
                }
                rs.close();
                connection.close();
            }catch(SQLException se){
                //Handle errors for JDBC
                se.printStackTrace();
            }
            
            mooreTable = MooreAP_Curve(table,moore,dimension,bitSize);
            String sql = "";
            
            try {
                connection = DriverManager.getConnection("jdbc:postgresql://127.0.0.1:5432/postgres","postgres","password");
                stmt = connection.createStatement();
                for(int i = 0; i < mooreTable.size(); i++){
                    String value = mooreTable.get(i).toString().replace("[","").replace("]","").replace(" ","");
                    List<Object> item = Arrays.asList(value.split(","));
                    sql = "INSERT INTO public."+destinationTable+" (id,vkey) VALUES("+item.get(0)+","+item.get(1)+");\n";
                    stmt.executeUpdate(sql);
                }
                connection.close();
            } catch (SQLException e) {
                System.out.println("Connection Failed! Check output console");
                e.printStackTrace();
            }
            
            Long ttime = System.nanoTime() - stime;
            System.out.println("Start Time: " +(Double)(stime.doubleValue())/1000000L);
            System.out.println("Total Time: " +(Double)(ttime.doubleValue())/1000000L);
        } else {
            //nothing
        }
    }
    
    public static List<Object> MooreAP_Curve(List<Object> table, long[][] moore, int n, int bit){
        List<Object> mooreTable = new ArrayList<Object>();
        List<Object> mooreTable2 = new ArrayList<Object>();
        for (int i = 0; i < table.size(); i++){
            List<Object> mvkey = new ArrayList<Object>();
            String value = table.get(i).toString().replace("[","").replace("]","").replace(" ","");
            List<Object> item = Arrays.asList(value.split(","));
            mvkey.add(item.get(0));
            mvkey.add(moore[Integer.parseInt(item.get(1).toString())][Integer.parseInt(item.get(2).toString())]);
            if(n > 2){
                for(int a = 3; a < item.size(); a++){
                    mvkey.add(item.get(a));
                }
            }
            mooreTable2.add(mvkey);
        }
        
        if(n > 2){
            for(int a = 2; a < n; a++){
                mooreTable2 = Hilbert_Curve(mooreTable2,(bit*(a-1)),(bit*a));
            }
        } 
        mooreTable = mooreTable2;
        return mooreTable;
    }
    
    public static List<Object> Hilbert_Curve(List<Object> table, int n, int bit){
        
        List<Object> hilbertTable = new ArrayList<Object>();
        for(int i = 0; i < table.size(); i++){
            String point = table.get(i).toString().replace("[","").replace("]","").replace(" ","");

            List<Object> items = Arrays.asList(point.split(","));
            List<Object> hilbertVKey = new ArrayList<Object>();
            hilbertVKey = Hilbert_VKey(items,n,bit);
            hilbertTable.add(hilbertVKey);

        }
        return hilbertTable;
    }
    
    public static List<Object> Hilbert_VKey(List<Object> item, int n, int bit){
        String s = toBinary(new BigInteger((String)item.get(1)),bit);
        String t = toBinary(new BigInteger((String)item.get(2)),bit);
        String interweave = new String();
        int[] value = new int[bit];
        for (int i = 0; i < s.length(); i++) {
            interweave = interweave + s.charAt(i) + t.charAt(i);
            switch (interweave) {
                case "00": value[i] = 0;
                           break;
                case "01": value[i] = 1;
                           break;
                case "10": value[i] = 3;
                           break;
                case "11": value[i] = 2;
                           break;
                default:   break;
            }
            interweave = "";
        }
        String a = new String();
        for(int j = 0; j < value.length; j++){
            if(value[j] == 0){
                for (int k = j+1; k < value.length; k++){
                    if(value[k] == 3){
                        value[k] = 1;
                    } else if(value[k] == 1) {
                        value[k] = 3;
                    } else {}    
                }
            } else if (value[j] == 3) {
                for (int k = j+1; k < value.length; k++){
                    if(value[k] == 0){
                        value[k] = 2;
                    } else if(value[k] == 2) {
                        value[k] = 0;
                    } else {}    
                }
            }
            a = a + String.format("%2s",Integer.toBinaryString(value[j])).replace(' ','0');
        }
        if(n>2){
            a = a.substring(n,a.length());
        }
        
        BigInteger r = toDecimal(a);
        
        List<Object> hValue = new ArrayList<Object>();
        hValue.add(item.get(0));
        hValue.add(r);
        
        if(item.size() > 3){
            for(int i = 3; i <item.size(); i++){
                hValue.add(item.get(i));
            }
        }
        return hValue;
    }
    
    public static long[][] rotateCW(long[][] matrix) {
        int m = matrix.length;
        long[][] rotated = new long[m][m];
        for (int i = 0; i < m; i++) {
            for (int j = 0; j < m; j++) {
                rotated[j][m-1-i] = matrix[i][j];
            }
        }
        return rotated;
    }
    
    public static long[][] rotateCCW(long[][] matrix) {
        int m = matrix.length;
        long[][] rotated = new long[m][m];
        for (int i = 0; i < m; i++) {
            for (int j = 0; j < m; j++) {
                rotated[m-1-j][i] = matrix[i][j];
            }
        }
        return rotated;
    }
    
    public static long[][] flip(long[][] matrix) {
        int m = matrix.length;
        long[][] flipped = new long[m][m];
        for (int i = 0; i < m; i++) {
            for (int j = 0; j < m; j++) {
                flipped[m-1-i][j] = matrix[i][j];
            }
        }
        return flipped;
    }
    
    public static String toBinary(BigInteger n, int iDepth) {
    String binary = "";
    if (n.compareTo(BigInteger.valueOf(0)) > 0){
      binary = "";
      while (n.compareTo(BigInteger.valueOf(0)) > 0) {
        long rem = n.mod(BigInteger.valueOf(2)).longValue();
        binary = rem + binary;
        n = n.divide(BigInteger.valueOf(2));
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
    
  public static BigInteger toDecimal(String binaryNumber){
    BigInteger decimal = BigInteger.valueOf(0);
    BigInteger base = BigInteger.valueOf(2);
    int p = 0;
    int temp = 0;
    while(true){
      if(binaryNumber.equals("")){
        break;
      } else {
          temp = Integer.parseInt(binaryNumber.substring(binaryNumber.length()-1));
          decimal = decimal.add((base.pow(p)).multiply(BigInteger.valueOf(temp)));
          binaryNumber = binaryNumber.substring(0,binaryNumber.length()-1);
          p++;
       }
    }
    return decimal;
  }  

}