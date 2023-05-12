# System-Control-based-on-MATLAB-App-Designer

Control system for a robotic goniometer using Thorlabs stepper motors and Andor Spectrometer, CCD to perform light wavelength measurement.

A user interface is developed to control NR360S/M Motorised 360° Rotation Stage with BSC203 Benchtop Stepper Motor Controller, Andor Shamrock SR-303i & Andor iDus DV420A-OE.

# Requirements
- [MATLAB](https://www.mathworks.com/products/matlab.html) installed
- [Thorlabs Kinesis Software](https://www.thorlabs.com/newgrouppage9.cfm?objectgroup_id=10285) installed 
- Andor MATLAB SDK installed (Requested from Andor Technology Customer Support)
- Andor MATLAB Spectrograph Setup installed (Requested from Andor Technology Customer Support)

# App Designer

# NR360S/M Motorised 360° Rotation Stage Testing
Example Usage:
```
TLM = MotorClass;
Load_DLLs((TLM);
BuildConnection((TLM);

# Move the top motor to angle 10
TopMotor_Move(TLM, 10);
```

# Andor Spectrometer Testing
Example Usage:
