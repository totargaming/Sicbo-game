bets = {'Big', 'Small', 'Odd', 'Even',};
payouts = [2, 2, 2, 2];

betIndex = input('Place your bet (1 = Big, 2 = Small, 3 = Odd, 4 = Even): ');

balance = 20;
dice = [3, 3 ,3];
    
total = sum(dice);
if strcmp(bets{betIndex}, 'Big') && total >= 11 && total <= 17
        winnings = betAmount * payouts(betIndex);
        fprintf('You won $%.2f!\n',winnings);
        balance = balance + winnings;
    elseif strcmp(bets{betIndex}, 'Small') && total >= 4 && total <= 10
        winnings = betAmount * payouts(betIndex);
        fprintf('You won $%.2f!\n',winnings);
        balance = balance + winnings;
    elseif strcmp(bets{betIndex}, 'Odd') && mod(total, 2) == 1
        winnings = betAmount * payouts(betIndex);
        fprintf('You won $%.2f!\n',winnings);
        balance = balance + winnings;
    elseif strcmp(bets{betIndex}, 'Even') && mod(total, 2) == 0
        winnings = betAmount * payouts(betIndex);
        fprintf('You won $%.2f!\n',winnings);
        balance = balance + winnings;
    else
        disp('You lost your bet.');
end