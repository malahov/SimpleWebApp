package ru.malahov.web;

import org.junit.Test;

import static org.junit.Assert.*;

/**
 * Тестируем ганараторы приветствий
 *
 * Created by sergey.malahov on 04.03.15.
 */
public class HelloTester {

    @Test
    public void sayHelloToUser() {
        HelloGenerator hg = new UserHelloGenerator();
        assertEquals("Hello user!", hg.sayHello());
    }
}
