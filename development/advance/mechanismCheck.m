bets = {'Pair', 'Triple' ,'Triple(random)', 'Combination of 2'};
payouts = [11, 181, 31, 6];

balance = 30;

%dice = randi([1, 6], [1, 3]);
    dice = [1 2 3];
    total = sum(dice);
betIndex = input('(4 = Combination of 2 ): ');

if strcmp(bets{betIndex}, 'Combination of 2')
    c1 = input('guess the first number in combination: ');
    c2 = input('guess the second number(not the same with the first number) in combination: ');
    if c1 == c2 || c1 > 6  || c2 > 6 || c1 < 1 || c2 < 1 
        disp('you enter invalid number or same numbers ');
    end
end



if strcmp(bets{betIndex}, 'Combination of 2') && dice(1) == c1 && dice(2) == c2 ||dice(1) == c2 && dice(2) == c1 ||dice(2) == c1 && dice(3)==c2||dice(2) == c2 && dice(3) == c1 ||dice(1) == c1 && dice(3)==c2||dice(1) == c2 && dice(3) == c1
        winnings = betAmount * payouts(betIndex);
        fprintf('You won $%.2f!',winnings);
        balance = balance + winnings;
    else
        disp('You lost your bet.');
end