StartMenu:
	LoadImage(1,"inicial2.png")
	createsprite(1,1)
	SetSpriteSize(1,GetVirtualWidth(),GetVirtualHeight())
	
	do
		if GetRawMouseLeftPressed()
			DeleteImage(1)
			DeleteSprite(1)
			exit
		endif
		sync()
	loop


return 
