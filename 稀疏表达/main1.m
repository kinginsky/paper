load('KSVD\Dictionary.mat');
imglist = dir('C:\Users\dzy\Desktop\work1\tupian\*.png');
imgnum = length(imglist);
code_yes=zeros(300,28);
code_no=zeros(300,41);
for i=1:28
    img=imread(imglist(i).name);
    i
    p=getcolor(img);
    a=OMP(Dictionary,p,4);
       for j = 1:300
           code_yes(j,i)=max(abs(a(j,:)));
       end
end

for i=29:69
    img=imread(imglist(i).name);
    i
    p=getcolor(img);
    a=OMP(Dictionary,p,4);
       for j = 1:300
           code_no(j,i-28)=max(abs(a(j,:)));
       end
end
