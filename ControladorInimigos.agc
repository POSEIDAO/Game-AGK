
//Variáveis de controle


UpdateInimigos:
	if(GetSpriteX(7)>=posicaoProximoInimigo)
		criarInimigo(posicaoProximoInimigo+1000,idInimigo)
		idInimigo = idInimigo+1
		posicaoProximoInimigo= posicaoProximoInimigo+1100
	endif
return 


function criarInimigo(posicao,id)
	
	CreateSprite(id,116)
	SetSpritePosition(id,Random(posicao+500,posicao+800),GetVirtualHeight()-162)
	SetSpritePhysicsOn(id,1)
	SetSpriteSize(id,326,120)
	SetSpriteDepth(id,0)
	SetSpriteShapeBox(id,-125,-30,125,40,0)
endfunction
