% RMIT University - School of Science and Technologies
% OENG1207 - Digital Fundamentals
% Assignment: Individual Project - Unit Converter
% Author: Nguyen Quoc Hoang - s3697305
% -----------------------------------------------------
% File: convertUnits.m (user-defined function)
% Function: perform mathematical conversions based on input unit
% Argument: app object(to access input field and unit dropdown's values)
% Returns: output_value (string), output_unit (string), error_message (string)
% ------------------------------------------------------

function [output_value, output_unit, error_message] = convertUnits(app)
    % Access values from the app
    input_value = app.InputValueField.Value;
    input_unit = app.UnitDropDown.Value;
    
    % Initiate variables
    output_value = 0;
    output_unit = '';
    error_message = '';
    
    % Perform mathematical conversions
    switch input_unit
        
        % °C -> °F
        case '°C'
            output_value = (input_value * 9/5) + 32;
            output_unit = '°F';
            
        % °F -> °C
        case '°F'
            output_value = (input_value - 32) * 5/9;
            output_unit = '°C';
            
        % cm -> inch
        case 'cm'
            if input_value < 0 
                error_message = 'Error: Length must be a positive number';
                output_value = 'err';
            else
                output_value = input_value / 2.54;
                output_unit = 'inch';
            end
            
        % inch -> cm
        case 'inch'
            if input_value < 0 
                error_message = 'Error: Length must be a positive number';
                output_value = 'err';
            else
                output_value = input_value * 2.54;
                output_unit = 'cm';
            end
            
        % m -> feet
        case 'm'
            if input_value < 0 
                error_message = 'Error: Length must be a positive number';
                output_value = 'err';
            else
                output_value = input_value / 0.3048;
                output_unit = 'feet';
            end
            
        % feet -> m
        case 'feet'
            if input_value < 0 
                error_message = 'Error: Length must be a positive number';
                output_value = 'err';
            else
                output_value = input_value * 0.3048;
                output_unit = 'm';
            end
            
        % km -> miles
        case 'km'
            if input_value < 0 
                error_message = 'Error: Length must be a positive number';
                output_value = 'err';
            else
                output_value = input_value / 1.609344;
                output_unit = 'miles';
            end
            
        % miles -> km
        case 'miles'
            if input_value < 0 
                error_message = 'Error: Length must be a positive number';
                output_value = 'err';
            else
                output_value = input_value * 1.609344;
                output_unit = 'km';
            end
            
        % grams -> ounces
        case 'grams'
            if input_value < 0 
                error_message = 'Error: Mass must be a positive number';
                output_value = 'err';
            else
                output_value = input_value / 28.3495;
                output_unit = 'ounces';
            end
            
        % ounces -> grams
        case 'ounces'
            if input_value < 0 
                error_message = 'Error: Mass must be a positive number';
                output_value = 'err';
            else
                output_value = input_value * 28.3495;
                output_unit = 'grams';
            end
            
        % kg -> pounds
        case 'kg'
            if input_value < 0 
                error_message = 'Error: Mass must be a positive number';
                output_value = 'err';
            else
                output_value = input_value / 0.4536;
                output_unit = 'pounds';
            end
            
        % pounds -> kg
        case 'pounds'
            if input_value < 0 
                error_message = 'Error: Mass must be a positive number';
                output_value = 'err';
            else
                output_value = input_value * 0.4536;
                output_unit = 'kg';
            end
            
        % tonne -> ton
        case 'tonne'
            if input_value < 0 
                error_message = 'Error: Mass must be a positive number';
                output_value = 'err';
            else
                output_value = input_value / 1.016;
                output_unit = 'ton';
            end
            
        % ton -> tonne
        case 'ton'
            if input_value < 0 
                error_message = 'Error: Mass must be a positive number';
                output_value = 'err';
            else
                output_value = input_value * 1.016;
                output_unit = 'tonne';
            end
            
        otherwise
            error_message = 'Please select a unit';
    end
    
    % Convert output value to string to display error code 'err' if needed.
    output_value = string(output_value);   
end