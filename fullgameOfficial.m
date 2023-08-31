clc;
% start game

% Declaration: All the codes below are written by me, with some of exception
% marked by ********************* between those codes
disp('Welcome to Sic Bo game!');

while true
    clc;
    % show user menu with several option
    navigate = input('MAIN MENU \n(1) Play! \n(2) Guideline \n(3) Development Diary of SicBo \n(4) Exit \nNavigate: ');

    if navigate == 1
        % enter the game
        playSicBoGame(); 
    elseif navigate == 2
        % display the description and guideline
        while true
            clc;
            fprintf('** Sic Bo Gameplay Guide **\n\n');

            fprintf('1. Objective:\n');
            fprintf('   Sic Bo is a dice game where players bet on the outcome of three dice rolls. \n   The goal is to predict various dice combinations and numbers to win payouts.\n\n');

            fprintf('2. Betting Options:\n');
            fprintf('   - Big: Bet that the sum of the three dice will be between 11 and 17 (excluding triples).\n');
            fprintf('   - Small: Bet that the sum of the three dice will be between 4 and 10 (excluding triples).\n');
            fprintf('   - Odd: Bet that the sum of the three dice will be an odd number.\n');
            fprintf('   - Even: Bet that the sum of the three dice will be an even number.\n');
            fprintf('   - Single Number: Bet on a specific number from 1 to 6. \n   If one, two, or all three dice show the chosen number, you win.\n');
            fprintf('   - Double: Bet that at least two of the dice will show a specific pair of numbers \n   (e.g., two 2s or two 5s).\n');
            fprintf('   - Triple: Bet that all three dice will show the same specific number \n   (e.g., three 4s).\n');
            fprintf('   - Auto Triple: Bet that all three dice will show the same number, regardless of the specific number.\n');
            fprintf('   - Combination of 2: Bet that two specific numbers will appear on any two of the three dice rolled.\n');
            fprintf('   - Three Number Total: Bet on the specific total sum of the three dice. Payouts vary based on the chosen total.\n\n');

            fprintf('3. Gameplay:\n');
            fprintf('   - Start with a designated balance (e.g., $100).\n');
            fprintf('   - Choose between "Basic" (higher chance, lower payout) and "Advance" (lower chance, higher payout) game modes.\n');
            fprintf('   - Place bets on the chosen betting options by specifying the bet amount and any required inputs \n   (numbers, pairs, etc.).\n');
            fprintf('   - Roll the three dice to determine the outcome.\n');
            fprintf('   - Payouts are based on the chosen betting options and the dice roll result.\n\n');

            fprintf('4. Winning and Payouts:\n');
            fprintf('   - Each betting option has specific odds and potential payouts.\n');
            fprintf('   - Odds (e.g., 1:5) represent the ratio of the bet amount to the potential winnings.\n');
            fprintf('   - If your bet wins, you''ll receive your bet amount multiplied by the odds.\n');
            fprintf('   - If you lose, your bet amount is subtracted from your balance.\n\n');

            fprintf('5. Repeat and Quit:\n');
            fprintf('   - After each round, you can choose to play again or exit the game.\n');
            fprintf('   - If your balance reaches zero, the game ends.\n');
            fprintf('   - Feel free to explore different betting options and strategies to maximize your winnings.\n\n');

            fprintf('Remember, Sic Bo is a game of chance, so while strategies can enhance your experience, outcomes are ultimately random. \nEnjoy the thrill of predicting dice combinations and testing your luck!\n');

            goBack = input('Press (0) to go back to Main Menu: ');
            while goBack ~= 0 % prevent invalid input
                disp('Invalid choice.');
                goBack = input('Press (0) to go back to Main Menu: ');
            end
            break; % Exit the description loop and return to the main menu
        end
    elseif navigate == 3
        % display the development
        clc
        while true
            fprintf('**Base Game (base.m):**\n\n');
            fprintf('- Implement basic game modes: Big, Small, Odd, Even.\n');
            fprintf('- Set all payouts to 1:1 ratio.\n');
            fprintf('- Test the four game cases thoroughly.\n');
            fprintf('- Verify balance calculation accuracy.\n');
            fprintf('- Ensure randomized dice roll mechanism is reliable.\n');
            fprintf('- Store payout values based on the position of bet choices.\n');
            fprintf('- Create a loop for repeated gameplay.\n');
            fprintf('- Integrate an option to quit the game.\n');
            fprintf('- Utilize the sum of dice rolls as the core gameplay mechanism.\n\n');

            fprintf('**Advance Game (advance.m):**\n\n');
            fprintf('- Introduce more diverse and higher payout options.\n');
            fprintf('- Include Triple, Pair, Random Triple, and Combination bets.\n');
            fprintf('- Allow user input for desired values, impacting payouts.\n');
            fprintf('- Implement input validation to prevent invalid or rule-breaking inputs.\n');
            fprintf('- Test various outcomes for all four cases.\n');
            fprintf('- Develop a graphical representation of dice rolls (advance_with_dice.m).\n');
            fprintf('- Incorporate a function for displaying dice rolls as a graph.\n');
            fprintf('- Display real-time random numbers as dice values in the graph.\n');
            fprintf('- Strategically integrate dice roll simulation within the code.\n');
            fprintf('- Enhance the visual simulation of dice rolls:\n');
            fprintf('  - Utilize external code to transform the graph into dice shapes.\n');
            fprintf('  - Label each die and display their corresponding values.\n\n');

            fprintf('**Full Game Integration (menuTest.m):**\n\n');
            fprintf('- Merge both basic and advance game modes into a single program.\n');
            fprintf('- Refactor code to eliminate redundancy and ensure valid variable usage.\n');
            fprintf('- Introduce two additional bet choices: Total of Three and Single Number.\n');
            fprintf('- Research and design payout structures for the new bet choices.\n');
            fprintf('- Allow user input for desired values, affecting bet payouts.\n');
            fprintf('- Implement input validation to ensure adherence to rules.\n');
            fprintf('- Segregate the two game modes (basic and advance) effectively.\n');
            fprintf('- Include the total figure beside the three dice using external code.\n');
            fprintf('- Incorporate a menu for playing and exiting the game.\n');
            fprintf('- Organize the game logic into encapsulated functions.\n\n');

            fprintf('**Review and Refactor (fullgame.m):**\n\n');
            fprintf('- Adjust prompt layout for better readability on small screens.\n');
            fprintf('- Enhance prompts to guide users and prevent incorrect inputs.\n');
            fprintf('- Refactor variable names according to naming conventions.\n');
            fprintf('- Add comprehensive comments to explain code sections.\n');
            fprintf('- Integrate an option for displaying the game''s description in the menu.\n');
            fprintf('- Implement the "clc" command to maintain a neat in-game experience.\n');
            fprintf('- Enhance user experience by addressing incorrect inputs.\n');
            fprintf('- Convert input validations using "while" loops for improved user interaction.\n');     
            goBack = input('Press (0) to go back to Main Menu: ');
            while goBack ~= 0 % prevent invalid input
                disp('Invalid choice.');
                goBack = input('Press (0) to go back to Main Menu: ');
            end
            break; % Exit the description loop and return to the main menu
        end
    elseif navigate == 4
        clc;
        % exit the game
        disp('Exiting Sic Bo game. Goodbye!');
        break;
    end
end

% running game logic and mechanism in function when called
function playSicBoGame()

% initialize cell contain 10 bet choices
bets = {'Big', 'Small', 'Odd', 'Even','Single Number', 'Double', 'Triple' ,'Auto Triple', 'Combination of 2', 'Three Number Total'};
% initialize odds array with position follow position of their own bet
% choices
odds = [2, 2, 2, 2, 0, 11, 181, 31, 7, 0];

% start game with 100$
balance = 100;

% game will start and continue if user still has money > 0
while balance > 0
    clc;

    % show current balance of user
    fprintf("Your current balance is: $%.2f\n", balance);

    % prompt user to choose mode of SicBo and describe briefly each mode
    betMode = input('Choose mode of SicBo: \n(1) Basic (High chance, Low payout) \n(2) Advance (Low chance, High payout) \nEnter mode: ');
    
    while betMode ~= 1 && betMode ~= 2 % prevent invalid inputs
    clc;
    betMode = input('Invalid mode. Please choose mode of SicBo: \n(1) Basic (High chance, Low payout) \n(2) Advance (Low chance, High payout) \nEnter mode: ');
    end

    clc;

    if betMode == 1
        % prompt user to choose a bet option for Basic mode
        fprintf('Place your bet:\n');
        fprintf('(1) Big (1:1)\n');
        fprintf('(2) Small (1:1)\n');
        fprintf('(3) Odd (1:1)\n');
        fprintf('(4) Even (1:1)\n');
        fprintf('(5) Single Number (1:dices having that number)\n');
        betIndex = input('Enter bet option: ');
    
        % prevent invalid inputs
        while betIndex > 5 || betIndex < 1 || mod(betIndex, 1) ~= 0
            clc;
            fprintf('Place your bet:\n');
            fprintf('(1) Big (1:1)\n');
            fprintf('(2) Small (1:1)\n');
            fprintf('(3) Odd (1:1)\n');
            fprintf('(4) Even (1:1)\n');
            fprintf('(5) Single Number (1:dices having that number)\n');
            fprintf('Invalid bet option. Please choose a valid option.\n');
            betIndex = input('Enter bet option: ');
        end
    elseif betMode == 2
        % prompt user to choose a bet option for Advance mode
        fprintf('Place your bet:\n');
        fprintf('(6) Double (1:10)\n');
        fprintf('(7) Triple (1:180)\n');
        fprintf('(8) Auto Triple (1:30)\n');
        fprintf('(9) Combination of 2 (1:6)\n');
        fprintf('(10) Three Number Total (choose for selecting odds)\n');
        betIndex = input('Enter bet option: ');

        % prevent invalid inputs
        while betIndex > 10 || betIndex < 6 || mod(betIndex, 1) ~= 0
            clc;
            fprintf('Invalid bet option. Please choose a valid option.\n');
            fprintf('Place your bet:\n');
            fprintf('(6) Double (1:10)\n');
            fprintf('(7) Triple (1:180)\n');
            fprintf('(8) Auto Triple (1:30)\n');
            fprintf('(9) Combination of 2 (1:6)\n');
            fprintf('(10) Three Number Total (choose for selecting odds)\n');
            betIndex = input('Enter bet option: ');
        end
    end

    % prompt user to bet money
    betAmount = input(sprintf('Your current balance is: $%.2f. Enter your bet amount: ',balance));
    
    %check if user's balance is enough to bet that amount of money
    while betAmount > balance
        disp('You do not have enough balance to place this bet.');
        betAmount = input(sprintf('Your current balance is: $%.2f. Enter your bet amount again: ',balance));
    end

    % prompt user to input bet content for bet choice they chose
    if strcmp(bets{betIndex}, 'Double') % for Double bet
        double = input('guess the double numbers from 1 to 6: ');
        while double > 6 || double < 1 || mod(double, 1) ~= 0
            disp('you enter invalid number '); % prevent invalid inputs
            double = input('Again, guess the double numbers from 1 to 6: ');
        end
    elseif strcmp(bets{betIndex}, 'Triple') % for Triple bet
        triple = input('guess the triple numbers from 1 to 6: ');
        while triple > 6 || triple < 1 || mod(triple, 1) ~= 0
            disp('you enter invalid number '); % prevent invalid inputs
            triple = input('Again, guess the triple numbers from 1 to 6: ');
        end
    elseif strcmp(bets{betIndex}, 'Combination of 2') % for Combination bet
        guess1 = input('guess the first number in combination: ');
        guess2 = input('guess the second number in combination(not the same): ');
        while guess1 == guess2 || guess1 > 6  || guess2 > 6 || guess1 < 1 || guess2 < 1 || mod(guess1, 1) ~= 0 || mod(guess2, 1) ~= 0
            disp('you enter invalid numbers or same numbers'); % prevent invalid inputs
            guess1 = input('Again, guess the first number in combination: ');
            guess2 = input('Again, guess the second number in combination(not the same): ');
        end
    elseif strcmp(bets{betIndex}, 'Three Number Total') % for Total bet
        fprintf('Below are odds of each total number:\n');
        fprintf('4 or 17 (1:60)\n');
        fprintf('5 or 16 (1:30)\n');
        fprintf('6 or 15 (1:18)\n');
        fprintf('7 or 14 (1:12)\n');
        fprintf('8 or 13 (1:8)\n');
        fprintf('9 or 10 or 11 or 12 (1:6)\n');
        totalGuess = input('guess the total number of three dice(from 4 to 17): ');
        while totalGuess < 4 || totalGuess > 17 || mod(totalGuess, 1) ~= 0
            disp('you enter invalid number '); % prevent invalid inputs
            totalGuess = input('Again, guess the total number of three dice(from 4 to 17): ');
        end
    elseif strcmp(bets{betIndex}, 'Single Number') % for Single bet
        single = input('guess the single number from 1 to 6: ');
        while single > 6 || single < 1 || mod(single, 1) ~= 0
            disp('you enter invalid number '); % prevent invalid inputs
            single = input('Again, guess the single number from 1 to 6: ');
        end
    end
    
    % roll three dice by using randi function
    dice = randi([1, 6], [1, 3]);
    
    % calculate three dice's sum
    total = sum(dice);
    
    %display the demonstration of three dices
    
    clf; % clear figure to prevent overlapped figures display
    % create and display the images of the three dice
    
%**************************************************************************
%- These code is ideas partly generated by chatGPT to demonstrate one dice
%- Structure is borrowed from chatGPT and the configuration is adjusted
%by myself to appear 3 dices
    for i = 1:length(dice)
    subplot(1, length(dice) + 1, i);
    imshow(createDiceImage(dice(i)));
    title(sprintf('Dice %d - %d ', i, dice(i)));
    end
%- These code is ideas partly generated by chatGPT to demonstrate the total
%in the same display with 3 dices
%- Structure is borrowed from chatGPT and the configuration is adjusted by
%myself such as formatting
    % display the total of the dice roll
    totalText = sprintf('Total: %d', total);
    totalSubplot = subplot(1, length(dice) + 1, length(dice) + 1);
    text(0.5, 0.5, totalText, 'HorizontalAlignment', 'center', 'FontSize', 20);
    axis(totalSubplot, 'off');
%**************************************************************************
    
    
    % pay for the bet 
    balance = balance - betAmount;
    
    % start to fit the bet choice to the condition for winning

    % Pair condition
    if strcmp(bets{betIndex}, 'Pair') && ((dice(1) == double && dice(2) == double) || (dice(2) == double && dice(3) == double) || (dice(1) == double && dice(3) == double) )
        winnings = betAmount * odds(betIndex);
        fprintf('You won $%.2f, check result in poped up window!\n',winnings);
        balance = balance + winnings;

    % Triple condition
    elseif strcmp(bets{betIndex}, 'Triple') && (dice(1) == triple && dice(2) == triple && dice(3) == triple)
        winnings = betAmount * odds(betIndex);y
        fprintf('You won $%.2f, check result in poped up window!\n',winnings);
        balance = balance + winnings;

    % Auto Triple condition
    elseif strcmp(bets{betIndex}, 'Auto Triple') && (dice(1) == dice(2) && dice(2) == dice(3) && dice(3) == dice(1))
        winnings = betAmount * odds(betIndex);
        fprintf('You won $%.2f, check result in poped up window!\n',winnings);
        balance = balance + winnings;

    % Combnation of 2 condition
    elseif strcmp(bets{betIndex}, 'Combination of 2') && (dice(1) == guess1 && dice(2) == guess2 ||dice(1) == guess2 && dice(2) == guess1 ||dice(2) == guess1 && dice(3)==guess2||dice(2) == guess2 && dice(3) == guess1 ||dice(1) == guess1 && dice(3)==guess2||dice(1) == guess2 && dice(3) == guess1)
        winnings = betAmount * odds(betIndex);
        fprintf('You won $%.2f, check result in poped up window!\n',winnings);
        balance = balance + winnings;

    % Big condition
    elseif strcmp(bets{betIndex}, 'Big') && (total >= 11 && total <= 17)
        winnings = betAmount * odds(betIndex);
        fprintf('You won $%.2f, check result in poped up window!\n',winnings);
        balance = balance + winnings;

    % Small condition
    elseif strcmp(bets{betIndex}, 'Small') && (total >= 4 && total <= 10)
        winnings = betAmount * odds(betIndex);
        fprintf('You won $%.2f, check result in poped up window!\n',winnings);
        balance = balance + winnings;

    % Odd condition
    elseif strcmp(bets{betIndex}, 'Odd') && mod(total, 2) == 1
        winnings = betAmount * odds(betIndex);
        fprintf('You won $%.2f, check result in poped up window!\n',winnings);
        balance = balance + winnings;

    % Even condition
    elseif strcmp(bets{betIndex}, 'Even') && mod(total, 2) == 0
        winnings = betAmount * odds(betIndex);
        fprintf('You won $%.2f, check result in poped up window!\n',winnings);
        balance = balance + winnings;

    % Three Number Total conditions
        % for total = 4 or 17
    elseif strcmp(bets{betIndex}, 'Three Number Total') && (total == 4 && total == totalGuess || total == 17 && total == totalGuess)
        winnings = betAmount * 61;
        fprintf('You won $%.2f, check result in poped up window!\n',winnings);
        balance = balance + winnings;

        %for total = 5 or 16
    elseif strcmp(bets{betIndex}, 'Three Number Total') && (total == 5 && total == totalGuess || total == 16 && total == totalGuess)
        winnings = betAmount * 31;
        fprintf('You won $%.2f, check result in poped up window!\n',winnings);
        balance = balance + winnings;

        %for total = 6 or 15
    elseif strcmp(bets{betIndex}, 'Three Number Total') && (total == 6 && total == totalGuess || total == 15 && total == totalGuess)
        winnings = betAmount * 19;
        fprintf('You won $%.2f, check result in poped up window!\n',winnings);
        balance = balance + winnings;

        %for total = 7 or 14
    elseif strcmp(bets{betIndex}, 'Three Number Total') && (total == 7 && total == totalGuess || total == 14 && total == totalGuess)
        winnings = betAmount * 13;
        fprintf('You won $%.2f, check result in poped up window!\n',winnings);
        balance = balance + winnings;

        %for total = 8 or 13
    elseif strcmp(bets{betIndex}, 'Three Number Total') && (total == 8 && total == totalGuess || total == 13 && total == totalGuess)
        winnings = betAmount * 9;
        fprintf('You won $%.2f, check result in poped up window!\n',winnings);
        balance = balance + winnings;

        %for total = 9 or 10 or 11 or 12
    elseif strcmp(bets{betIndex}, 'Three Number Total') && (total == 9 && total == totalGuess || total == 10 && total == totalGuess|| total == 11 && total == totalGuess || total == 12 && total == totalGuess)
        winnings = betAmount * 7;
        fprintf('You won $%.2f, check result in poped up window!\n',winnings);
        balance = balance + winnings;
    
    % Single Number condition
        %for 1 dice
    elseif strcmp(bets{betIndex}, 'Single Number') && (dice(1) == single || dice(2) == single || dice(3) == single)
        winnings = betAmount * 2;
        fprintf('You won $%.2f, check result in poped up window!\n',winnings);
        balance = balance + winnings;
        %for 2 dices
    elseif strcmp(bets{betIndex}, 'Single Number') && ((dice(1) == single && dice(2) == single) || (dice(2) == single && dice(3) == single) || (dice(1) == single && dice(3) == single) )
        winnings = betAmount * 3;
        fprintf('You won $%.2f, check result in poped up window!\n',winnings);
        balance = balance + winnings;

        %for 3 dices
    elseif strcmp(bets{betIndex}, 'Single Number') && (dice(1) == single && dice(2) == single && dice(3) == single)
        winnings = betAmount * 4;
        fprintf('You won $%.2f, check result in poped up window!\n',winnings);
        balance = balance + winnings;

    % lose if there is no match condition
    else
        disp('You lost your bet, check result in poped up window!');
    end
    fprintf('Your balance is: $%.2f\n',balance);

    % prompt user to decide to play again or not
    if balance == 0
        disp('You Lose!');
        feedback = input("Thank you for playing game. Please give me your feedback about the game!: ","s");
        break;
    end
    
    playAgain = input('Do you want to play again? (y/n): ', 's');
    
    % break out of the while loop if press n 
    if strcmp(playAgain, 'n')
        fprintf('Your final balance is: $%.2f\n',balance);
        feedback = input("Thank you for playing game. Please give me your feedback about the game!: ","s");
        break;
    end

    clc;

end

%- These code is ideas partly generated by chatGPT to demonstrate one dice,
%with customization for personal preference

%function for display demonstration of dice
    function dieImage = createDiceImage(v)
    % create a blank image with white background
    dieImage = ones(100, 100);

    % draw the dots
        switch v
            case 1
                dieImage(45:55,45:55) = 0; % set 1 dot to black
            case 2
                dieImage(25:35,25:35) = 0; % set 2 dots to black
                dieImage(65:75,65:75) = 0;
            case 3
                dieImage(25:35,25:35) = 0; % set 3 dots to black
                dieImage(45:55,45:55) = 0;
                dieImage(65:75,65:75) = 0;
            case 4
                dieImage(25:35,25:35) = 0; % set 4 dots to black
                dieImage(25:35,65:75) = 0;
                dieImage(65:75,25:35) = 0;
    
                dieImage(65:75,65:75) = 0;
            case 5
                dieImage(25:35,25:35) = 0; % set 5 dots to black
                dieImage(25:35,65:75) = 0;
                dieImage(45:55,45:55) = 0;
                dieImage(65:75,25:35) = 0;
                dieImage(65:75,65:75) = 0;
            case 6
                dieImage(25:35,25:35) = 0; % set 6 dots to black
                dieImage(25:35,45:55) = 0;
                dieImage(25:35,65:75) = 0;
                dieImage(65:75,25:35) = 0;
                dieImage(65:75,45:55) = 0;
                dieImage(65:75,65:75) = 0;
        end
    end

end
