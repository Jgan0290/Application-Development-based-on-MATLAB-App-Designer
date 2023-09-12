
classdef MotorHandle < handle

    properties(Constant, Hidden)
        % Path to dll file
        MOTORPATHDEFAULT = 'C:\Program Files\Thorlabs\Kinesis\';
        DEVICEMANAGERDLL='Thorlabs.MotionControl.DeviceManagerCLI.dll';
        GENERICMOTORDLL='Thorlabs.MotionControl.GenericMotorCLI.dll';
        STEPPERMOTORDLL='Thorlabs.MotionControl.Benchtop.StepperMotorCLI.dll';
    
        % Default initial parameters
        DEFAULTVEL=10;           % Default velocity
        DEFAULTACC=10;           % Default acceleration
        TPOLLING=250;            % Default polling time
        TIMEOUTSETTINGS=7000;    % Default timeout time for settings change
        TIMEOUTMOVE=100000;      % Default time out time for motor move

    end
    properties
        % These properties are within Matlab wrapper
        %isconnected          % Flag set if device connected
        serial_no;                   % Device serial number
        %controllername;              % Controller Name
        %controllerdescription        % Controller Description
        %motorname;                   % Motor Name
        %position;                    % Position
        %m1_acc;                      % Motor1 Acceleration
        %m1_maxvel;                   % Motor1 Maximum velocity limit
        %m1_minvel;                   % Motor1 Minimum velocity limit
        %m2_acc;                      % Motor2 Acceleration
        %m2_maxvel;                   % Motor2 Maximum velocity limit
        %m2_minvel;                   % Motor2 Minimum velocity limit
    end
    properties (Hidden)
        % These are properties within the .NET environment.
        deviceNet;
        motor_controller;
        channel1;                           % Device Channel 1 object within .NET
        channel2;                           % Device Channel 2 object within .NET
        device1_ID;
        device2_ID;
        motor1Setting;                      % motorSettings1 within .NET
        motor2Setting;                      % motorSettings2 within .NET
        channel1Info;                       % deviceInfo1 within .NET
        channel2Info;                       % deviceInfo2 within .NET
    end

    methods

        
        function Load_DLLs(TLM)
            import Thorlabs.MotionControl.DeviceManagerCLI.*
            import Thorlabs.MotionControl.GenericMotorCLI.*
            import Thorlabs.MotionControl.Benchtop.StepperMotorCLI.*
            import Thorlabs.MotionControl.GenericMotorCLI.ControlParameters.*;
            import Thorlabs.MotionControl.GenericMotorCLI.AdvancedMotor.*;
            import Thorlabs.MotionControl.GenericMotorCLI.Settings.*

            try
                NET.addAssembly([TLM.MOTORPATHDEFAULT, TLM.DEVICEMANAGERDLL]);
                NET.addAssembly([TLM.MOTORPATHDEFAULT, TLM.GENERICMOTORDLL]);
                NET.addAssembly([TLM.MOTORPATHDEFAULT, TLM.STEPPERMOTORDLL]);
            catch
                error("Unable to load DLLs files!!!");

            end
        end
    
    end
    
end