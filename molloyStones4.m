function molloyStones4
%% molloyStones3   Stone Circulation Method 4 
% 
% "But deep down I didn't give a 
% fiddler's curse about being without, when they were all gone they 
% would be all gone, I wouldn't be any the worse off, or hardly any. 
% And the solution to which I rallied in the end was to throw away all 
% the stones but one, which I kept now in one pocket, now in another, 
% and which of course I soon lost, or threw away, or gave away, or 
% swallowed ..."
% 
%                                       Samuel Beckett, 'Molloy' (1955)  
% 
% Reference: http://www.samuel-beckett.net/molloy1.html 

% Stones
stones = 1:16;

% Throw away all but one
stones(stones ~= randi(16)) = []; 

% Suck the remaining stone
mouth = stones; 

% Show us which stone is being sucked
disp(['Sucking Stone ' num2str(mouth)]); 
disp('...'); 
disp('Stone Gone!'); 

%#ok<*NASGU>

end 