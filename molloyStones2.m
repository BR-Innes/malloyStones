function molloyStones2
%% molloyStones2   Stone Circulation Method 2
% 
% "I might do better to transfer the stones four by four, instead of one
% by one, that is to say, during the sucking, to take the three stones remaining 
% in the right pocket of my greatcoat and replace them by the four in the 
% right pocket of my trousers , and these by the four in the left pocket 
% of my trousers, and these by the four in the left pocket of my greatcoat, 
% and finally these by the three from the right pocket of my greatcoat, 
% plus the one, as soon as I had finished sucking it, which was in my mouth. 
% Yes, it seemed to me at first that by so doing I would arrive at a better 
% result. But onfurther reflection I had to change my mind and confess that 
% the circulation of the stones four by four came to exactly the same thing 
% as their circulation one by one." 
% 
%                                       Samuel Beckett, 'Molloy' (1955) 
% 
% The second circulation method also has the possibility that during a cycle
% of 16 moves (one for each stone), some stones will be sucked multiple 
% times and others will not be sucked at all. This can be verified by the 
% command line output. 
% 
% Reference: http://www.samuel-beckett.net/molloy1.html 

% Pocket Arrays
grtcoatL = [ 1  2  3  4]; % Great Coat Pocket (Left)
grtcoatR = [ 5  6  7  8]; % Great Coat Pocket (Right)
trouserL = [ 9 10 11 12]; % Trouser Pocket (Left)
trouserR = [13 14 15 16]; % Trouser Pocket (Right) 

mouth = []; % Mouth 
hold  = []; % Holds Great Coat Pocket (Right) contents during rotation

% Cycle Stones 
for i = 1:16
    
% Randomly pick a stone
pick = randi(4); 

% Move stone from Great Coat (Right) to Mouth
mouth = grtcoatR(pick); 
grtcoatR(pick(1)) = []; 

% Show us which stone is being sucked
disp(['Sucking Stone ' num2str(mouth)]); 

% Hold the remaining contents of Great Coat (Right)
hold = grtcoatR; 

% Move all stones from Trouser (Right) to Great Coat (Right)
grtcoatR = trouserR;  %#ok<*AGROW>

% Move all stones from Trouser (Left) to Trouser (Right)  
trouserR = trouserL; 

% Move all stones from Great Coat (Left) to Trouser (Left) 
trouserL = grtcoatL; 

% Move all held stones (and the stone still in the Mouth) to Trouser (Left)
grtcoatL = [hold, mouth]; 
mouth = []; 
hold = []; 

end 

%#ok<*AGROW>
%#ok<*NASGU>


end

