package ru.malahov.web;

/**
 * генератор приветствие для пользователя user
 *
 * Created by sergey.malahov on 04.03.15.
 */
public class UserHelloGenerator implements HelloGenerator {

    public String sayHello() {
        return "Hello user!";
    }
}
