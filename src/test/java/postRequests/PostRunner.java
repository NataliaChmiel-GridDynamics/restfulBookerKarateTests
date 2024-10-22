package postRequests;

import com.intuit.karate.junit5.Karate;

class PostRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("createToken", "createBooking").relativeTo(getClass());
    }    

}
