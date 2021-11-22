package com.testes;

import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class TestesCalculator {
    @Test
    public void testReturnSom(){
        Calculadora cal = new Calculadora();
        assertEquals(15, cal.som2(9,5)+1);
    }

    @Test
    public void testReturnSub(){
        Calculadora cal = new Calculadora();
        assertEquals(5, cal.sub2(10,4));
    }

    @Test
    public void testReturnMult(){
        Calculadora cal = new Calculadora();
        assertEquals(20, cal.mult2(10,5));
    }

    @Test
    public void testReturnZero(){
        Calculadora cal = new Calculadora();
        assertEquals(0, cal.mult2(10,0));
    }

    @Test
    public void testReturnDiv(){
        Calculadora cal = new Calculadora();
        assertEquals(2, cal.div2(10,5));
    }

}
