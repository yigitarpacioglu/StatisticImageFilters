function OutImage=maxF(img,flt_sz)

if mod(flt_sz,2)==0
    printf('Please re-run the code and enter odd numbered filter size');
end

%Copying image
OutImage=img;

[Row,Col]=size(OutImage);
Sz=(flt_sz-1)*0.5;

%Sliding Mask 
for i=1+Sz:Row-Sz
    for j=1+Sz:Col-Sz
        max=0;
            for k=-Sz:Sz
                for l=-Sz:Sz
                    tmp=img(i+k,j+l);
                    if tmp > max
                        max=tmp;
                    end
                end
            end
         OutImage(i,j)=max;         
    end
end
                  
end