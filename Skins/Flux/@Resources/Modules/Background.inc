[Variables]
BackgroundActive = 1
BackgroundWidth = 0
BackgroundHeight = 0
BackgroundPosX = 0
BackgroundPosY = 0

@include=#@#/Settings/Background-Settings.inc

[MeterBackground]
Meter=Shape
X= (#PosX# + #BackgroundPosX#)
Y= (#PosY# + #BackgroundPosY#)
Shape=Rectangle 0,0,#BackgroundWidth#,#BackgroundHeight#,#BackgroundRadius# | Fill Color #BackgroundColor#,#BackgroundOpacity# | StrokeWidth #BackgroundBorderSize# | StrokeColor #BackgroundBorderColor#,#BackgroundBorderOpacity#
DynamicVariables = 1
UpdateDivider = -1
Hidden = (1-#BackgroundActive#)

[FrostedGlass]
Measure=Plugin
Plugin=FrostedGlass
Type=#BackgroundEffect#
Border=None