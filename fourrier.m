function[s]=fourrier (t,n)
s=0;
for i=1:n+1
    s=s+(4/pi)*((sin(2*(2*i+1)*pi*t))/(2*i+1));
end
end



