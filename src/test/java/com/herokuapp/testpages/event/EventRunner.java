package com.herokuapp.testpages.event;

import com.intuit.karate.junit5.Karate;

public class EventRunner {

    @Karate.Test
    Karate testUi() {
        return Karate.run("classpath:com/herokuapp/testpages/table/event/event.feature");
    }

}
