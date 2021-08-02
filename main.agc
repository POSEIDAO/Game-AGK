// Project: PROJETO2 
// Created: 2021-06-20

// show all errors
SetErrorMode(2)

// set window properties
SetWindowTitle( "PROJETO002" )
SetWindowSize( 1024, 768, 0 )
SetWindowAllowResize( 1 ) // allow the user to resize the window

// set display properties
SetVirtualResolution( 1024, 768 ) // doesn't have to match the window
SetOrientationAllowed( 1, 1, 1, 1 ) // allow both portrait and landscape on mobile devices
SetSyncRate( 60, 60 ) // 30fps instead of 60 to save battery
SetScissor( 0,0,0,0 ) // use the maximum available screen space, no black borders
UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts


#include "PhysicsSettings.agc"
#include "LoadSprites.agc"
#include "Controls.agc"


SetPhysicsDebugOn()

//DEFINIÇÃO DAS CONSTANTES

#constant personagem 7


//VARIÁVEIS
personagemPulando=0
personagemCorrendo=2



//VARIÁVEIS DE CONTROLE
puloForce = 30







//Sub-rotinas que iniciam o jogo
gosub LoadSprites
gosub PhysicsStart





do
	SetViewOffset(GetSpriteX(7),0)

	print(GetSpritePhysicsVelocityX(7))
	gosub UpdatePersonagem
	
	gosub UpdateControls
                      
    //Print( ScreenFPS() )
    Sync()
loop

UpdatePersonagem:



	if GetSpriteCollision(7,4)
		if pulando >0
			PlaySprite(7,10,1,8,15)
			pulando=0
		endif
			
		
	endif

	/*if GetSpriteY(personagem)>=566
		print("detectando o chão")
		if personagemPulando>0
			StopSprite(personagem)
			PlaySprite(personagem,10,1,0,3) 
				
			personagemPulando=0
		endif
			
		
	endif
	
	if puloForce >0
		SetSpritePhysicsVelocity(personagem,GetSpritePhysicsVelocityX(personagem),GetSpriteY(personagem)-puloForce*100)
		puloForce = puloForce-1.6
	
	endif*/
return
