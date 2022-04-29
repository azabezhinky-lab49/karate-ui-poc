package ui.login;

import com.intuit.karate.junit5.Karate;

class LoginRunner {

    @Karate.Test
    Karate testUi() {
        return Karate.run("classpath:ui/login/login.feature");
    }

}
