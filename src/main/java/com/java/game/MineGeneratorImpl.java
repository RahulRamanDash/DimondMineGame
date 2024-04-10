package com.java.game;

import java.util.Map;
import java.util.Random;

import javax.faces.context.FacesContext;

public class MineGeneratorImpl {
	
	
	public void startGame() {
		String mineLocation = generateItems(24, 1, 5, 5);
		Map<String, Object> sessionMap = FacesContext.getCurrentInstance().getExternalContext().getSessionMap();
		sessionMap.put("mineLocation", mineLocation);
	}

	public String generateItems(int numDiamonds, int numBombs, int maxX, int maxY) {
		if (numDiamonds + numBombs > maxX * maxY) {
			throw new IllegalArgumentException("Number of items exceeds grid size");
		}
		
		Random random = new Random();
		
		String[] letters = {"a", "b", "c", "d", "e"};
		
//		// Generate diamonds
//		for (int i = 0; i < numDiamonds; i++) {
//			int x = random.nextInt(maxX); // Generate random x-coordinate
//			int y = random.nextInt(maxY); // Generate random y-coordinate
//			items.add(new Diamond(x, y));
//		}
		int x = random.nextInt(maxX - 1 + 1) + 1; // Generate random x-coordinate
		int y = random.nextInt(maxX); // Generate random x-coordinate
			
		String randomLetter = letters[y];
		
		return "diamond"+ x + "_" +randomLetter;
	}

}
