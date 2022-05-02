package com.herokuapp.testpages.table.dynamic;

import com.intuit.karate.junit5.Karate;

class DynamicTableRunner {

    @Karate.Test
    Karate testUi() {
        return Karate.run("classpath:com/herokuapp/testpages/table/dynamic/dynamic-table.feature");
    }

}
