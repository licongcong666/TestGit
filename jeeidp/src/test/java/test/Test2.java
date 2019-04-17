package test;

public class Test2 {

	public static void main(String[] args) {
		
		String paramValue = "&),&）,0";
		
		String code = "&)000012&)3405";
		
		String[] filters = paramValue.split(",");
		
		for(String filter : filters){
			
			if("0".equals(filter)){
				
				code = code.replaceFirst("^0*", "");
			} else{
				
				code = code.replace(filter, "");
			}
		}
		
		System.out.println(code);

	}

}
