import java.io.BufferedWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collector;
import java.util.stream.Collectors;
import java.util.stream.Stream;


public class Streams {
	
	
	public static List<String> methodforstream(Stream<String> str,int length){
		
		
		return str.filter(s->s.length()==length).map(String::toUpperCase).collect(Collectors.toList());
	}
	
	
	public static void main(String[] args) {
		
		List<String> li= Arrays.asList("test","abc","devops","java");
		List<Integer> intger=List.of(1,2,3,4,5,6,7,8,9);
		List<Integer> arr=Arrays.asList(1,2,3,4,5,6,7,8);
		
		Optional<Integer> sum=arr.stream().reduce((a,b)->a + b);
		sum.ifPresent(System.out::println);
		
		/*
		 * Comparator<String> com=(o1, o2) -> o1.compareTo(o2);
		 * Collections.sort(li,com);
		 */
		li.stream().sorted().forEach(System.out::println);
		
		LocalDate date=LocalDate.now();
		LocalTime time =LocalTime.now();
		LocalDateTime datetime=LocalDateTime.now();
		System.out.println(datetime);
		System.out.println(date+""+ time +"the date is");
		
		/*
		 * String filepath="E\\user\file.txt";
		 * 
		 * try(Stream<String> lines=Files.lines(Paths.get(filepath))){
		 * 
		 * PrintWriter pw=new PrintWriter(Files.newBufferedWriter(Paths.get(filepath)));
		 * 
		 * List<String> testing =methodforstream(lines,5); System.out.println(testing);
		 * 
		 * } catch (IOException e) {
		 * 
		 * e.printStackTrace(); }
		 * 
		 */
		
		
	}


}