package com.example;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class HelloWorldTest {

    @Test
    void testAddition() {
        assertEquals(2, 1 + 1);
    }

    @Test
    void testStringConcat() {
        assertEquals("hello", "he" + "llo");
    }

    @Test
    void testSubtract() {
        assertEquals(1, 2 - 1);
    }
}
