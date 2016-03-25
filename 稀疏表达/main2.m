load('KSVD\Dictionary.mat');
imglist = dir('C:\Users\dzy\Desktop\work1\test\test1\*.png');
imgnum = length(imglist);
code_test=zeros(300,20);
for i=1:20
    img=imread(imglist(i).name);
    i
    p=getcolor(img);
    a=OMP(Dictionary,p,4);
       for j = 1:300
           code_test(j,i)=max(abs(a(j,:)));
       end
end

