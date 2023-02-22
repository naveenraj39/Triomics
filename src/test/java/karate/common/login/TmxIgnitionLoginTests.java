package karate.common.login;

import org.junit.jupiter.api.AfterAll;
import com.intuit.karate.driver.chrome.Chrome;
import com.intuit.karate.junit5.Karate;
import lombok.extern.slf4j.Slf4j;

@Slf4j
public class TmxIgnitionLoginTests {
  @Karate.Test
  public Karate validLoginTest() {
    return Karate.run("classpath:karate/common/login/Login.feature");
  }

  // @Test
  // public void validLoginTestviaKarateAPI() {
  // // Map<String, Object> response =
  // // Http.to("https://ignition.stag.triomics.in/login").get().toMap();
  // chrome.log.debug(null);
  // }
  //
  // @BeforeAll
  // public static void before() {
  // // chrome = Chrome.startHeadless();
  // chrome = Chrome.start();
  // chrome.setUrl("https://ignition.stag.triomics.in/login");
  // }

  @AfterAll
  public static void after() {

  }

  private static Chrome chrome;

}
