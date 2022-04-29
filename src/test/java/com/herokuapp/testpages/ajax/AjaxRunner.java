package com.herokuapp.testpages.ajax;

import com.intuit.karate.junit5.Karate;

class AjaxRunner {

    @Karate.Test
    Karate testUi() {
        return Karate.run("classpath:com/herokuapp/testpages/ajax/ajax.feature");
    }

}
