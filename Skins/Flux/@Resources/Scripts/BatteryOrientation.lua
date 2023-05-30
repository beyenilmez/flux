PROPERTIES = {}

function Initialize()
    PercentageDirection = tonumber(SKIN:GetVariable('Orientation', '0'))
    PoleHeight = SKIN:GetVariable('PoleHeight', '30')
    PoleWidth = SKIN:GetVariable('PoleWidth', '85')
    PoleRadius = SKIN:GetVariable('PoleRadius', '14')

    if(PercentageDirection > 0) then
        ShellWidth = SKIN:GetVariable('ShellWidth', '290')
        ShellHeight = SKIN:GetVariable('ShellHeight', '550')

        SKIN:Bang('!SetVariable ShellWidth '..ShellHeight)
        SKIN:Bang('!SetVariable ShellHeight '..ShellWidth)

        SKIN:Bang('!SetVariable OffsetY '..PoleHeight)
        SKIN:Bang('!SetVariable PoleHeight '..(PoleHeight + PoleRadius))
    else
        SKIN:Bang('!SetVariable PoleHeight '..(PoleHeight + PoleRadius))
    end
end
