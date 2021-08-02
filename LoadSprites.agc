LoadSprites:
	//background sobreposto
LoadImage(1,"fundo2.png")
LoadImage(2,"fundo1.png")
LoadImage(3,"fundo.png")
LoadImage(4,"base-fundo.png")
CreateSprite(1,1)
SetSpriteSize(1,1024,768)
CreateSprite(2,2)
SetSpriteSize(2,1024,768)
CreateSprite(3,3)
SetSpriteSize(3,1024,768)
CreateSprite(4,4)
SetSpriteSize(4,1024,10)
SetSpritePosition(4,0,GetVirtualHeight()-10)

//inimigo
LoadImage(5,"enemy01.png")
// CRIA ANIMAÇÃO INIMIGO
CreateSprite(5,5)
SetSpriteSize(5,64,64)
SetSpritePosition(5,700,600)
SetSpriteAnimation(5,32,32,10)
PlaySprite(5)


//CARREGA IMAGENS DA PERSONAGEM
//PARADA
LoadImage(100,"idle/idle-1.png")
LoadImage(101,"idle/idle-2.png")
LoadImage(102,"idle/idle-3.png")
LoadImage(103,"idle/idle-4.png")
//PULANDO
LoadImage(104,"jump/jump-1.png")
LoadImage(105,"jump/jump-2.png")
LoadImage(106,"jump/jump-3.png")
LoadImage(107,"jump/jump-4.png")
//CORRENDO
LoadImage(108,"run/run-1.png")
LoadImage(109,"run/run-2.png")
LoadImage(110,"run/run-3.png")
LoadImage(111,"run/run-4.png")
LoadImage(112,"run/run-5.png")
LoadImage(113,"run/run-6.png")
LoadImage(114,"run/run-7.png")
LoadImage(115,"run/run-8.png")


//criando sprite do persongame
CreateSprite(personagem,100) //frame na posicão 0 criado


//adicionar animações do personagem parado
AddSpriteAnimationFrame(personagem,101) //1
AddSpriteAnimationFrame(personagem,102) //2
AddSpriteAnimationFrame(personagem,103) //3
//adicionar animações do personagem pulando
AddSpriteAnimationFrame(personagem,104) //4
AddSpriteAnimationFrame(personagem,105) //5
AddSpriteAnimationFrame(personagem,106) //6
AddSpriteAnimationFrame(personagem,107) //7
//adicionar animações do personagem correndo
AddSpriteAnimationFrame(personagem,108) //8
AddSpriteAnimationFrame(personagem,109) //9
AddSpriteAnimationFrame(personagem,110) //10
AddSpriteAnimationFrame(personagem,111) //11
AddSpriteAnimationFrame(personagem,112) //12
AddSpriteAnimationFrame(personagem,113) //13
AddSpriteAnimationFrame(personagem,114) //14
AddSpriteAnimationFrame(personagem,115) //15

//POSILÇAO DO SPRITE
SetSpritePosition(personagem,1,510)


//SETAR TAMANHOS
SetSpriteSize(personagem,213,201)


//ADICIONAR FÍSICA
SetSpritePhysicsOn(personagem,2)
SetSpritePhysicsOff(1)
SetSpritePhysicsOff(2)
SetSpritePhysicsOff(3)
SetSpritePhysicsOn(4,1)


//ADICIONAR SHAPE BOXES
//AddSpriteShapeBox(personagem,-GetSpriteWidth(personagem)/2,-GetSpriteHeight(personagem)/2,GetSpriteWidth(personagem)/2,GetSpriteHeight(personagem)/2,0)
//AddSpriteShapeCircle(7,0,0,GetSpriteHeight(7)/2)


//animação parada
PlaySprite(personagem,10,1,8,15) 




return 
