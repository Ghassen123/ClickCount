package fr.xebia.clickcount;

import javax.inject.Singleton;

@Singleton
public class Configuration {

    public final String redisHost;
    public final int redisPort;
    public final int redisConnectionTimeout;  //milliseconds

    public Configuration() {
        redisHost = "10.67.109.11";
        redisPort = 6379;
        redisConnectionTimeout = 2000;
    }
}
