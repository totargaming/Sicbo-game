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
    end
    
    balance = balance - betAmount;
    
    dice = randi([1, 6], 1, 3);
    
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
    
    playAgain = input('Do you want to play again? (y/n): ', 's');
    
    if strcmp(playAgain, 'n')
        break;
    end
end

disp(['Game over. Your final balance is: $' num2str(balance)]);
