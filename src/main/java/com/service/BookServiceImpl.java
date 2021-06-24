package com.service;

import com.dao.BookMapper;
import com.pojo.Books;

import java.util.List;

public class BookServiceImpl implements BookService {
    //service调dao层:组合dao
    private BookMapper bookmapper;

    public void setBookmapper(BookMapper bookmapper) {
        this.bookmapper = bookmapper;
    }

    public int addBook(Books book) {
        return bookmapper.addBook(book);
    }

    public int deleteBookById(int id) {
        return bookmapper.deleteBookById(id);
    }

    public int updateBook(Books books) {
        return bookmapper.updateBook(books);
    }

    public Books queryBookById(int id) {
        return bookmapper.queryBookById(id);
    }

    public List<Books> queryAllBook() {
        return bookmapper.queryAllBook();
    }
}
