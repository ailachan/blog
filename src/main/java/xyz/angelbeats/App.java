package xyz.angelbeats;

import java.util.*;
import java.util.function.IntFunction;
import java.util.stream.Stream;

public class App {
    public static void main(String[] args) {
        HashMap<String,String> hs = new HashMap<>();
        hs.put("1","f");
        hs.put("2","fb");
        hs.put("3","fa");
        hs.put("4","faa");
        hs.put("5","fabb");

        Set<Map.Entry<String, String>> entries = hs.entrySet();
//        entries.forEach(System.out::println);

        Stream<Map.Entry<String, String>> stream = entries.stream().filter(x -> x.getValue().length() >= 2);
        Stream<Map.Entry<String, String>> stream1 = stream.filter(x -> x.getValue().length() >= 3);
//        Stream<Map.Entry<String, String>> stream2 = stream.filter(x -> x.getValue().length() >= 3);
//        stream2.forEach(System.out::println);
        Map.Entry[] objects = entries.stream().toArray(new IntFunction<Map.Entry[]>() {
            @Override
            public Map.Entry[] apply(int value) {
                return new Map.Entry[value];
            }
        });

        for (int i = 0; i < objects.length; i++) {
            System.out.println(objects[i].getKey()+"="+objects[i].getValue());
        }

    }
}
