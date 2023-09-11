bets = {'Big', 'Small', 'Odd', 'Even',};
payouts = [2, 2, 2, 2];

balance = 100;

while balance > 0
    fprintf("Your current balance is: $%d\n" ,balance);
    
    betIndex = input('Place your bet (1 = Big, 2 = Small, 3 = Odd, 4 = Even): ');
    betAmount = input('Enter your bet amount: ');
    
    if betAmount > balance
        disp('You do not have enough balance to place this bet.');
        continue;
    else 
        disp('continue to play!');
    end 
end 