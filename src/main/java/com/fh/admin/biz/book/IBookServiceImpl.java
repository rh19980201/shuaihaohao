package com.fh.admin.biz.book;

import com.fh.admin.mapper.book.IBookMapper;
import com.fh.admin.po.book.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("bookService")
public class IBookServiceImpl implements IBookService {
    @Autowired
    private IBookMapper bookMapper;

    @Override
    public void addBook(Book book) {
        bookMapper.addBook(book);
    }

    @Override
    public List<Book> queryBook() {

        return bookMapper.queryBook();
    }

    @Override
    public void deletebook(Integer id) {
        bookMapper.deletebook(id);
    }

    @Override
    public Book toupdatebook(Integer id) {
        return bookMapper.toupdatebook(id);
    }

    @Override
    public void update(Book book) {
        bookMapper.update(book);
    }
}
