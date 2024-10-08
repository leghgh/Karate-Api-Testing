package examples.users;

import com.intuit.karate.junit5.Karate;

class TestsRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("CreateCardTrello").relativeTo(getClass());
    }    

}
