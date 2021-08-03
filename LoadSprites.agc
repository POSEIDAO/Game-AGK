LoadSprites:

//Variáveis de controle
idTiro=200

//background sobreposto
LoadImage(1,"fundocompleto.png")
LoadImage(2,"base.rua.png")
CreateSprite(1,1)
SetSpriteSize(1,2816,768)
CreateSprite(2,2)
SetSpriteSize(2,2816,42)
CreateSprite(3,1)
SetSpriteSize(3,2816,768)
CreateSprite(4,2)
SetSpriteSize(4,2816,42)
SetSpritePosition(1,0,0)
SetSpritePosition(2,0,GetVirtualHeight()-42)
SetSpritePosition(3,2816,0)
SetSpritePosition(4,2816,GetVirtualHeight()-42)


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




//carrega as imagens dos inimigos
LoadImage(116,"vehicles/v-police.png")




//criando sprite do persongame
CreateSprite(personagem,100) 
SetSpriteDepth(7,0)


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
SetSpriteShapeBox(7,-60,-60,60,100,0)
SetSpritePhysicsOff(1)

SetSpritePhysicsOn(2,1)
SetSpritePhysicsOn(4,1)


//animação parada
PlaySprite(personagem,10,1,8,15) 







return 



