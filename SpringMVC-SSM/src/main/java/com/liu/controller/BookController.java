package com.liu.controller;

import com.liu.pojo.Books;
import com.liu.service.BookService;
import com.liu.service.BookServiceImp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.awt.print.Book;
import java.util.List;

/**
 * @author Mr.liu
 * @title: BookController
 * @projectName com.liu.controller
 * @description: TODO
 * @date 2021/05/13 10:26
 */
@Controller
@RequestMapping("/book")
public class BookController {
    //controller 调service层
    @Autowired
    @Qualifier("BookServiceImp")
    private BookService bookService;

    // 查询全部的书籍，并返回到一个书记展示页面
    @RequestMapping("/allBook")
    public String list(Model model){
        List<Books> list = bookService.queryAllBook();
        model.addAttribute("list",list);
        return "allBook";
    }

    // 跳转到增加书籍页面
    @RequestMapping("/toAddBook")
    public String toAddPaper(){
        return "addBook";
    }

    // 添加书籍请求
    @RequestMapping("/addBook")
    public String addBook(Books books){
        System.out.println("addBook=>"+books);
        bookService.addBook(books);
        return "redirect:/book/allBook";
    }

    // 跳转到修改页面
    @RequestMapping("/toUpdatePaper")
    public String toUpdatePaper(int bookID,Model model){
        Books books = bookService.queryBookById(bookID);
        model.addAttribute("book",books);
        return "updateBook";
    }

    // 修改书籍请求
    @RequestMapping("/updateBook")
    public String updateBook(Books books){
        System.out.println("updateBook=>"+books);
        bookService.updateBook(books);
        return "redirect:/book/allBook";
    }

    // 删除书籍请求
    @RequestMapping("/deleteBook")
    public String deleteBook(int bookID){
        System.out.println("deleteBook=>?"+bookID);
        bookService.deleteBookById(bookID);
        return "redirect:/book/allBook";
    }

    // 查询书籍请求
    @RequestMapping("/queryBook")
    public String queryBook(String bookName_like,Model model){
        System.out.println("queryBook=>"+bookName_like);
        List<Books> list_like = bookService.queryBooks_like(bookName_like);
        model.addAttribute("list_like",list_like);
        return "queryBook";
    }
}
