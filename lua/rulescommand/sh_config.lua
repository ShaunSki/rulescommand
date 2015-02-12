-- Created By ShaunSki.
-- Config file is required.
-- Feel free to email me at shaunskigmod@hotmail.com if you have any problems/requests.
-- Or here's my steam profile for quicker help: http://steamcommunity.com/id/ShaunSkis/
-- If you don't know the Decimal Colors use this website: http://www.rapidtables.com/web/color/RGB_Color.htm

--Server + Border Config
ServerName = "Server Rules" -- Put in your rules title / servername
ServerNameColor = Color( 255, 255, 255, 255 ) -- Red, Green, Blue, Transparency -- Your server name color!
LineColor = Color( 255, 0, 0, 255 ) -- Red, Green, Blue, Transparency -- Color for the line underneath server name!
BackgroundColor = Color( 50, 50, 50, 255 ) -- Red, Green, Blue, Transparency -- Color for the background!

-- Image Config
-- Shows Image on rulesmenu.
-- Will also automatically download any material you add if the player hasn't got it.
ImagePath = "materials/vgui/garrysmod.png" -- Enter your image FilePath; e.g. materials/spawnicons/models/effects/splode.png -- Doesn't need to be in materials folder can use whatever.

-- Commands Config
OpenRulesOnJoin = false -- Should it open when a player joins? true or false.
-- What to type to open the rules menu?
OpenRulesPlayerSay = { "!rules", "/rules" }

-- Rules Config
-- Enter your rules below.
RulesBackgroundColor = Color( 255, 200, 150, 255 ) -- Red, Green, Blue, Transparency -- Background Color of your rules!
RulesColor = Color( 255, 255, 255, 255 ) -- Red, Green, Blue, Transparency -- Color of your rules!
Rules = [[
1. No Propblocking/pushing/climbing.
2. No RDMing.
3. No being disrespectful.
]]

-- Font Config
-- Enter your font below
-- Here's the font list: http://wiki.garrysmod.com/page/Default_Fonts
-- Or you can add your own! -- If changing the font bugs something just hit me a message i'll happily help you out. 
FontServerName = "DermaLarge"
FontRules = "Trebuchet24"

-- Button Config
-- Button 1 Config!
Button1TextColor = Color( 255, 255, 255, 255 )
Button1BackgroundColor = Color( 0, 255, 0, 255 )
Button1Text = "I agree to play by the rules!"

-- Button 2 Config!
Button2TextColor = Color( 255, 255, 255, 255 )
Button2BackgroundColor = Color( 255, 0, 0, 255 )
Button2Text = "I disagree to the rules!"