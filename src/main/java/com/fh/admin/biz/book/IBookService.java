package com.fh.admin.biz.book;

import com.fh.admin.po.book.Book;

import java.util.List;

public interface IBookService {
    void addBook(Book book);

    List<Book> queryBook();

    /**
     * 删除
     * @param id
     */
    void deletebook(Integer id);

    /**
     * 回显
     * @param id
     * @return
     */
    Book toupdatebook(Integer id);

    void update(Book book);
}
