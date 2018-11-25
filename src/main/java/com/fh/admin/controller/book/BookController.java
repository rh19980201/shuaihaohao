package com.fh.admin.controller.book;

import com.fh.admin.biz.book.IBookService;
import com.fh.admin.po.book.Book;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/book")
public class BookController {
    @Resource(name = "bookService")
    private IBookService bookService;

    @RequestMapping("/toadd")
    public String toAddlist(){
        return "book/addbook";
    }

    @RequestMapping("/tolist")
    public String tolist(){
        return "book/list";
    }


    @RequestMapping("/addbook")
    public Map addBook(Book book){
        bookService.addBook(book);
        return  null;
    }

    @ResponseBody
    @RequestMapping("/querylist")
   public Map queryBook(){
    Map resultmap = new HashMap();
     List<Book> booklist = bookService.queryBook();
        resultmap.put("data", booklist);
    return  resultmap;
   }

   //删除
   @ResponseBody
   @RequestMapping("/deletebook")
   public void deletebook(Integer id){
   bookService.deletebook(id);
   }
  //回显
    @RequestMapping("/toupdatebook")
   public ModelAndView toupdatebook(Integer id, ModelAndView modelAndView){
      Book book =  bookService.toupdatebook(id);
        modelAndView.addObject("book",book);
        modelAndView.setViewName("/book/update");
        return modelAndView;
   }
    @RequestMapping("/update")
   public void  update(Book book){
       bookService.update(book);
   }
}
