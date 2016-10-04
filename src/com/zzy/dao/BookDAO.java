package com.zzy.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.zzy.bean.Author;
import com.zzy.bean.Book;
import com.zzy.bean.BookDetail;

public class BookDAO {
	private DBConnection DBCon = new DBConnection();
	private List<Book> list = null;
	private ResultSet res = null;
	private final String TABLE_BOOK = "Book";
	private final String TABLE_AUTHOR = "Author";
	
	private boolean addBook(Book book) {
		if(book == null)
			return false;
		String sql = "insert into "+TABLE_BOOK+" values('"+
			book.getISBN()			+"','"+
			book.getTitle()			+"','"+
			book.getAuthorID()		+"','"+
			book.getPublisher()		+"','"+
			book.getPublishDate()	+"','"+
			book.getPrice()			+"'"+
		")";
		DBCon.execSql(sql);
		return true;
	}
	
	private boolean addAuthor(Author author) {
		if(author == null) return false;
		String sql = "insert into " + TABLE_AUTHOR + " values('"+
				author.getAuthorId()	+"','"+
				author.getName()		+"','"+
				author.getAge()			+"','"+
				author.getCountry()		+"'"+
			")";
		DBCon.execSql(sql);
		return true;
	}
	
	public boolean addAuthorAndBook(Author author, Book book) {
		if(book == null) 
			return false;
		if(existAuthor(book.getAuthor()))
			return addBook(book);
		else {
			if(author == null) return false; 
			if(!addAuthor(author)) return false;
			return addBook(book);
		}
	}
	
	public boolean deleteBook(String isbn) {
		String sql = "delete from "+TABLE_BOOK+" where "+Book.ISBN_STR+"="+isbn;
		int st = DBCon.executeQuery(sql);
		return st == 1;
	}
	
	private Author getAuthorFromReset() {
		Author author = new Author();
		try {
			author.setAge(res.getString(Author.AGE_STR));
			author.setAuthorId(res.getString(Author.AUTHORID_STR));
			author.setCountry(res.getString(Author.COUNTRY_STR));
			author.setName(res.getString(Author.NAME_STR));
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		return author;
	}

	private Book getBookFromResset() {
		Book book = new Book();
		try {
			book.setAuthorID(res.getString(Book.AUTHORID_STR));
			book.setPublishDate(res.getString(Book.PUBLISHDATE_STR));
			book.setISBN(res.getString(Book.ISBN_STR));
			book.setPrice(res.getString(Book.PRICE_STR));
			book.setPublisher(res.getString(Book.PUBLISHER_STR));
			book.setTitle(res.getString(Book.TITLE_STR));
		} catch (Exception e) {
			return null;
		}
		return book;
	}

	public List<Book> searchByAuthor(String AuthorName) {
		list = new ArrayList<Book>();
		String sql = "select * from " + TABLE_AUTHOR + " where name='"+AuthorName+"'";
		res = DBCon.select(sql);
		List<String> authorIds = new ArrayList<String>(); 
		try {
			while(res.next()){
				String id = res.getString("AuthorID");
				authorIds.add(id);
			}
			for(String id : authorIds) {
				sql = "select * from "+ TABLE_BOOK + " where AuthorID = " + id;
				res = DBCon.select(sql);
				while(res.next()) {
					Book book = getBookFromResset();
					list.add(book);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		return list;
	}

	private boolean existAuthor(String author) {
		String sql = "select * from " + TABLE_AUTHOR + " where Name = " + author;
		res = DBCon.select(sql);
		try {
			return res.next();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	public BookDetail viewBookDetail(String isbn) {
		BookDetail bookDetail = null;
		String sql = "select * from " + TABLE_BOOK + " where ISBN = "+isbn;
		res = DBCon.select(sql);
		try {
			if(res.next()) {
				Book book = getBookFromResset();
				String AuthorID = book.getAuthorID();
				sql = "select * from "+TABLE_AUTHOR+" where "+Author.AUTHORID_STR + "="+AuthorID;
				res = DBCon.select(sql);
				if(res.next()) {
					Author author = getAuthorFromReset();
					bookDetail = new BookDetail(book,author);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		return bookDetail;
	}

	public List<Book> viewBookList() {
		list = new ArrayList<Book>();
		String sql = "select * from " + TABLE_BOOK;
		res = DBCon.select(sql);
		try {
			while(res.next()) {
				Book book = getBookFromResset();
				list.add(book);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			list = null;
		}
		return list;
	}
}
