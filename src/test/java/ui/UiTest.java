package ui;

import com.intuit.karate.junit5.Karate;
import org.junit.jupiter.api.BeforeAll;

class UiTest {

    @BeforeAll
    public static void beforeAll() {
    }

    @Karate.Test
    Karate testUi() {
        return Karate.run("classpath:ui");
    }

}
