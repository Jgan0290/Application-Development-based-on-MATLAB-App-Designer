function BottomMotor_Move(TLM, pos)

% Initialise Waithandler for timeout
workDone = TLM.channel2.InitializeWaitHandler();

% Move device to position via .NET interface
TLM.channel2.MoveTo(pos, workDone); 

end