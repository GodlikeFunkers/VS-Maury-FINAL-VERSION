function onCreate()
	-- background shit
	makeLuaSprite('andy2', 'maurystages\\andy2', -600, -100);
	scaleObject('andy2', 0.8, 0.8);

	makeLuaSprite('andy1', 'maurystages\\andy1', -600, -100);
	scaleObject('andy1', 0.8, 0.8);

	addLuaSprite('andy2', false);
	addLuaSprite('andy1', false);

	makeLuaText('scrap','Scrapped Song from Autistic Blast: Lost Bits', 200, -50, 700);
	setTextSize('scrap', 20);
	setTextAlignment('scrap', 'left');
	setObjectCamera('scrap', 'game');
	addLuaText('scrap');
end