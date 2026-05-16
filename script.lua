local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Button = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0,350,0,220)
Frame.Position = UDim2.new(0.5,-175,0.5,-110)
Frame.BackgroundColor3 = Color3.fromRGB(170,0,0)

local Corner = Instance.new("UICorner")
Corner.Parent = Frame

Title.Parent = Frame
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(1,0,0,50)
Title.Text = "🎄 PACOTE DE NATAL 🎁"
Title.TextScaled = true
Title.Font = Enum.Font.GothamBold
Title.TextColor3 = Color3.new(1,1,1)

Button.Parent = Frame
Button.Size = UDim2.new(0,220,0,50)
Button.Position = UDim2.new(0.5,-110,0.7,0)
Button.BackgroundColor3 = Color3.fromRGB(0,170,0)
Button.Text = "PEGAR PRESENTE"
Button.TextScaled = true
Button.Font = Enum.Font.GothamBold
Button.TextColor3 = Color3.new(1,1,1)

local BtnCorner = Instance.new("UICorner")
BtnCorner.Parent = Button

Button.MouseButton1Click:Connect(function()
	Button.Text = "RECEBIDO ✅"

	game.StarterGui:SetCore("SendNotification",{
		Title = "Natal 🎄",
		Text = "Pacote ativado!",
		Duration = 5
	})
end)
