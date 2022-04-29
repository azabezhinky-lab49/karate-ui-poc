package employee.list;

import com.intuit.karate.junit5.Karate;

class EmployeeListRunner {

    @Karate.Test
    Karate testUi() {
        return Karate.run("classpath:employee/list/employee-list.feature");
    }

}
