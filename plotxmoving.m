function plotxmoving(transResult, rotResult, data, carrier)
    % x axis
    x0 = 0:100;
    %% Plot hollow metal translation error 
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

    for j = 1:numel(subsets)/2
        semilogy(x0, subsets{j}, '.-', 'MarkerSize', 8)
        hold on
    end
    grid on

    if carrier == 1
        title("All Hollow Metals High Carrier Effects Translation Error on y = 0 and Rotate 0 Degreee")
    else
        title("All Hollow Metals Low Carrier Effects Translation Error on y = 0 and Rotate 0 Degreee")
    end

%     title("All Hollow Metals High Carrier Effects Translation Error on y = 0 and Rotate 0 Degreee")
    ylabel('Translation Error(m)') 
    xlabel('X Position(cm)') 
    legend('LC Steel', '416 SS', '304 SS', '6061 Al', 'Ti Gr 5', 'Copper')
    
    %% Plot rotation error
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

    for j = 1:numel(subsetsRot)/2
        semilogy(x0, subsetsRot{j}, '.-', 'MarkerSize', 8)
        hold on
    end
    grid on

    if carrier == 1
        title("All Hollow Metals High Carrier Effects Rotation Error on y = 0 and Rotate 0 Degreee")
    else
        title("All Hollow Metals Low Carrier Effects Rotation Error on y = 0 and Rotate 0 Degreee")
    end

%     title("All Hollow Metals High Carrier Effects Rotation Error on y = 0 and Rotate 0 Degreee")
    ylabel('Rotation Error(rad)') 
    xlabel('X Position(cm)') 
    legend('LC Steel', '416 SS', '304 SS', '6061 Al', 'Ti Gr 5', 'Copper')

%     % Save the translation error plot
%     saveas(gcf, savePath1, 'fig');

    %% Plot solid metal translation error 
    figure;
    subplot(2,1,1)
    
    for j = numel(subsets)/2 + 1:numel(subsets)
        semilogy(x0, subsets{j}, '.-', 'MarkerSize', 8)
        hold on
    end
    grid on

    if carrier == 1
        title("All Solid Metals High Carrier Effects Translation Error on y = 0 and Rotate 0 Degreee")
    else
        title("All Solid Metals Low Carrier Effects Translation Error on y = 0 and Rotate 0 Degreee")
    end

%     title("All Solid Metals High Carrier Effects Translation Error on y = 0 and Rotate 0 Degreee")
    ylabel('Translation Error(m)') 
    xlabel('X Position(cm)') 
    legend('LC Steel', '416 SS', '304 SS', '6061 Al', 'Ti Gr 5', 'Copper')
    
      %% Plot rotation error
    subplot(2,1,2)    
    for j = numel(subsetsRot)/2 + 1:numel(subsetsRot)
        semilogy(x0, subsetsRot{j}, '.-', 'MarkerSize', 8)
        hold on
    end
    grid on

    if carrier == 1
        title("All Solid Metals High Carrier Effects Rotation Error on y = 0 and Rotate 0 Degreee")
    else
        title("All Solid Metals Low Carrier Effects Rotation Error on y = 0 and Rotate 0 Degreee")
    end

%     title("All Solid Metals High Carrier Effects Rotation Error on y = 0 and Rotate 0 Degreee")
    ylabel('Rotation Error(rad)') 
    xlabel('X Position(cm)') 
    legend('LC Steel', '416 SS', '304 SS', '6061 Al', 'Ti Gr 5', 'Copper')

%     % Save the translation error plot
%     saveas(gcf, savePath2, 'fig');

end