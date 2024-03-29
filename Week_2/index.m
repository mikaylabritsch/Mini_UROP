% Mini_UROP: Check for spelling mistakes!
% Mini_UROP: Skip Florida, run only your states!
% Mini_UROP: note that "for i=1:19" runs each state

for i=1:19
    % assign state information
    % -
    
    if i==1
        StateName = 'Alabama';
        StateAbbrev = 'AL';
        StateFIPS = '01';
    elseif i==2
        StateName = 'Connecticut';
        StateAbbrev = 'CT';
        StateFIPS = '09';
    elseif i==3
        StateName = 'Delaware';
        StateAbbrev = 'DE';
        StateFIPS = '10';
    elseif i==4
        StateName = 'DistrictofColumbia';
        StateAbbrev = 'DC';
        StateFIPS = '11';
    elseif i==5
        StateName = 'Florida';
        StateAbbrev = 'FL';
        StateFIPS = '12';
    elseif i==6
        StateName = 'Georgia';
        StateAbbrev = 'GA';
        StateFIPS = '13';
    elseif i==7
        StateName = 'Louisiana';
        StateAbbrev = 'LA';
        StateFIPS = '22';
    elseif i==8
        StateName = 'Maine';
        StateAbbrev = 'ME';
        StateFIPS = '23';
    elseif i==9
        StateName = 'Maryland';
        StateAbbrev = 'MD';
        StateFIPS = '24';
    elseif i==10
        StateName = 'Massachusetts';
        StateAbbrev = 'MA';
        StateFIPS = '25';
    elseif i==11
        StateName = 'Mississippi';
        StateAbbrev = 'MS';
        StateFIPS = '28';
    elseif i==12
        StateName = 'NewHampshire';
        StateAbbrev = 'NH';
        StateFIPS = '33';
    elseif i==13
        StateName = 'NewJersey';
        StateAbbrev = 'NJ';
        StateFIPS = '34';
    elseif i==14
        StateName = 'NewYork';
        StateAbbrev = 'NY';
        StateFIPS = '36';
    elseif i==15
        StateName = 'NorthCarolina';
        StateAbbrev = 'NC';
        StateFIPS = '37';
    elseif i==16
        StateName = 'RhodeIsland';
        StateAbbrev = 'RI';
        StateFIPS = '44';
    elseif i==17
        StateName = 'SouthCarolina';
        StateAbbrev = 'SC';
        StateFIPS = '45';
    elseif i==18
        StateName = 'Texas';
        StateAbbrev = 'TX';
        StateFIPS = '48';
    elseif i==19
        StateName = 'Virginia';
        StateAbbrev = 'VA';
        StateFIPS = '51';
    end
    
    % compute and save building-specific drag coefficients
    % -
    
    LoadName = strcat(StateName,'.mat');
    load(LoadName);
    run(StateAbbrev,buildings);
    
end
