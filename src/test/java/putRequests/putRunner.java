package putRequests;

import com.intuit.karate.junit5.Karate;

public class putRunner {
    @Karate.Test
    Karate testUsers() {
        return Karate.run("updateBooking").relativeTo(getClass());
    }
}
