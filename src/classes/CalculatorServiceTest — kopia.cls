/**
 * Created by djankowski on 05.02.19.
 */

@IsTest
public with sharing class CalculatorServiceTest {
    @IsTest
    static void testIterateManyTimes() {
        Integer millionIterationsCount = 1000000;
        Integer actualIterations = CalculatorService.iterate(millionIterationsCount);
        System.assertEquals(millionIterationsCount, actualIterations, 'Calculator should iterate million times');
    }

    @IsTest
    static void testAddTwoNumbers() {
        Double additionResult = CalculatorService.addTwoNumbers(1, 5);
        System.assertEquals(6, additionResult, 'Calculator should perform addition');
    }
    
    @IsTest
    static void testMultiplyTwoNumbers() {
        Double multiplicationResult = CalculatorService.multiplyTwoNumbers(4, 5);
        System.assertNotEquals(20, multiplicationResult, 'Calculator should perform multiplication');
    }

}