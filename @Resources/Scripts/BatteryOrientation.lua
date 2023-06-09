function Initialize()
    PercentageDirection = tonumber(SKIN:GetVariable('Orientation', '0'))

    if(PercentageDirection > 0) then
        --  Switch shell width/height
        ShellWidth = SKIN:GetVariable('ShellWidth', '290')
        ShellHeight = SKIN:GetVariable('ShellHeight', '550')
        SKIN:Bang('!SetVariable ShellWidth '..ShellHeight)
        SKIN:Bang('!SetVariable ShellHeight '..ShellWidth)

        SKIN:Bang('!SetVariable PoleHeight "(#PoleHeight# + #PoleRadius#)"')

        SKIN:Bang('!SetVariable BackgroundHeight "(#BackgroundPaddingTop# + #ShellHeight# + #BackgroundPaddingBottom# + #PoleHeight# - #PoleRadius#)"')
        SKIN:Bang('!SetVariable BackgroundWidth "(#BackgroundPaddingLeft# + #ShellWidth# + #BackgroundPaddingRight#)')
        SKIN:Bang('!SetVariable OffsetX "#BackgroundPaddingLeft#"')
        SKIN:Bang('!SetVariable OffsetY "(#BackgroundPaddingTop# + #PoleHeight# - #PoleRadius#)"')

        SKIN:Bang('!SetVariable VerticalTextOffset "(#PoleHeight# - #PoleRadius#)"')
    else
        SKIN:Bang('!SetVariable PoleHeight "(#PoleHeight# + #PoleRadius#)"')

        SKIN:Bang('!SetVariable BackgroundHeight "(#BackgroundPaddingTop# + #ShellHeight# + #BackgroundPaddingBottom#)"')
        SKIN:Bang('!SetVariable BackgroundWidth "(#BackgroundPaddingLeft# + #ShellWidth# + #PoleHeight# - #PoleRadius# + #BackgroundPaddingRight#)')
        SKIN:Bang('!SetVariable OffsetX "#BackgroundPaddingLeft#"')
        SKIN:Bang('!SetVariable OffsetY "#BackgroundPaddingTop#"')
    end
end
