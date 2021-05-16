package com.liu.service;

import com.liu.dao.BookMapper;
import com.liu.pojo.Books;
import org.springframework.stereotype.Service;

import java.awt.print.Book;
import java.util.List;
import java.util.function.BooleanSupplier;

/**
 * @author Mr.liu
 * @title: BookServiceImp
 * @projectName com.liu.service
 * @description: TODO
 * @date 2021/05/12 14:04
 */
@Service
public class BookServiceImp implements BookService {

    private BookMapper bookMapper;

    public void setBookMapper(BookMapper bookMapper) {
        this.bookMapper = bookMapper;
    }

    @Override
    public int addBook(Books books) {
       return bookMapper.addBook(books);
    }

    @Override
    public int deleteBookById(int id) {
        return bookMapper.deleteBookById(id);
    }

    @Override
    public int updateBook(Books books) {
        return bookMapper.updateBook(books);
    }

    @Override
    public Books queryBookById(int id) {
        return bookMapper.queryBookById(id);
    }

    @Override
    public List<Books> queryAllBook() {
        return bookMapper.queryAllBook();
    }

    @Override
    public List<Books> queryBooks_like(String bookName_like) {
        return bookMapper.queryBooks_like(bookName_like);
    }
}
