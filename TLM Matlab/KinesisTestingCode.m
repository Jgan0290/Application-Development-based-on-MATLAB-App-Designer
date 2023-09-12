clc;

%Load .dll files associated with Thorlabs motor

MOTORPATHDEFAULT = 'C:\Program Files\Thorlabs\Kinesis\';
DEVICEMANAGERDLL='Thorlabs.MotionControl.DeviceManagerCLI.dll';
GENERICMOTORDLL='Thorlabs.MotionControl.GenericMotorCLI.dll';
STEPPERMOTORDLL='Thorlabs.MotionControl.KCube.StepperMotorCLI.dll';

asm_dev = NET.addAssembly([MOTORPATHDEFAULT, DEVICEMANAGERDLL]);
asm_gen = NET.addAssembly([MOTORPATHDEFAULT, GENERICMOTORDLL]);
asmInfo = NET.addAssembly([MOTORPATHDEFAULT, STEPPERMOTORDLL]);

import Thorlabs.MotionControl.DeviceManagerCLI.*
import Thorlabs.MotionControl.GenericMotorCLI.*
import Thorlabs.MotionControl.KCube.StepperMotorCLI.*
import Thorlabs.MotionControl.GenericMotorCLI.KCubeMotor.*
import Thorlabs.MotionControl.GenericMotorCLI.Settings.*

% Initialize Device List
Thorlabs.MotionControl.DeviceManagerCLI.DeviceManagerCLI.BuildDeviceList()  % Build device list
