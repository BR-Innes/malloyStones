function molloyStones1
%% molloyStones1   Stone Circulation Method 1 
% 
% "I took advantage of being at the seaside to lay in a store of 
% sucking-stones. They were pebbles but I call them stones. Yes, on 
% this occasion I laid in a considerable store. I distributed them 
% equally between my four pockets, and sucked them turn and turn 
% about. This raised a problem which I first solved in the following 
% way. I had say sixteen stones, four in each of my four pockets these 
% being the two pockets of my trousers and the two pockets of my 
% greatcoat. Taking a stone from the right pocket of my greatcoat, and 
% putting it in my mouth, I replaced it in the right pocket of my 
% greatcoat by a stone from the right pocket of my trousers, which I 
% replaced by a stone from the left pocket of my trousers, which I 
% replaced by a stone from the left pocket of my greatcoat, which I 
% replaced by the stone which was in my mouth, as soon as I had 
% finished sucking it. Thus there were still four stones in each of my 
% four pockets, but not quite the same stones. And when the desire to 
% suck took hold of me again, I drew again on the right pocket of my 
% greatcoat, certain of not taking the same stone as the last time. 
% And while I sucked it I rearranged the other stones in the way I 
% have just described. And so on. But this solution did not satisfy me 
% fully. For it did not escape me that, by an extraordinary hazard, the 
% four stones circulating thus might always be the same four."
% 
%                                       Samuel Beckett, 'Molloy' (1955) 
% 
% The first circulation method has the possibility that during a cycle of
% 16 moves (one for each stone), some stones will be sucked multiple times
% and others will not be sucked at all. This can be verified by the command
% line output. 
% 
% Reference: http://www.samuel-beckett.net/molloy1.html 

% Pocket Arrays
grtcoatL = [ 1  2  3  4]; % Great Coat Pocket (Left)
grtcoatR = [ 5  6  7  8]; % Great Coat Pocket (Right)
trouserL = [ 9 10 11 12]; % Trouser Pocket (Left)
trouserR = [13 14 15 16]; % Trouser Pocket (Right) 

mouth = []; % Mouth 

% Cycle Stones 
for i = 1:16
    
% Randomly pick a stone from each pocket
picks = randi(4, 1, 4); 

% Move stone from Great Coat (Right) to Mouth 
mouth = grtcoatR(picks(1)); 
grtcoatR(picks(1)) = []; 

% Show us which stone is being sucked
disp(['Sucking Stone ' num2str(mouth)]); 

% Move stone from Trouser (Right) to Great Coat (Right)  
grtcoatR(end+1) = trouserR(picks(2));  
trouserR(picks(2)) = []; 

% Move stone from Trouser (Left) to Trouser (Right)  
trouserR(end+1) = trouserL(picks(3)); 
trouserL(picks(3)) = []; 

% Move stone from Great Coat (Left) to Trouser (Left) 
trouserL(end+1) = grtcoatL(picks(4)); 
grtcoatL(picks(4)) = []; 

% Move stone from Mouth to Trouser (Left)
grtcoatL(end+1) = mouth; 
mouth = []; 

end 

%#ok<*AGROW>
%#ok<*NASGU>

end

