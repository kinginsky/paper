imglist = dir('C:\Users\dzy\Desktop\work1\sparse coding\*.png');
imgnum = length(imglist);
h=144;
w=187;
patch_num=h*w;
p_color=zeros(64,patch_num*imgnum);
for i=1:imgnum
    img=imread(imglist(i).name);
    p(:,(i-1)*patch_num+1:i*patch_num)=getcolor(img);
end

