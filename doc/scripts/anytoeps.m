function [dst] = anytoeps(src)
    img_i=imread(src);
    %copy the image to dst
    dst=img_i;
    figure(1);
    imshow(dst);
    Z=rgb2gray(dst);
    imshow(Z);
end

