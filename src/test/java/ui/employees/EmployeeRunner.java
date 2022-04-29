package ui.employees;

import com.intuit.karate.junit5.Karate;

class EmployeeRunner {

    @Karate.Test
    Karate testUi() {
        return Karate.run("classpath:ui/employee/employee.feature");
    }

}
