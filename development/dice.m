% Define a function to create an image of a single die

% Roll the three dice
dice = randi([1,6], [1,3]);

% Create and display the images of the three dice
for i = 1:length(dice)
    subplot(1,length(dice),i)
    imshow(createDieImage(dice(i)))
    title(['Die ', num2str(i), ' - ', num2str(dice(i))]);
end

% Display the total of the dice roll
disp(['Total:', num2str(sum(dice))])
function dieImage = createDieImage(v)
    % Create a blank image with black background
    dieImage = ones(100, 100);


    % draw the dots
    switch v
        case 1
            dieImage(45:55,45:55) = 0;  % set dot to black
        case 2
            dieImage(25:35,25:35) = 0;
            dieImage(65:75,65:75) = 0;
        case 3
            dieImage(25:35,25:35) = 0;
            dieImage(45:55,45:55) = 0;
            dieImage(65:75,65:75) = 0;
        case 4
            dieImage(25:35,25:35) = 0;
            dieImage(25:35,65:75) = 0;
            dieImage(65:75,25:35) = 0;

            dieImage(65:75,65:75) = 0;
        case 5
            dieImage(25:35,25:35) = 0;
            dieImage(25:35,65:75) = 0;
            dieImage(45:55,45:55) = 0;
            dieImage(65:75,25:35) = 0;
            dieImage(65:75,65:75) = 0;
        case 6
            dieImage(25:35,25:35) = 0;
            dieImage(25:35,45:55) = 0;
            dieImage(25:35,65:75) = 0;
            dieImage(65:75,25:35) = 0;
            dieImage(65:75,45:55) = 0;
            dieImage(65:75,65:75) = 0;
    end
end
