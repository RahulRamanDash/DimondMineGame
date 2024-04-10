package com.java.game;

import java.util.ArrayList;
import java.util.List;

public class Mine {
	
	private int mines = 1;
	private int diamonds = 24;
	private double billAmount;
	
	public int getMines() {
		return mines;
	}

	public void setMines(int mines) {
		this.mines = mines;
	}

	public int getDiamonds() {
		return diamonds;
	}

	public void setDiamonds(int diamonds) {
		this.diamonds = diamonds;
	}

	public double getBillAmount() {
		return billAmount;
	}

	public void setBillAmount(double billAmount) {
		this.billAmount = billAmount;
	}

	public Mine(int mines, int diamonds, double billAmount) {
		super();
		this.mines = mines;
		this.diamonds = diamonds;
		this.billAmount = billAmount;
	}



	@Override
	public String toString() {
		return "Mine [mines=" + mines + ", diamonds=" + diamonds + ", billAmount=" + billAmount + ", tableSize="
				+ tableSize + "]";
	}



	private List<String> tableSize;
	
	public Mine() {
		tableSize = new ArrayList<>();
		tableSize.add("a");
		tableSize.add("b");
		tableSize.add("c");
		tableSize.add("d");
		tableSize.add("e");
	}

	public List<String> getTableSize() {
		return tableSize;
	}

	public void setTableSize(List<String> tableSize) {
		this.tableSize = tableSize;
	}

	

	
	
	
}
