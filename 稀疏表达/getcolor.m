function[p_one]=getcolor(img);
patch_size=8;
img_gray=rgb2gray(img);
[h w]=size(img_gray);
h_num=floor(h/patch_size);
w_num=floor(w/patch_size);
p_one=zeros(64,h_num*w_num);
t=0;
for i=1:h_num
    for j=1:w_num
        t=t+1;
        img_patch=img((i-1)*patch_size+1:i*patch_size,(j-1)*patch_size+1:j*patch_size,:);
        p_one(:,t)=create_color(img_patch);
    end
end

