function TopMotor_Move(TLM, pos)

% Initialise Waithandler for timeout
workDone = TLM.channel1.InitializeWaitHandler();

% Move device to position via .NET interface
TLM.channel1.MoveTo(pos, workDone); 

end