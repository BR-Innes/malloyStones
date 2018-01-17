function molloyStones3
%% molloyStones3   Stone Circulation Method 3
% 
% "And it was on the basis of this interpretation, whether right 
% or wrong, that I finally reached a solution, inelegant assuredly, but 
% sound, sound. Now I am willing to believe, indeed I firmly believe, that 
% other solutions to this problem might have been found and indeed may still 
% be found, no less sound, but much more elegant than the one I shall now 
% describe, if I can ...

% Good. Now I can begin to suck. Watch me closely. I take a stone from 
% the right pocket of my greatcoat , suck it, stop sucking it, put it 
% in the left pocket of my greatcoat, the one empty (of stones). I take 
% a second stone from the right pocket of my greatcoat, suck it put it 
% in the left pocket of my greatcoat. And so on until the right pocket 
% of my greatcoat is empty (apart from its usual and casual contents) 
% and the six stones I have just sucked, one after the other, are 
% all in the left pocket of my greatcoat. Pausing then, and 
% concentrating, so as not to make a balls of it, I transfer to the 
% right pocket of my greatcoat, in which there are no stones left, the 
% five stones in the right pocket of my trousers, which I replace by 
% the five stones in the left pocket of my trousers, which I replace by 
% the six stones in the left pocket of my greatcoat. At this stage 
% then the left pocket of my greatcoat is again empty of stones, while 
% the right pocket of my greatcoat is again supplied, and in the 
% right way, that is to say with other stones than those I have just 
% sucked. These other stones I then begin to suck, one after the other, 
% and to transfer as I go along to the left pocket of my greatcoat, 
% being absolutely certain, as far as one can be in an affair of this 
% kind, that I am not sucking the same stones as a moment before, but 
% others. And when the right pocket of my greatcoat is again empty (of 
% stones), and the five I have just sucked are all without exception 
% in the left pocket of my greatcoat, then I proceed to the same 
% redistribution as a moment before, or a similar redistribution, 
% that is to say I transfer to the right pocket of my greatcoat, now 
% again available, the five stones in the right pocket of my trousers, 
% which I replace by the six stones in the left pocket of my trousers, 
% which I replace by the five stones in the left pocket of my 
% greatcoat. And there I am ready to begin again. Do I have to go on?" 
% 
%                                       Samuel Beckett, 'Molloy' (1955) 
% 
% The third circulation method avoids the possibility that during a cycle
% of 16 moves (one for each stone), some stones will be sucked multiple
% times and others will not be sucked at all. This can be verified by the
% command line output. 
% 
% Reference: http://www.samuel-beckett.net/molloy1.html 

grtcoatL = [];                    % Great Coat Pocket (Left)
grtcoatR = [ 1  2  3   4   5  6]; % Great Coat Pocket (Right)
trouserL = [ 7  8  9  10  11];    % Trouser Pocket (Left)
trouserR = [ 12 13 14 15  16];    % Trouser Pocket (Right) 

mouth = [];  

% Move stones in batches between pockets 
for i = 1:3 
    
    % Randomly pick the order in which stones will be sucked
    picks = randperm(length(grtcoatR)); 
    
    % Cycle through stones in Great Coat (Right) 
    for j = 1:length(grtcoatR) 

        % Suck all GR stones in the random order 
        mouth = grtcoatR(picks(j)); 
        
        % Show us which stone is being sucked 
        disp(['Sucking Stone ' num2str(mouth)]); 
    
    end 

    % Move all stones from Great Coat (Right) to Great Coat (Left) 
    grtcoatL = grtcoatR;
    
    % Move all stones from Trouser (Right) to Great Coat (Right) 
    grtcoatR = trouserR; 
    
    % Move all stones from  Trouser (Left) to  Trouser (Right)
    trouserR = trouserL;
    
    % Move all stones from  Great Coat (Left) to  Trouser (Left)
    trouserL = grtcoatL;
    grtcoatL = []; 

end 

%#ok<*NASGU>

end 



