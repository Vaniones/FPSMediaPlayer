local Frame = vgui.Create( "DFrame" )
Frame:SetPos( 5, 5 ) 
Frame:SetSize( 300, 150 ) 
Frame:SetTitle( "Media Player" ) 
Frame:SetVisible( true )  -- to false if close
Frame:SetDraggable( false )  -- to true if drag 
Frame:ShowCloseButton( true ) 
Frame:MakePopup() -- to yes if open

-- //////////////////
-- // START BUTTON //
-- //////////////////

-- Stop Button If Click

local Button = vgui.Create("DButton", Frame)
Button:SetText( "Start" )
Button:SetTextColor( Color(255,255,255) )
Button:SetPos( 100, 100 )
Button:SetSize( 100, 30 )
Button.DoClick = function()
	print( "Stop" )
  Button.Paint = function( self, w, h )
	  draw.RoundedBox( 0, 0, 0, w, h, Color( 41, 128, 185, 250 ) ) -- Draw a Stop Button Skin
end
