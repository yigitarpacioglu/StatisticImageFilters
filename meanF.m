

function Output_Image = meanF(img,flt_size)
[Row,Col]=size(img);
Output_Image=zeros(Row,Col);

Sz=(flt_size-1)*0.5;

for i = 1+Sz:Row-Sz
    for j = 1+Sz:Col-Sz
    rmin=max(1,i-Sz);
    rmax=min(Row,i+Sz);
    cmin=max(1,j-Sz);
    cmax=min(Col,j+Sz);
    
    Negh_Mx = img(rmin:rmax, cmin:cmax);
    
    Output_Image(i,j) = mean(Negh_Mx(:));
    end
end

Output_Image=uint8(Output_Image);
end




