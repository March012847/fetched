local Players = game:GetService("Players")

Players.PlayerAdded:Connect(function(player)
    player.Chatted:Connect(function(msg)
        if msg == "/test" then
            local character = player.Character
            if character then
                local humanoid = character:FindFirstChild("Humanoid")
                if humanoid then
                    humanoid.Health = 0
                end
            end
        end
    end)
end)
