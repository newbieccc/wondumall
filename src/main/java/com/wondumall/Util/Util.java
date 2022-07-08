package com..Util;

import org.springframework.stereotype.Component;

@Component
public class Util {
	//1. string에서 int타입으로 반환
	public int str2Int(String str) {
		return Integer.parseInt(str);
	}

}
