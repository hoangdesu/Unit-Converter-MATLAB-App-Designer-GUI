% RMIT University - School of Science and Technologies
% OENG1207 - Digital Fundamentals
% Assignment: Individual Project - Unit Converter
% Author: Nguyen Quoc Hoang - s3697305
% -----------------------------------------------------
% File: setUnitItems.m (user-defined function)
% Function: set unit dropdown items based on unit types and systems
% Argument: app object(to access type list box and system list box's values)
% Returns: unit_items (string)
% ------------------------------------------------------

function unit_items = setUnitItems(app)
    % Access values from the app
    type_value = app.ChooseTypeListBox.Value;
    system_value = app.ChooseSystemListBox.Value;
    
    % Initiate item list
    unit_items = {};
    
    % Determine the unit items based on types and systems
    if strcmp(system_value, 'Metric')
        if strcmp(type_value, 'Temperature')
            unit_items = {'°C'};
        elseif strcmp(type_value, 'Length and Distance')
            unit_items = {'cm', 'm', 'km'};
        elseif strcmp(type_value, 'Mass')
            unit_items = {'grams', 'kg', 'tonne'};
        end
    elseif strcmp(system_value, 'Imperial')
        if strcmp(type_value, 'Temperature')
            unit_items = {'°F'};
        elseif strcmp(type_value, 'Length and Distance')
            unit_items = {'inch', 'feet', 'miles'};
        elseif strcmp(type_value, 'Mass')
            unit_items = {'ounces', 'pounds', 'ton'};
        end
    end
end