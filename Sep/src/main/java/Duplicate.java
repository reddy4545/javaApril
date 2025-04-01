import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class Duplicate {
	
	
	public static void main(String[] args) {
		
		List<Integer> numbers= Arrays.asList(1,2,2,3,3,4,4,5,6,7,8);
		
		Map<Integer,Long> duplicates =numbers.stream().collect(Collectors.groupingBy(n -> n,Collectors.counting())).entrySet().stream().
				filter(entry -> entry.getValue()>1).collect(Collectors.toMap(Map.Entry::getKey,Map.Entry::getValue));
		
		
		
		
		duplicates.forEach((key, value)-> {System.out.println(key +"--"+value);});
		
	}
	

}
