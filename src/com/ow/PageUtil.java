package com.ow;

import java.util.ArrayList;

public class PageUtil {

	public static String[] getParagraphs(String article ){
		
		String[] ret=null;
		
		try {
			
		
		int pFromIndex=0;
		int pToIndex=0;
		ArrayList<Integer> startPIndexs=new ArrayList<Integer>();
		ArrayList<Integer> endPIndexs=new ArrayList<Integer>();
		while(-1!= article.indexOf("<P>", pFromIndex)){
			
			int t = article.indexOf("<P>", pFromIndex);
			startPIndexs.add(t);
			pFromIndex=t+1;
			
			t=article.indexOf("</P>", pToIndex);
			endPIndexs.add(t);
			pToIndex=t+1;
		}
		
		ArrayList<String> paragraphs=new ArrayList<String>();
		
		for(int i=0;i<startPIndexs.size();i++){
			
			String tStr=article.substring(startPIndexs.get(i), endPIndexs.get(i));
			paragraphs.add(tStr);
		}
		
		ret=new String[paragraphs.size()];
		
		ret = paragraphs.toArray(ret);
		
		}catch (Exception e) {
			// TODO: handle exception
		}
		
		return ret;
	}
	
}
