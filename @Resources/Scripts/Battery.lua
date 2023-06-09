PROPERTIES = {}

function Initialize()
    measurePowerPercent = SKIN:GetMeasure("MeasureBattery")
    measurePowerSource = SKIN:GetMeasure("MeasurePowerSource")
end

function Update()
    iPowerPercent = measurePowerPercent:GetValue()
    sPowerSource = measurePowerSource:GetStringValue()

    if (sPowerSource == "AC") then
        SKIN:Bang('!SetVariable DefaultPercentageColor "#ChargingColor#"')
    elseif iPowerPercent > 50 then
        SKIN:Bang('!SetVariable DefaultPercentageColor "#HighColor#"')
    elseif iPowerPercent > 30 then
        SKIN:Bang('!SetVariable DefaultPercentageColor "#MiddleColor#"')
    else
        SKIN:Bang('!SetVariable DefaultPercentageColor "#LowColor#"')
    end

end
