function plotsheet(transResult, rotResult, data, degree, carrier)
    %% x axis
    x0 = 10:2:80;
%     degree = 90; carrier = 0;
    %% Plot sheet metal translation error 
    figure;
    subplot(2,1,1)

    step = numel(transResult) / size(data, 1);
    
    % Initialize an array of cells to store the split subset
    num_subsets = floor(length(transResult) / step);
    subsets = cell(1, num_subsets);
    
    % Split data and convert to row vectors using for loops
    for i = 1:num_subsets
        start_idx = (i - 1) * step + 1;
        end_idx = i * step;
        subset = transResult(start_idx:end_idx);
        subset_row_vector = subset'; 
        subsets{i} = subset_row_vector;
    end

    for j = 1:numel(subsets)
        semilogy(x0, subsets{j}, '.-', 'MarkerSize', 8)
        hold on
    end

    grid on

    if degree == 0 && carrier == 1
        title("Four Sheet Metals High Carrier Effects Translation Error on X=[10..80] and Rotate 0 Degreee")
    elseif degree == 90 && carrier == 1
        title("Four Sheet Metals High Carrier Effects Translation Error on X=[10..80] and Rotate 90 Degreee")
    elseif degree == 0 && carrier == 0
        title("Four Sheet Metals Low Carrier Effects Translation Error on X=[10..80] and Rotate 0 Degreee")
    else
        title("Four Sheet Metals Low Carrier Effects Translation Error on X=[10..80] and Rotate 90 Degreee")
    end

    ylabel('Translation Error(m)') 
    xlabel('X Position(cm)') 
    legend('LC Steel', '304 SS', '6061 Al', 'Copper')

    %% Plot sheet metal rotation error
    subplot(2,1,2)
    
    % Initialize an array of cells to store the split subset
    num_subsetsRot = floor(length(rotResult) / step);
    subsetsRot = cell(1, num_subsetsRot);
    
    % Split data and convert to row vectors using for loops
    for i = 1:num_subsetsRot
        start_idx = (i - 1) * step + 1;
        end_idx = i * step;
        subsetRot = rotResult(start_idx:end_idx);
        subset_row_vector_rot = subsetRot'; 
        subsetsRot{i} = subset_row_vector_rot;
    end

    for j = 1:numel(subsetsRot)
        semilogy(x0, subsetsRot{j}, '.-', 'MarkerSize', 8)
        hold on
    end

    grid on

    if degree == 0 && carrier == 1
        title("Four Sheet Metals High Carrier Effects Rotation Error on X=[10..80] and Rotate 0 Degreee")
    elseif degree == 90 && carrier == 1
        title("Four Sheet Metals High Carrier Effects Rotation Error on X=[10..80] and Rotate 90 Degreee")
    elseif degree == 0 && carrier == 0
        title("Four Sheet Metals Low Carrier Effects Rotation Error on X=[10..80] and Rotate 0 Degreee")
    else
        title("Four Sheet Metals Low Carrier Effects Rotation Error on X=[10..80] and Rotate 90 Degreee")
    end

    ylabel('Rotation Error(rad)') 
    xlabel('X Position(cm)') 
    legend('LC Steel', '304 SS', '6061 Al', 'Copper')

%     % Save the translation error plot
%     saveas(gcf, savePath1, 'fig');
end