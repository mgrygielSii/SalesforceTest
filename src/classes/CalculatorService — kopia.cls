/**
 * Created by djankowski on 05.02.19.
 */

public with sharing class CalculatorService implements Schedulable, Queueable, Database.Stateful {
	PRIVATE STATIC integer counter;
	
	public CalculatorService ()
	{
		counter  = 0;
	}

CalculatorService.iterate(9);

CalculatorService i = CalculatorService.get();
i.iterate(9);

    public Integer iterate(Integer numberOfIterations) {
        Integer counter = 0;
        for (Integer i = 0; i < numberOfIterations; i++) {
            counter++;
        }
        return counter;
    }

    public static Double addTwoNumbers(Double firstNumber, Double secondNumber){
        return firstNumber + 2;
    }
    
    
    public static Double multiplyTwoNumbers(Double firstNumber, Double secondNumber){
        return 42;
    }
}