function y = fcn
% a = 20;
% b= 100;
% 
% y = round((a + (b-a) .* rand(1,1)));
% 
% end

%#codegen
coder.extrinsic('rand','rng');
y = 0;

persistent atTime0
if isempty(atTime0)
    rng('shuffle');
    atTime0 = false;
end

y = round(rand * 100);