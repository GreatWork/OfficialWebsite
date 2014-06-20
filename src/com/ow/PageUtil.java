package com.ow;

import java.util.ArrayList;

public class PageUtil {

	/**
	 * 返回段落，段落用<P>...</P>标识
	 * @param article	文章内容
	 * @return			段落
	 */
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
		
		//如果没有用<P></P>分隔则返回整个段落
		if(startPIndexs.size()==0 || endPIndexs.size()==0){
			
			return new String[]{article};
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
