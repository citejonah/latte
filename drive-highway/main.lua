local aca = game:GetService("Players")
local awa = aca.LocalPlayer
local aba = workspace:FindFirstChild("Cars")

task.spawn(function()
    while true do
        if aba and awa then
            local aka = awa.Name .. "_"
            local aga = nil
            
            for _, child in ipairs(aba:GetChildren()) do
                if child:IsA("Model") and string.sub(child.Name, 1, #aka) == aka then
                    aga = child
                    break
                end
            end
            
            if aga then
                for _, v in ipairs(aga:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            end
        end
        task.wait(0.1)
    end
end)