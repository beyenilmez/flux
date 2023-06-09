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

        SKIN:Bang('!SetVariable PoleHeight '..(PoleHeight + PoleRadius))

        SKIN:Bang('!SetVariable BackgroundWidth "(#BackgroundPaddingLeft# + #ShellWidth# + #BackgroundPaddingRight#)')
        SKIN:Bang('!SetVariable OffsetY "(#BackgroundPaddingTop# + ((#PoleHeight# - #PoleRadius#) / 2))"')
    else
        SKIN:Bang('!SetVariable PoleHeight '..(PoleHeight + PoleRadius))

        SKIN:Bang('!SetVariable BackgroundWidth "(#BackgroundPaddingLeft# + #ShellWidth# + #PoleHeight# - #PoleRadius# + #BackgroundPaddingRight#)')
        SKIN:Bang('!SetVariable OffsetY "#BackgroundPaddingTop# + #PoleHeight# - #PoleRadius#"')
    end
end
