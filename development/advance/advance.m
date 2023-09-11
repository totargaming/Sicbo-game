bets = {'Pair', 'Triple' ,'Triple(random)', 'Combination of 2'};
payouts = [11, 181, 31, 6];

balance = 100;

while balance > 0
    fprintf("Your current balance is: $%.2f\n" ,balance);
  
    betIndex = input('Place your bet (1 = Pair, 2 = Triple , 3 = Triple(random), 4 = Combination of 2 ): ');
    betAmount = input('Enter your bet amount: ');
    
    if betAmount > balance
        disp('You do not have enough balance to place this bet.');
        continue;
    end

    %dice = randi([1, 6], [1, 3]);
    dice = [1 2 3];
    total = sum(dice);
    
    if strcmp(bets{betIndex}, 'Pair')
        pair = input('guess the pair numbers from 1 to 6: ');
        if pair > 6 || pair < 1
            disp('you enter invalid number ');
            continue;
        end
    elseif strcmp(bets{betIndex}, 'Triple')
        triple = input('guess the triple numbers from 1 to 6: ');
        if triple > 6 || triple < 1
            disp('you enter invalid number ');
            continue;
        end
    elseif strcmp(bets{betIndex}, 'Combination of 2')
        c1 = input('guess the first number in combination: ');
        c2 = input('guess the second number(not the same with the first number) in combination: ');
        if c1 == c2 || c1 > 6  || c2 > 6 || c1 < 1 || c2 < 1 
            disp('you enter invalid number or same numbers ');
            continue;
        end
    end
    
    
    balance = balance - betAmount;
    
    
    if strcmp(bets{betIndex}, 'Pair') && ((dice(1) == pair && dice(2) == pair) || (dice(2) == pair && dice(3) == pair) || (dice(1) == pair && dice(3) == pair) )
        winnings = betAmount * payouts(betIndex);
        fprintf('You won $%.2f!',winnings);
        balance = balance + winnings;
    elseif strcmp(bets{betIndex}, 'Triple') && (dice(1) == triple && dice(2) == triple && dice(3) == triple)
        winnings = betAmount * payouts(betIndex);
        fprintf('You won $%.2f!',winnings);
        balance = balance + winnings;
    elseif strcmp(bets{betIndex}, 'Triple(random)') && (dice(1) == dice(2) && dice(2) == dice(3) && dice(3) == dice(1))
        winnings = betAmount * payouts(betIndex);
        fprintf('You won $%.2f!',winnings);
        balance = balance + winnings;
    elseif strcmp(bets{betIndex}, 'Combination of 2') && dice(1) == c1 && dice(2) == c2 ||dice(1) == c2 && dice(2) == c1 ||dice(2) == c1 && dice(3)==c2||dice(2) == c2 && dice(3) == c1 ||dice(1) == c1 && dice(3)==c2||dice(1) == c2 && dice(3) == c1
        winnings = betAmount * payouts(betIndex);
        fprintf('You won $%.2f!',winnings);
        balance = balance + winnings;
    else
        disp('You lost your bet.');
    end
    
    playAgain = input('Do you want to play again? (y/n): ', 's');
    
    if strcmp(playAgain, 'n')
        break;
    end
end

fprintf('Game over. Your final balance is: $%.2f',balance);