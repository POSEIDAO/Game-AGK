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
proximaTrocaDeBackground=2816
proximoIdBackground=5
proximoIdRua=6







//Sub-rotinas que iniciam o jogo
gosub LoadSprites
gosub PhysicsStart





do
	SetViewOffset(GetSpriteX(7),0)

	print(GetSpritePhysicsVelocityX(7))
	gosub UpdatePersonagem
	
	gosub UpdateControls
    gosub UpdateBackground
    //Print( ScreenFPS() )
    print(GetSpriteX(7))
    Sync()
loop

UpdatePersonagem:



	/*if GetSpriteCollision(7,4)
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


UpdateBackground:

	if(GetSpriteX(7)>=proximaTrocaDeBackground)
		criarBackground(proximoIdBackground,proximoIdRua,proximaTrocaDeBackground+2816)
		
		
		if proximoIdBackground =5
			proximoIdBackground = 1
			proximoIdRua =2
		else 
			if proximoIdBackground =3
			proximoIdBackground = 5
			proximoIdRua =6
			else
				if proximoIdBackground =1
					proximoIdBackground = 3
					proximoIdRua =4
				endif
			endif	
		endif
		
		deletarBackground(proximoIdBackground,proximoIdRua)
		proximaTrocaDeBackground=proximaTrocaDeBackground+2816
	
	endif
	
	
	
	
return 

function criarBackground(proximoIdBackground,proximoIdRua,positionX)
	createSprite(proximoIdBackground,1)
	CreateSprite(proximoIdRua,2)
	SetSpriteSize(proximoIdBackground,2816,768)
	SetSpriteSize(proximoIdRua,2816,42)
	SetSpriteDepth(proximoIdBackground,1)
	SetSpriteDepth(proximoIdRua,1)
	SetSpritePosition(proximoIdBackground,positionX,0)
	SetSpritePosition(proximoIdRua,positionX,GetVirtualHeight()-42)
	SetSpritePhysicsOn(proximoIdRua,1)
endfunction

function deletarBackground(idBackground,idRua)
	DeleteSprite(idBackground)
	DeleteSprite(idRua)
endfunction
