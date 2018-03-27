package Lib_Query;

import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.Map.Entry;



public class CompratorHashMap  {
	 
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public HashMap <String, Object>sortByValues(HashMap<String, Object> map) { 
	       List list = new LinkedList(map.entrySet());
	       // Defined Custom Comparator here
	       Collections.sort(list, new Comparator() {
	            public int compare(Object o1, Object o2) {
	               return ((Comparable) ((Map.Entry) (o1)).getValue())
	                  .compareTo(((Map.Entry) (o2)).getValue());
	            }
	       });
	       
	       LinkedHashMap<String, Object> sortedHashMap = new LinkedHashMap();
	       for (Iterator it = list.iterator(); it.hasNext();) {
	              Map.Entry entry = (Map.Entry) it.next();
	              sortedHashMap.put((String) entry.getKey(), entry.getValue());
	       } 
	       return sortedHashMap;
	  }
	
	public HashMap<String,Object> sortHashMap (HashMap<String,Object> map){
	    
		TreeMap<Object,String> hm=new TreeMap<Object,String>();  
		LinkedHashMap<String,Object> hash=new LinkedHashMap<String, Object>();
		
		for (Entry<String, Object> m:map.entrySet()){
	        	hm.put(m.getValue(), m.getKey());
	        }
		for (Entry<Object, String> m:hm.entrySet()){
	        	hash.put(m.getValue(), m.getKey());
	        }
		
		return hash;
	}
}

