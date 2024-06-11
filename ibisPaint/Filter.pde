public class Filter {
  float[][]kernel = {{.111, .111, .111}, {.111, .111, .111}, {.111, .111, .111}};
  public Filter(){
  }
  color calcNewColor(int x, int y) {
    float[]kernelFlat = new float[9]; //flattens kernel for easier run-thru
    int counter = 0;
    for (int i = 0;i<3;i++) {
      for (int j=0;j<3;j++) {
        kernelFlat[counter] =kernel[j][i];
        counter++;
      }
    }
    color[]storeFlat = new color[9];
    int counter2 =0;
    for (int i = x-1;i<x+2;i++) {
      for (int j = y-1;j<y+2;j++) {
        storeFlat[counter2] = get(i,j);
        counter2++;
      }
    }
    float sumr =0;
    float sumg =0;
    float sumb =0;
    for (int i=0;i<9;i++) {
      sumr += (kernelFlat[i]*red(storeFlat[i]));
      sumg += (kernelFlat[i]*green(storeFlat[i]));
      sumb += (kernelFlat[i]*blue(storeFlat[i]));
    }
     if (sumr>255) {
        sumr=255;
      }
      if (sumg>255) {
        sumg=255;
      }
      if (sumb>255) {
        sumb=255;
      }
      if (sumr<0) {
        sumr=0;
      }
      if (sumg<0) {
        sumg=0;
      }
      if (sumb<0) {
        sumb=0;
      }   
    return color(sumr, sumg, sumb);
  }
  public void setFilter(){
    for(int i=51;i<1149;i++){
      for (int j=51;j<649;j++) {
        set(i,j,(calcNewColor(i,j)));
      }
    }
  }
}
