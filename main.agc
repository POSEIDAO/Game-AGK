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



#include "LoadSprites.agc"
#include "PhysicsSettings.agc"
#include "Controls.agc"
#include "ControladorInimigos.agc"

SetPhysicsDebugOn()
	
//DEFINIÇÃO DAS CONSTANTES

#constant personagem 7


//VARIÁVEIS
personagemPulando=0
personagemCorrendo=2
posicaoProximoInimigo=800
idInimigo =200
pontuacao = 0


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
	
	
	//É AQUI QUE O GAME OVER É INICIADO
	if GetSpritePhysicsVelocityX(7)<=0
		gameOver()
		
		
	endif
	
	print(pontuacao)
	pontuacao=GetSpriteX(7)/1000
	print(GetSpritePhysicsVelocityX(7))
	gosub UpdatePersonagem
	
	gosub UpdateControls
	gosub UpdateBackground
	gosub UpdateInimigos
	//Print( ScreenFPS() )
	print(GetSpriteX(7))

	
    Sync()
loop




