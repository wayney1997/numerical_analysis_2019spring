function [total64bits,sign,exponent,mantissa]=print_memory(x)

%       [total64bits,sign,exponent,mantissa]=read_memory(x)
%       for double precision number x, gives IEEE binary representation 
%       as string of 64 characters (each is 0 or 1)

s = sprintf('%bx',x);
s = reshape(dec2bin(hex2dec(s'),4)',1,4*16);

total64bits=s;
sign=s(1:1);
exponent=s(2:12);
mantissa=s(13:end);


