import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class springtest {

    @Test
    public void springtest(){
        ClassPathXmlApplicationContext classPathXmlApplicationContext = new ClassPathXmlApplicationContext("spring-service.xml");
        Object bean = classPathXmlApplicationContext.getBean("");
        classPathXmlApplicationContext.close();


    }
}
