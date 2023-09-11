
disp('Welcome to Sic Bo game!');

while true
    navigate = input('MAIN MENU \n(1) Play! \n(2) Description & Guideline \n(3) Exit \nNavigate: ');

    if navigate == 1
        playSicBoGame();
    elseif navigate == 2
        while true
            disp('--- Description & Guideline ---');
            fprintf('Sic Bo ');
            fprintf('choice'); 
            fprintf('\n');
            
            goBack = input('Press (0) to go back ');
            if goBack == 0
                break; 
            else
                disp('Invalid number');
            end
        end
    elseif navigate == 3
        disp('Exiting Sic Bo game. Goodbye!');
        break;
    else
        disp('Invalid choice. Please choose a valid option.');
    end
end
function playSicBoGame()
% initialize cell contain 10 bet choices
bets = {'Big', 'Small', 'Odd', 'Even','Single Number', 'Double', 'Triple' ,'Auto Triple', 'Combination of 2', 'Three Number Total'};
% initialize odds array with position follow position of their own bet
% choices
odds = [2, 2, 2, 2, 0, 11, 181, 31, 7, 0];

% start game with 100$
balance = 100;

% game will start if user still has money > 0
while balance > 0
    % show current balance of user
    fprintf("Your current balance is: $%.2f\n" ,balance);


    % prompt user to choose mode of SicBo and describe briefly each mode
    betMode = input('Choose mode of SicBo: \n(1) Basic(High chance, Low payout) \n(2) Advance(Low chance, High payout) \nEnter mode: ');
    if betMode == 1
        % promt user to choose bet choice of SicBo and show their odds
        betIndex = input('Place your bet: \n(1) Big(1:1) \n(2) Small(1:1) \n(3) Odd(1:1) \n(4) Even(1:1) \n(5) Single Number(1:dices having that number) \nEnter bet option: ');
        % prevent invalid inputs
        if betIndex > 5 || betIndex < 0
            disp('You enter invalid bet option!');
            continue;
        end
    elseif betMode == 2
        % promt user to choose bet choice of SicBo and show their odds
        betIndex = input('Place your bet: \n6 = Double(1:10) \n7 = Triple(1:180) \n8 = Auto Triple(1:30) \n9 = Combination of 2(1:6) \n10 = Three Number Total(choose for selecting odds) \nEnter bet option: ');
        % prevent invalid inputs
        if betIndex > 10 || betIndex < 6
            disp('You enter invalid bet option!');
            continue;
        end
    % prevent invalid inputs
    else 
        disp('There is only 2 mode, try again!');
        continue;
    end


    % prompt user to bet money
    betAmount = input('Enter your bet amount: ');
    
    %check if user's balance is enough to bet that amount of money
    if betAmount > balance
        disp('You do not have enough balance to place this bet.');
        continue;
    end

    % prompt user to input bet content for bet choice they chose
    if strcmp(bets{betIndex}, 'Double') % for Double bet
        double = input('guess the double numbers from 1 to 6: ');
        if double > 6 || double < 1
            disp('you enter invalid number '); % prevent invalid inputs
            continue;
        end
    elseif strcmp(bets{betIndex}, 'Triple') % for Triple bet
        triple = input('guess the triple numbers from 1 to 6: ');
        if triple > 6 || triple < 1
            disp('you enter invalid number '); % prevent invalid inputs
            continue;
        end
    elseif strcmp(bets{betIndex}, 'Combination of 2') % for Combination bet
        guess1 = input('guess the first number in combination: ');
        guess2 = input('guess the second numberin combination(not the same): ');
        if guess1 == guess2 || guess1 > 6  || guess2 > 6 || guess1 < 1 || guess2 < 1 
            disp('you enter invalid number or same numbers'); % prevent invalid inputs
            continue;
        end
    elseif strcmp(bets{betIndex}, 'Three Number Total') % for Total bet
        fprintf('Below are odds of each total number: \n4 or 17 (1:60) \n5 or 16 (1:30) \n6 or 15 (1:18) \n7 or 14 (1:12) \n8 or 13 (1:8) \n9 or 10 or 11 or 12 (1:6) \n');
        totalGuess = input('guess the total number of three dice(from 4 to 17): ');
        if totalGuess < 4 || totalGuess > 17
            disp('you enter invalid number '); % prevent invalid inputs
            continue;
        end
    elseif strcmp(bets{betIndex}, 'Single Number') % for Single bet
        single = input('guess the single number from 1 to 6: ');
        if single > 6 || single < 1
            disp('you enter invalid number '); % prevent invalid inputs
            continue;
        end
    end
    
    % roll three dice by using randi function
    dice = randi([1, 6], [1, 3]);
    
    % calculate three dice's sum
    total = sum(dice);
    
    %display the demonstration of three dices
    
    clf; % clear figure to prevent overlapped figures display
    % create and display the images of the three dice
    for i = 1:numel(dice)
    subplot(1, numel(dice) + 1, i);
    imshow(createDiceImage(dice(i)));
    title(sprintf('Dice %d - %d ', i, dice(i)));
    end

    % display the total of the dice roll
    totalText = sprintf('Total: %d', total);
    totalSubplot = subplot(1, numel(dice) + 1, numel(dice) + 1);
    text(0.5, 0.5, totalText, 'HorizontalAlignment', 'center', 'FontSize', 14);
    axis(totalSubplot, 'off');
    
    
    % pay for the bet 
    balance = balance - betAmount;
    
    % start to fit the bet choice to the condition for winning

    % Pair condition
    if strcmp(bets{betIndex}, 'Pair') && ((dice(1) == double && dice(2) == double) || (dice(2) == double && dice(3) == double) || (dice(1) == double && dice(3) == double) )
        winnings = betAmount * odds(betIndex);
        fprintf('You won $%.2f!\n',winnings);
        balance = balance + winnings;

    % Triple condition
    elseif strcmp(bets{betIndex}, 'Triple') && (dice(1) == triple && dice(2) == triple && dice(3) == triple)
        winnings = betAmount * odds(betIndex);y
        fprintf('You won $%.2f!\n',winnings);
        balance = balance + winnings;

    % Auto Triple condition
    elseif strcmp(bets{betIndex}, 'Auto Triple') && (dice(1) == dice(2) && dice(2) == dice(3) && dice(3) == dice(1))
        winnings = betAmount * odds(betIndex);
        fprintf('You won $%.2f!\n',winnings);
        balance = balance + winnings;

    % Combnation of 2 condition
    elseif strcmp(bets{betIndex}, 'Combination of 2') && (dice(1) == guess1 && dice(2) == guess2 ||dice(1) == guess2 && dice(2) == guess1 ||dice(2) == guess1 && dice(3)==guess2||dice(2) == guess2 && dice(3) == guess1 ||dice(1) == guess1 && dice(3)==guess2||dice(1) == guess2 && dice(3) == guess1)
        winnings = betAmount * odds(betIndex);
        fprintf('You won $%.2f!\n',winnings);
        balance = balance + winnings;

    % Big condition
    elseif strcmp(bets{betIndex}, 'Big') && (total >= 11 && total <= 17)
        winnings = betAmount * odds(betIndex);
        fprintf('You won $%.2f!\n',winnings);
        balance = balance + winnings;

    % Small condition
    elseif strcmp(bets{betIndex}, 'Small') && (total >= 4 && total <= 10)
        winnings = betAmount * odds(betIndex);
        fprintf('You won $%.2f!\n',winnings);
        balance = balance + winnings;

    % Odd condition
    elseif strcmp(bets{betIndex}, 'Odd') && mod(total, 2) == 1
        winnings = betAmount * odds(betIndex);
        fprintf('You won $%.2f!\n',winnings);
        balance = balance + winnings;

    % Even condition
    elseif strcmp(bets{betIndex}, 'Even') && mod(total, 2) == 0
        winnings = betAmount * odds(betIndex);
        fprintf('You won $%.2f!\n',winnings);
        balance = balance + winnings;

    % Three Number Total conditions
        % for total = 4 or 17
    elseif strcmp(bets{betIndex}, 'Three Number Total') && (total == 4 && total == totalGuess || total == 17 && total == totalGuess)
        winnings = betAmount * 61;
        fprintf('You won $%.2f!\n',winnings);
        balance = balance + winnings;

        %for total = 5 or 16
    elseif strcmp(bets{betIndex}, 'Three Number Total') && (total == 5 && total == totalGuess || total == 16 && total == totalGuess)
        winnings = betAmount * 31;
        fprintf('You won $%.2f!\n',winnings);
        balance = balance + winnings;

        %for total = 6 or 15
    elseif strcmp(bets{betIndex}, 'Three Number Total') && (total == 6 && total == totalGuess || total == 15 && total == totalGuess)
        winnings = betAmount * 19;
        fprintf('You won $%.2f!\n',winnings);
        balance = balance + winnings;

        %for total = 7 or 14
    elseif strcmp(bets{betIndex}, 'Three Number Total') && (total == 7 && total == totalGuess || total == 14 && total == totalGuess)
        winnings = betAmount * 13;
        fprintf('You won $%.2f!\n',winnings);
        balance = balance + winnings;

        %for total = 8 or 13
    elseif strcmp(bets{betIndex}, 'Three Number Total') && (total == 8 && total == totalGuess || total == 13 && total == totalGuess)
        winnings = betAmount * 9;
        fprintf('You won $%.2f!\n',winnings);
        balance = balance + winnings;

        %for total = 9 or 10 or 11 or 12
    elseif strcmp(bets{betIndex}, 'Three Number Total') && (total == 9 && total == totalGuess || total == 10 && total == totalGuess|| total == 11 && total == totalGuess || total == 12 && total == totalGuess)
        winnings = betAmount * 7;
        fprintf('You won $%.2f!\n',winnings);
        balance = balance + winnings;
    
    % Single Number condition
        %for 1 dice
    elseif strcmp(bets{betIndex}, 'Single Number') && (dice(1) == single || dice(2) == single || dice(3) == single)
        winnings = betAmount * 2;
        fprintf('You won $%.2f!\n',winnings);

        %for 2 dices
    elseif strcmp(bets{betIndex}, 'Single Number') && ((dice(1) == single && dice(2) == single) || (dice(2) == single && dice(3) == single) || (dice(1) == single && dice(3) == single) )
        winnings = betAmount * 3;
        fprintf('You won $%.2f!\n',winnings);
        balance = balance + winnings;

        %for 3 dices
    elseif strcmp(bets{betIndex}, 'Single Number') && (dice(1) == single && dice(2) == single && dice(3) == single)
        winnings = betAmount * 4;
        fprintf('You won $%.2f!\n',winnings);
        balance = balance + winnings;

    % lose if there is no match condition
    else
        disp('You lost your bet.');
    end
    
    % prompt user to decide to play again or not
    playAgain = input('Do you want to play again? (y/n): ', 's');
    
    % break out of the while loop if press n 
    if strcmp(playAgain, 'n')
        break;
    end
end

% display the final balance after breakout of the while loop or user was
% broke
fprintf('Game over. Your final balance is: $%.2f\n',balance);


%function for display demonstration of three dices
function dieImage = createDiceImage(v)
    % Create a blank image with black background
    dieImage = zeros(100, 100, 3);

    % Draw the die border
    dieImage(1:10,:,:) = 1;  % Set border to white
    dieImage(end-9:end,:,:) = 1;
    dieImage(:,1:10,:) = 1;
    dieImage(:,end-9:end,:) = 1;

    % Draw the dots
    switch v
        case 1
            dieImage(45:55,45:55,:) = 1;  % Set dot to white
        case 2
            dieImage(25:35,25:35,:) = 1;
            dieImage(65:75,65:75,:) = 1;
        case 3
            dieImage(25:35,25:35,:) = 1;
            dieImage(45:55,45:55,:) = 1;
            dieImage(65:75,65:75,:) = 1;
        case 4
            dieImage(25:35,25:35,:) = 1;
            dieImage(25:35,65:75,:) = 1;
            dieImage(65:75,25:35,:) = 1;

            dieImage(65:75,65:75,:) = 1;
        case 5
            dieImage(25:35,25:35,:) = 1;
            dieImage(25:35,65:75,:) = 1;
            dieImage(45:55,45:55,:) = 1;
            dieImage(65:75,25:35,:) = 1;
            dieImage(65:75,65:75,:) = 1;
        case 6
            dieImage(25:35,25:35,:) = 1;
            dieImage(25:35,45:55,:) = 1;
            dieImage(25:35,65:75,:) = 1;
            dieImage(65:75,25:35,:) = 1;
            dieImage(65:75,45:55,:) = 1;
            dieImage(65:75,65:75,:) = 1;
    end
end
end