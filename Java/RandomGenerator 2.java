package randomgenerator;        //needed for Netbeans IDE...may not need for the APIs you use

import java.util.*;
import java.io.*;
public class RandomGenerator {

    public static void main(String[] args) {
//        //UNIFORM DATA
//        Random randGen = new Random();
//        //Modify path to where you want the file to write to
//        String path = "/Users/Admin/Downloads/NewData/uniform_2_10.txt";
//        
//        int num;
//        
//        try{
//            File file = new File(path);
//
//            // if file does not exist, then create it
//            if (!file.exists()) {
//                file.createNewFile();
//            } else {
//                file.delete();
//                file.createNewFile();
//            }
//
//            PrintWriter pw = new PrintWriter(file);
//            List<Object> dataSet = new ArrayList<Object>();
//            int i = 0;
//            // write to file
//            while (i < 10){        //Change the max value to how ever many points you wish to generate
//              
//                List<Object> point = new ArrayList<Object>();
//
//                num = randGen.nextInt(4);
//                point.add(num);
//            
//                num = randGen.nextInt(4); //repeat this line and next for the number of dimensions of point in space
//                point.add(num);
////                
////                num = randGen.nextInt(4); //repeat this line and next for the number of dimensions of point in space
////                point.add(num);
////                
////                num = randGen.nextInt(4); //repeat this line and next for the number of dimensions of point in space
////                point.add(num);
////                
////                num = randGen.nextInt(256); //repeat this line and next for the number of dimensions of point in space
////                point.add(num);
////                
////                num = randGen.nextInt(256); //repeat this line and next for the number of dimensions of point in space
////                point.add(num);
////            
////                num = randGen.nextInt(256); //repeat this line and next for the number of dimensions of point in space
////                point.add(num);
////                
////                num = randGen.nextInt(256); //repeat this line and next for the number of dimensions of point in space
////                point.add(num);
////                
////                num = randGen.nextInt(256); //repeat this line and next for the number of dimensions of point in space
////                point.add(num);
////                
////                num = randGen.nextInt(256); //repeat this line and next for the number of dimensions of point in space
////                point.add(num);
////                
////                num = randGen.nextInt(256); //repeat this line and next for the number of dimensions of point in space
////                point.add(num);
////                
////                num = randGen.nextInt(256); //repeat this line and next for the number of dimensions of point in space
////                point.add(num);
////                
////                num = randGen.nextInt(256); //repeat this line and next for the number of dimensions of point in space
////                point.add(num);
////                
////                num = randGen.nextInt(256); //repeat this line and next for the number of dimensions of point in space
////                point.add(num);
////            
////                num = randGen.nextInt(256); //repeat this line and next for the number of dimensions of point in space
////                point.add(num);
////                
////                num = randGen.nextInt(256); //repeat this line and next for the number of dimensions of point in space
////                point.add(num);
//                
//                if(dataSet.contains(point)){
//                } else {
//                    dataSet.add(point);
//                    i++;
//                }
//            }
//            
//            for(int j = 0; j < 10; j++){
//                pw.println(j+","+dataSet.get(j).toString().replace("[","").replace("]","").replace(" ",""));
//            }
//            pw.close();
//                
//        } catch (Exception e){
//              System.out.println("Exception: "+e);
//        }

        //CLUSTER DATA
        Random randGen = new Random();
        //Modify path to where you want the file to write to
        String path = "/Users/Admin/Downloads/NewData/cluster_8_1000000.txt";

        int num;
        
        try{
            File file = new File(path);

            // if file does not exist, then create it
            if (!file.exists()) {
                file.createNewFile();
            } else {
                file.delete();
                file.createNewFile();
            }

            PrintWriter pw = new PrintWriter(file);
            List<Object> temp = new ArrayList<Object>();
            List<Object> dataSet = new ArrayList<Object>();
            
            int i = 0;
            
            // create 4 centers
            while (i < 4){        //Change the max value to how ever many points you wish to generate
            
                List<Object> centers = new ArrayList<Object>();
                
                num = randGen.nextInt(1024);
                centers.add(num);
            
                num = randGen.nextInt(1024); //repeat this line and next for the number of dimensions of point in space
                centers.add(num);
                
                num = randGen.nextInt(1024); //repeat this line and next for the number of dimensions of point in space
                centers.add(num);
                
                num = randGen.nextInt(1024); //repeat this line and next for the number of dimensions of point in space
                centers.add(num);
                
                num = randGen.nextInt(1024); //repeat this line and next for the number of dimensions of point in space
                centers.add(num);
                
                num = randGen.nextInt(1024); //repeat this line and next for the number of dimensions of point in space
                centers.add(num);
            
                num = randGen.nextInt(1024); //repeat this line and next for the number of dimensions of point in space
                centers.add(num);
                
                num = randGen.nextInt(1024); //repeat this line and next for the number of dimensions of point in space
                centers.add(num);
                
//                num = randGen.nextInt(1024); //repeat this line and next for the number of dimensions of point in space
//                centers.add(num);
//                
//                num = randGen.nextInt(1024); //repeat this line and next for the number of dimensions of point in space
//                centers.add(num);
//                
//                num = randGen.nextInt(1024); //repeat this line and next for the number of dimensions of point in space
//                centers.add(num);
//                
//                num = randGen.nextInt(1024); //repeat this line and next for the number of dimensions of point in space
//                centers.add(num);
//                
//                num = randGen.nextInt(1024); //repeat this line and next for the number of dimensions of point in space
//                centers.add(num);
//                
//                num = randGen.nextInt(1024); //repeat this line and next for the number of dimensions of point in space
//                centers.add(num);
//            
//                num = randGen.nextInt(1024); //repeat this line and next for the number of dimensions of point in space
//                centers.add(num);
//                
//                num = randGen.nextInt(1024); //repeat this line and next for the number of dimensions of point in space
//                centers.add(num);
                
                if(temp.contains(centers)){
                } else {
                    System.out.println(centers.toString());
                    int j = 0;
                    while(j < 250000){
                        List<Object> point = new ArrayList<Object>();
                        int a = 0;
                        int b = 0;
                        int c = 0;
                        int d = 0;
                        int e = 0;
                        int f = 0;
                        int g = 0;
                        int h = 0;
//                        int a1 = 0;
//                        int b1 = 0;
//                        int c1 = 0;
//                        int d1 = 0;
//                        int e1 = 0;
//                        int f1 = 0;
//                        int g1 = 0;
//                        int h1 = 0;
                        while(a < 1){
                            int dim0 = (int)Math.round(randGen.nextGaussian() * 250 + Integer.parseInt(centers.get(0).toString()));
                            if (dim0 >= 0 && dim0 < 1024){
                                point.add(dim0);
                                a++;
                            } else {
                            }
                        }
                        while(b < 1){
                            int dim1 = (int)Math.round(randGen.nextGaussian() * 250 + Integer.parseInt(centers.get(1).toString()));
                            if(dim1 >= 0 && dim1 < 1024){
                                point.add(dim1);
                                b++;
                            } else {
                            }
                        }
                        while(c < 1){
                            int dim2 = (int)Math.round(randGen.nextGaussian() * 250 + Integer.parseInt(centers.get(2).toString()));
                            if(dim2 >= 0 && dim2 < 1024){
                                point.add(dim2);
                                c++;
                            } else {
                            }
                        }
                        while(d < 1){
                            int dim3 = (int)Math.round(randGen.nextGaussian() * 250 + Integer.parseInt(centers.get(3).toString()));
                            if(dim3 >= 0 && dim3 < 1024){
                                point.add(dim3);
                                d++;
                            } else {
                            }
                        }
                        while(e < 1){
                            int dim4 = (int)Math.round(randGen.nextGaussian() * 250 + Integer.parseInt(centers.get(4).toString()));
                            if(dim4 >= 0 && dim4 < 1024){
                                point.add(dim4);
                                e++;
                            } else {
                            }
                        }
                        while(f < 1){
                            int dim5 = (int)Math.round(randGen.nextGaussian() * 250 + Integer.parseInt(centers.get(5).toString()));
                            if(dim5 >=0 && dim5 < 1024){
                                point.add(dim5);
                                f++;
                            } else {
                            }
                        }
                        while(g < 1){
                            int dim6 = (int)Math.round(randGen.nextGaussian() * 250 + Integer.parseInt(centers.get(6).toString()));
                            if(dim6 >= 0 && dim6 < 1024){
                                point.add(dim6);
                                g++;
                            } else {
                            }
                        }
                        while(h < 1){
                            int dim7 = (int)Math.round(randGen.nextGaussian() * 250 + Integer.parseInt(centers.get(7).toString()));
                            if(dim7 >= 0 && dim7 < 1024){
                                point.add(dim7);
                                h++;
                            } else {
                            }
                        }
//                        while(a1 < 1){
//                            int dim8 = (int)Math.round(randGen.nextGaussian() * 250 + Integer.parseInt(centers.get(8).toString()));
//                            if(dim8 >= 0 && dim8 < 1024){
//                                point.add(dim8);
//                                a1++;
//                            } else {
//                            }
//                        }
//                        while(b1 < 1){
//                            int dim9 = (int)Math.round(randGen.nextGaussian() * 250 + Integer.parseInt(centers.get(9).toString()));
//                            if(dim9 >=0 && dim9 < 1024){
//                                point.add(dim9);
//                                b1++;
//                            } else {
//                            }
//                        }
//                        while(c1 < 1){
//                            int dim10 = (int)Math.round(randGen.nextGaussian() * 250 + Integer.parseInt(centers.get(10).toString()));
//                            if(dim10 >= 0 && dim10 < 1024){
//                                point.add(dim10);
//                                c1++;
//                            } else {
//                            }
//                        }
//                        while(d1 < 1){
//                            int dim11 = (int)Math.round(randGen.nextGaussian() * 250 + Integer.parseInt(centers.get(11).toString()));
//                            if(dim11 >= 0 && dim11 < 1024){
//                                point.add(dim11);
//                                d1++;
//                            } else {
//                            }
//                        }
//                        while(e1 < 1){
//                            int dim12 = (int)Math.round(randGen.nextGaussian() * 250 + Integer.parseInt(centers.get(12).toString()));
//                            if(dim12 >= 0 && dim12 < 1024){
//                                point.add(dim12);
//                                e1++;
//                            } else {
//                            }
//                        }
//                        while(f1 < 1){
//                            int dim13 = (int)Math.round(randGen.nextGaussian() * 250 + Integer.parseInt(centers.get(15).toString()));
//                            if(dim13 >=0 && dim13 < 1024){
//                                point.add(dim13);
//                                f1++;
//                            } else {
//                            }
//                        }
//                        while(g1 < 1){
//                            int dim14 = (int)Math.round(randGen.nextGaussian() * 250 + Integer.parseInt(centers.get(14).toString()));
//                            if(dim14 >= 0 && dim14 < 1024){
//                                point.add(dim14);
//                                g1++;
//                            } else {
//                            }
//                        }
//                        while(h1 < 1){
//                            int dim15 = (int)Math.round(randGen.nextGaussian() * 250 + Integer.parseInt(centers.get(15).toString()));
//                            if(dim15 >= 0 && dim15 < 1024){
//                                point.add(dim15);
//                                h1++;
//                            } else {
//                            }
//                        }
                        if(dataSet.contains(point)){
                        } else {
                            dataSet.add(point);
                            j++;
                        }
                    }
                    temp.add(centers);
                    i++;
                }
            }
            
            for(int j = 0; j < 1000000; j++){
                pw.println(j+","+dataSet.get(j).toString().replace("[","").replace("]","").replace(" ",""));
            }
            pw.close();
                
        } catch (Exception e){
              System.out.println("Exception: "+e);
        }
    }    
}
