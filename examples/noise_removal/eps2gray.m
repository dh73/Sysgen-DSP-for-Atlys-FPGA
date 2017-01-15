bw=imread('/home/diego/Documents/Finalized/examples/noise_removal/myfigurescope.jpg');
bw2=imcomplement(bw);
figure();
imshow(bw2)