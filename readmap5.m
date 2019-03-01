clear all;
isokinput = false;
while ~isokinput
    X = input('Type 6 digits, please \n', 's');
    x = str2double(X);
    if isnan(x)   
       fprintf('Invalid expression. Please, retry\n\n');
    elseif length(X) ~=6
       fprintf('Invalid expression. Please, retry\n\n');
    else
       isokinput = true;
    end
end
x = zeros(1, 6);
    for i = 1:6
    x(i) = str2double(X(i));
    end
if ismember(0,x) == 1
    x(x==0) = 10;
end 
X1 = input('Type the filename.txt for mapping, please \n', 's');
fileID1 = fopen(X1, 'r');
A = (fscanf(fileID1, '%s', [6 Inf]))';
X2 = input('Type the filename.txt for data, please \n', 's');
fileID2 = fopen(X2, 'r');
B = (fscanf(fileID2, '%s'));
for i = 1:5
    for j = 1:5
        for k = 1:5
            for l = 1:5
                for oo = 1:5
                    for p = 1:5
    if strfind(convertCharsToStrings(B), convertCharsToStrings([A(x(1),i+1) A(x(2),j+1) A(x(3),k+1) A(x(4),l+1) A(x(5),oo+1) A(x(6),p+1)])) ~= 0
        disp([A(x(1),i+1) A(x(2),j+1) A(x(3),k+1) A(x(4),l+1) A(x(5),oo+1) A(x(6),p+1)]);
    end
                    end
                end
            end
        end
    end
end


