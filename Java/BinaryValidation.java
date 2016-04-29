import java.math.BigInteger;

public class BinaryValidation {
  public static void main(String[] args) {
    int iMaxDim=16;
    int iBitdepth=32;
    String[] sNum = new String[iMaxDim];
     sNum[0] = toBinary(999999, iBitdepth);
     sNum[1] = toBinary(999999, iBitdepth);
     sNum[2] = toBinary(999999, iBitdepth);
     sNum[3] = toBinary(999999, iBitdepth);
     sNum[4] = toBinary(999999, iBitdepth);
     sNum[5] = toBinary(999999, iBitdepth);
     sNum[6] = toBinary(999999, iBitdepth);
     sNum[7] = toBinary(999999, iBitdepth);
     sNum[8] = toBinary(999999, iBitdepth);
     sNum[9] = toBinary(999999, iBitdepth);
     sNum[10] = toBinary(999999, iBitdepth);
     sNum[11] = toBinary(999999, iBitdepth);
     sNum[12] = toBinary(999999, iBitdepth);
     sNum[13] = toBinary(999999, iBitdepth);
     sNum[14] = toBinary(999999, iBitdepth);
     sNum[15] = toBinary(999999, iBitdepth);     
     for (int k=0; k<iMaxDim; k++) {
       //System.out.println(sNum[k]);
     }
     int iDim=2;
     for(int M=1; M<=iMaxDim/4; M++) {
       
       System.out.println(iDim);
       iDim = iDim*2;

     }
        
     String vkey="";
     for(int b=0; b<iBitdepth; b++) {
       for(int n=0; n<iMaxDim; n++) {
         vkey += sNum[n].substring(b, b+1);
       }
     }
    //System.out.println("Binary Vkey = "+vkey);
    //System.out.println("BigInteger Value = "+toBIvkey(vkey));
  }

  private static BigInteger toBIvkey(String skey) {
    
    return(new BigInteger(skey,2));
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
      if(binary.length() <= iDepth){
        String zeroPad="";
        for(int q=0; q<(iDepth-binary.length()); q++) {
          zeroPad+="0";
        }
        binary= zeroPad+binary;
      }
      return binary;
    }    
    
}