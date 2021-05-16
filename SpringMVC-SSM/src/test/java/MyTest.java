import com.liu.controller.BookController;
import com.liu.pojo.Books;
import com.liu.service.BookService;
import com.liu.service.BookServiceImp;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


/**
 * @author Mr.liu
 * @title: MyTest
 * @projectName PACKAGE_NAME
 * @description: TODO
 * @date 2021/05/13 10:48
 */
public class MyTest {
    @Test
    public void test(){
        ApplicationContext context =  new ClassPathXmlApplicationContext("applicationContext.xml");
        BookServiceImp bookServiceImp =  context.getBean("BookServiceImp",BookServiceImp.class);
        // for(Books book : bookServiceImp.queryAllBook()){
        //     System.out.println(book);
        // }
        // bookServiceImp.addBook(new Books(4,"测试",1,"能否添加"));
        // System.out.println(bookServiceImp.queryBooks_like(""));
    }
}
