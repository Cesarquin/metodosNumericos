clc
clear
A=[0.55 0.25 0.25; 0.3 0.45 0.2; 0.15 0.3 0.55];
b=[4800; 5800; 5700];
Xe=[0; 0; 0];
n=length(A);
x=zeros(n,1);
e=1;
while (e>0.001)
    for i=1:n
        sum=0;
        for j=1:n
            if (j~=i)
                sum=sum+A(i,j)*Xe(j);
            end
            x(i)=(b(i)-sum)/A(i,i);
        end
        e=norm(Xe-x);
        Xe=x;
    end
end
x