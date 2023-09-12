function BuildConnection(TLM)

% Build device list
Thorlabs.MotionControl.DeviceManagerCLI.DeviceManagerCLI.BuildDeviceList()
% Get device list
serialNumbersNet    = Thorlabs.MotionControl.DeviceManagerCLI.DeviceManagerCLI.GetDeviceList();
% Convert serial numbers to cell array
serialNumbers       = cell(ToArray(serialNumbersNet));
TLM.serial_no       = serialNumbers{1};   % S/N:70825562

TLM.deviceNet = Thorlabs.MotionControl.Benchtop.StepperMotorCLI.BenchtopStepperMotor.CreateBenchtopStepperMotor(TLM.serial_no);
TLM.motor_controller = TLM.deviceNet.Connect(TLM.serial_no);


%Connect to Top Motor
TLM.channel1 = TLM.motor_controller.GetChannel(1);
TLM.channel2 = TLM.motor_controller.GetChannel(2);
TLM.device1_ID = TLM.channel1.DeviceID;
TLM.device2_ID = TLM.channel2.DeviceID;

% Start the device polling
% The polling loop requests regular status requests to the motor to ensure the program keeps track of the device
TLM.channel1.StartPolling(250);
TLM.channel2.StartPolling(250);

% Load the motor configuration
TLM.motor1Setting = TLM.channel1.LoadMotorConfiguration(TLM.device1_ID);
TLM.motor2Setting = TLM.channel2.LoadMotorConfiguration(TLM.device2_ID);

end