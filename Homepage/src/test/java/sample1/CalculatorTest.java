package sample1;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;
import org.junit.runners.Parameterized.Parameters;

import static org.junit.Assert.*;

import java.util.Arrays;
import java.util.Collection;

@RunWith(value=Parameterized.class)
public class CalculatorTest {
	private double expected;
	private double valueOne;
	private double valueTwo;

	public static void main(String[] args) {
		// TODO Auto-generated method stub
	/*	CalculatorTest t = new CalculatorTest(CalculatorTest.getTestParameters());
		t.testSum();
	*/	
	}
	
	@Parameters
	public static Collection<Integer[]> getTestParameters(){
		return Arrays.asList(new Integer[][]{
			{2,1,1},
			{3,2,1},
			{4,3,1}
		});
	}
	
	
	public CalculatorTest(double expected, double valueOne, double valueTwo) {
		super();
		this.expected = expected;
		this.valueOne = valueOne;
		this.valueTwo = valueTwo;
	}

	@Test
	public void testSum(){
		Calculator c = new Calculator();		
		assertEquals(expected, c.sum(valueOne, valueTwo),0);
	}

}
