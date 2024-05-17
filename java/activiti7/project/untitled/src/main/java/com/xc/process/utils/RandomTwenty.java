package com.xc.process.utils;

import java.util.Random;

public class RandomTwenty {

    public static String generateRandomNumberString(int length) {
        Random random = new Random();
        StringBuilder sb = new StringBuilder(length);

        for (int i = 0; i < length; i++) {
            int randomNumber = random.nextInt(10);
            sb.append(randomNumber);
        }

        return sb.toString();
    }
}
