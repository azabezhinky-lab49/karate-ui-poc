package com.herokuapp.testpages.alert;

import com.intuit.karate.junit5.Karate;

class AlertRunner {

    @Karate.Test
    Karate testUi() {
        return Karate.run("classpath:com/herokuapp/testpages/alert/alert.feature");
    }

}
