function Home(TLM)

if TLM.channel1.NeedsHoming
    TLM.channel1.Home(600000);
else
    warning('Top motor is homed');
end

if TLM.channel2.NeedsHoming
    TLM.channel2.Home(600000);
else
    warning('The motor is homed');
end

end