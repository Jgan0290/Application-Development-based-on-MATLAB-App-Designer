function Disconnect(TLM)

    if TLM.isConnected
        
        TLM.deviceNet.StopPolling();
        TLM.deviceNet.Diconnect();

        if TLM.deviceNet.IsConnected
            error('Could not disconnect device');

        else
            TLM.isConnected = 0;

        end
    
    else
        warning('No device connected');
    end

end