package getRequests;

import com.intuit.karate.junit5.Karate;

public class GetRunner {
    @Karate.Test
    Karate testUsers() {
        return Karate.run("getBookingIds", "getBooking").relativeTo(getClass());
    }

}
