# System-Control-based-on-MATLAB-App-Designer
# Introduction
This project introduces a comprehensive system development endeavor that leverages MATLAB App Designer, Thorlabs stepper motor controllers, and the Andor spectrometer coupled with a CCD camera. By combining these powerful components, I aim to create a versatile and user-friendly laboratory goniometer system that enables researchers to conduct experiments with precision and ease.

<img width="521" alt="Laboratory Goniometer" src="https://github.com/Jgan0290/System-Control-based-on-MATLAB-App-Designer/assets/72658054/86d8d5d3-a6bb-4b82-bb1e-2f07b931431c">

Key Components:
1. MATLAB App Designer: MATLAB's App Designer provides an intuitive and interactive platform for building custom graphical user interfaces (GUIs). It offers a powerful environment for creating a user-friendly front-end for our laboratory goniometer system, enabling users to control and monitor the hardware seamlessly.

2. Thorlabs Stepper Motor Control: The Thorlabs stepper motor controllers and motors(NR360S/M Motorised 360° Rotation Stage & BSC203 Benchtop Stepper Motor Controller) are employed for precise angular positioning of the sample or optical components. Integration with MATLAB allows for real-time control and automation of the goniometer's movements, ensuring accuracy and repeatability.

3. Andor Spectrometer and CCD Camera: The Andor spectrometer and CCD camera(Andor Shamrock SR-303i & Andor iDus DV420A-OE) provide high-resolution spectral data acquisition. By interfacing with MATLAB, researchers can capture and process spectral information with ease, making it suitable for a wide range of spectroscopy experiments.

Projects Goals:
- Develop a MATLAB App Designer-based graphical interface for controlling the goniometer system.
- Implement real-time communication and control of the Thorlabs stepper motor for precise angular positioning.
- Integrate the Andor spectrometer and CCD camera for spectral data acquisition and analysis.

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
