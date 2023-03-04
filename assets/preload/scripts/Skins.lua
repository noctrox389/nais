NoSkinBFSongs = {'finale','pretender', 'Defeat', 'Danger', 'ejected', 'Lights-Down', 'Identity Crisis','Compromised Persona', 'Voting-Time', 'turbulence', 'Sauces Moogus', 'Sussy Bussy', 'Rivals','Chewmate','Christmas','spookpostor','Greatest Plan','Ow','Who','Sussus-Nuzzus','Idk','esculent','Monotone Attack','Double Trouble','Chippin','Chipping','torture','Skinny Nuts','Skinny Nuts 2','Monochrome','kyubism','triple-trouble','infikiller'}
NoSkinGFSongs = {'finale','pretender', 'Defeat', 'Danger', 'ejected', 'Lights-Down', 'Identity Crisis','Compromised Persona', 'Voting-Time', 'turbulence', 'Sauces Moogus', 'Sussy Bussy', 'Rivals','Chewmate','Christmas','spookpostor','Titular','Greatest Plan','Ow','Who','Sussus-Nuzzus','Idk','esculent','Crewicide','Monotone Attack','Double Trouble','Chippin','Chipping','torture','Skinny Nuts','Skinny Nuts 2','Monochrome','kyubism','triple-trouble','infikiller','Drippypop','Insane Streamer','Reinforcements','Armed', 'ominous','double-kill','ROOMCODE','victory', 'Boiling Point','Sabotage','Meltdown','lotowncorry','O2'}

function onCreate()
if not isStoryMode then
initSaveData('gfSkins')
initSaveData('bfSkins')
initSaveData('petSkins')
initSaveData('Skins')

GFSkin = getDataFromSave('gfSkins', 'skin')
BFSkins = getDataFromSave('bfSkins', 'skin')
PetSkin = getDataFromSave('petSkins', 'skin')

if checkList(NoSkinBFSongs, songName)~=true and getDataFromSave('Skins', 'Sobrescribir') == true then
addCharacterToList(BFSkins, 'boyfriend') 
end
if checkList(NoSkinGFSongs, songName)~=true and getDataFromSave('Skins', 'Sobrescribir') == true then
addCharacterToList(GFSkin, 'gf')
end
end
end

MascotaOffsetY = 0
MascotaOffsetX = 0


function onCreatePost()
if not isStoryMode then
if checkList(NoSkinBFSongs, songName)~=true and getDataFromSave('Skins', 'Sobrescribir') == true then
triggerEvent('Change Character', 'boyfriend', BFSkins);
end
if checkList(NoSkinGFSongs, songName)~=true and getDataFromSave('Skins', 'Sobrescribir') == true then
triggerEvent('Change Character', 'gf', GFSkin);
end
if getDataFromSave('gfSkins', 'skin') == 'gfpolus' then
setProperty('gf.scale.x', 1.3)
setProperty('gf.scale.y', 1.3) 
setProperty('gf.y', getProperty('gf.y')-50) 
end
if getDataFromSave('gfSkins', 'skin') == 'gfmira' then
setProperty('gf.scale.y', 1.2) 
end
if getDataFromSave('bfSkins', 'skin') == 'bfmira' then
setProperty('boyfriend.scale.x', 1*0.9) 
setProperty('boyfriend.scale.y', 1.3*0.9) 
setProperty('boyfriend.x', getProperty('boyfriend.x')+50) 
setProperty('boyfriend.y', getProperty('boyfriend.y')+50) 
end
if getDataFromSave('petSkins', 'skin') == 'crab' then
MascotaOffsetY = 120
MascotaOffsetX = 50
end
if getDataFromSave('petSkins', 'skin') == 'miniCrewmate' then
MascotaOffsetY = 100
MascotaOffsetX = 50
end
if getDataFromSave('petSkins', 'skin') == 'chewmate' then
MascotaOffsetY = 80
MascotaOffsetX = 20
end
if getDataFromSave('petSkins', 'skin') == 'snowball' then
MascotaOffsetY = 80
MascotaOffsetX = 20
end
if getDataFromSave('petSkins', 'skin') == 'henry' then
MascotaOffsetY = 80
MascotaOffsetX = 20
end
if getDataFromSave('petSkins', 'skin') == 'ham' then
MascotaOffsetY = 100
MascotaOffsetX = 20
end
if getDataFromSave('petSkins', 'skin') == 'frankenDog' then
MascotaOffsetY = 80
MascotaOffsetX = 20
end
if getDataFromSave('petSkins', 'skin') == 'dog' then
MascotaOffsetY = 80
MascotaOffsetX = 20
end
if getDataFromSave('petSkins', 'skin') == 'ellie' then
MascotaOffsetY = 80
MascotaOffsetX = 20
end
if getDataFromSave('petSkins', 'skin') == 'hamster' then
MascotaOffsetY = 80
MascotaOffsetX = 10
end
if getDataFromSave('Skins', 'AllowMascota') == true then
makeAnimatedLuaSprite('pet', 'pets/'..PetSkin, getProperty('boyfriend.x')+350+MascotaOffsetX, getProperty('boyfriend.y')+175+MascotaOffsetY);
addAnimationByPrefix('pet', 'idle', 'idle', 24, false);  
objectPlayAnimation('pet', 'pet', true)
addLuaSprite('pet', true);
end
end
end

function checkList(list, value)
    for i=0,table.maxn(list) do
        if list[i]==value then return true end
    end
end

function onBeatHit()
if not isStoryMode then
if curBeat % 2 == 0 then
objectPlayAnimation('pet', 'idle');
end
end 
end