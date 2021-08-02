//0-sem correr,1-corridaIniciada e animação de correr ainda não iniciada,2-correndo e animação de correr iniciada
correndo=0


pulando=0


UpdateControls:

//VELOCIDADE DE DESLOCAMENTO DA PERSONAGEM









/*if (GetPointerPressed ( )= 1 ) //atirando
		//SetSpriteVisible(parada,0)
		//SetSpriteVisible(atirando,1)
		


	else
		//Esconde a imagem atirando e mostra a imagem parada
		//Reposiciona a imagem atirando na coordenada da imagem parada
		//SetSpritePosition(atirando,(GetSpriteX(correndo)),510)
		//SetSpriteVisible(atirando,0)
		//SetSpriteVisible(parada,1)
	
	endif*/
	
	//if GetRawKeyState(65) // CORRER PARA TRÁS
		//Mostra a imagem de movimento e esconde a parada
		//SetSpriteVisible(parada,0)
		//SetSpriteVisible(correndo,1)
		
		//SetSpritePosition(correndo,(GetSpriteX(correndo)-2),510)
	
	//endif
	
		
	if GetRawKeyState(17) // AGACHAR TECLA CTRL
		//Mostra a imagem agachada e esconde a parada
		//1 mostra 0 esconde
		//SetSpriteVisible(parada,0)
		//SetSpriteVisible(agachar,1)
		
	else
		//Esconde a imagem de agachando e mostra a imagem parada
		//Reposiciona a imagem agachada na coordenada da imagem parada
	//	SetSpritePosition(agachar,(GetSpriteX(correndo)),510)
		//SetSpriteVisible(agachar,0)
		//SetSpriteVisible(parada,1)
		
	endif
		
				
	if GetRawKeyState(68) // CORRENDO TECLA D 
		
		
		SetSpritePhysicsVelocity(7,500,0)
		StepPhysics(1)
		print("D pressionado")
		if(correndo=0)
			correndo=1
		endif
		
	else
		if GetRawKeyState(65) =0
			correndo=0
		endif
		
		
	endif
	
	if GetRawKeyState(65) // CORRENDO TECLA A
			
			
			SetSpritePhysicsVelocity(7,-500,0)
			StepPhysics(1)
			print("D pressionado")
			if(correndo=0)
				correndo=1
			endif
			
			SetSpriteFlip(7,1,0)
	else
		SetSpriteFlip(7,0,0)
		if GetRawKeyState(68) =0
			correndo=0
		endif
		
	endif
	
	
	
                        
	
	
                
	if GetRawKeyPressed(32) // PULO ESPAÇO
		spriteX = GetSpriteXByOffset(7)
		spriteY= GetSpriteYByOffset(7)
		SetSpritePhysicsImpulse(7,SpriteX,spriteY,GetSpritePhysicsVelocityX(7),-10000)
		pulando =1
		PlaySprite(7,10,0,4,7)
                               
	else
		
                               
	endif
	
	
	
	/*spriteX=GetSpriteXByOffset(7)
	spriteY=GetSpriteYByOffset(7)
	//SetSpritePhysicsVelocity(7,vx,vy)
	SetSpritePhysicsImpulse(7,spriteX,spriteY,fx,fy)*/
	
	
return
