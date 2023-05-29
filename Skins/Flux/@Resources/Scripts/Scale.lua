function Initialize()
    VariableName = SELF:GetOption('Variables', '')

    Variables = {}
    for a in string.gmatch(VariableName, '[^|]+') do
        table.insert(Variables, a)
    end

    Scale = SELF:GetNumberOption('Scale', 1)

    for _, v in ipairs(Variables) do SKIN:Bang('!SetVariable', v, SKIN:GetVariable(tostring(v), 100) * Scale) end
end
