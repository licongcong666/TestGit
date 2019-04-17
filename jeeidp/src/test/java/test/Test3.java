package test;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

// 行转列
public class Test3 {

	public static void main(String[] args) {
		
		List<Demo> list = new ArrayList<>();
		
		list.add(new Demo("1","1"));
		list.add(new Demo("1","1"));
		list.add(new Demo("2","2"));
		list.add(new Demo("2","2"));
		list.add(new Demo("2","2"));
		
		List<Demo> list1 = new ArrayList<>();
		
		list.stream()
			.collect(Collectors.groupingBy(Demo::getId))
			.forEach((k,v) -> {
				
				Optional<Demo> o = v.stream().reduce((v1, v2) -> {
					
					v1.setName(v1.getName() + "," + v2.getName());
					
					return v1;
				});
			
				list1.add(o.get());
			});
		
		System.out.println(list1);
		
	}
}
class Demo {
	
	private String id;
	private String name;
	
	public Demo(String id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "Demo [id=" + id + ", name=" + name + "]";
	}
}