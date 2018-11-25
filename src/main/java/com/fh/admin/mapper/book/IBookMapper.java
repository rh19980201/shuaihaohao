package com.fh.admin.mapper.book;

import com.fh.admin.po.book.Book;

import java.util.List;

public interface IBookMapper {
    void addBook(Book book);

    List<Book> queryBook();

    void deletebook(Integer id);

    Book toupdatebook(Integer id);

    void update(Book book);
}
