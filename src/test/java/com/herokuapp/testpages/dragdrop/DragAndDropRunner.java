package com.herokuapp.testpages.dragdrop;

import com.intuit.karate.junit5.Karate;

public class DragAndDropRunner {

    @Karate.Test
    Karate testUi() {
        return Karate.run("classpath:com/herokuapp/testpages/dragdrop/drag-and-drop.feature");
    }

}
