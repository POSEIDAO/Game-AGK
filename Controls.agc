//0-sem correr,1-corridaIniciada e animação de correr ainda não iniciada,2-correndo e animação de correr iniciada
correndo=0


pulando=0


UpdateControls:


				
	
	
	
	
                        
	
	
                
	if GetRawKeyPressed(32) // PULO ESPAÇO
		if(pulando<2)
			spriteX = GetWorldXFromSprite(7,0,0)
			spriteY= GetWorldYFromSprite(7,0,0)
			SetSpritePhysicsImpulse(7,SpriteX,spriteY,GetSpritePhysicsVelocityX(7),GetSpritePhysicsVelocityY(7)-13000)
			SetSpritePhysicsVelocity(7,700+8000,GetSpritePhysicsVelocityY(7))
			pulando =pulando+1
			PlaySprite(7,10,0,4,7)
			
		endif
		
                               
	else
		
                               
	endif
	
	
	
	/*spriteX=GetSpriteXByOffset(7)
	spriteY=GetSpriteYByOffset(7)
	//SetSpritePhysicsVelocity(7,vx,vy)
	SetSpritePhysicsImpulse(7,spriteX,spriteY,fx,fy)*/
	
	
return
