function[p]=create_color(img)
feature=zeros(64,1);
img_hsv=rgb2hsv(img);
img_ycbcr=rgb2ycbcr(img);
[counts1 x1]=imhist(img(:,:,1),8);
[counts2 x2]=imhist(img(:,:,2),8);
[counts3 x3]=imhist(img(:,:,1),8);
[counts4 x4]=imhist(img_hsv(:,:,1),8);
[counts5 x5]=imhist(img_hsv(:,:,2),8);
[counts6 x6]=imhist(img_hsv(:,:,3),8);
[counts7 x7]=imhist(img_ycbcr(:,:,2),8);
[counts8 x8]=imhist(img_ycbcr(:,:,3),8);
counts1=counts1/sum(counts1);
counts2=counts2/sum(counts2);
counts3=counts3/sum(counts3);
counts4=counts4/sum(counts4);
counts5=counts5/sum(counts5);
counts6=counts6/sum(counts6);
counts7=counts7/sum(counts7);
counts8=counts8/sum(counts8);
feature=[counts1;counts2;counts3;counts4;
         counts5;counts6;counts7;counts8];
p=feature;
 
 

