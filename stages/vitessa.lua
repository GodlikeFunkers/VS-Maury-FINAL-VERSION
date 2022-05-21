function onCreate()
	-- background shit
	makeLuaSprite('vita', 'maurystages\\vitstage', -500, -600);
	scaleObject('vita', 2.5, 2.5);
	
	makeLuaSprite('flag', 'maurystages\\flag', 800, 100);
	scaleObject('flag', 0.9, 0.9);

	addLuaSprite('vita', false);
	addLuaSprite('flag', false);
	
end