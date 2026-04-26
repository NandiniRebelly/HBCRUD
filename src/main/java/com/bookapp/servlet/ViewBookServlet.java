package com.bookapp.servlet;

import java.io.IOException;
import java.util.List;

import com.bookapp.dao.BookDAO;
import com.bookapp.model.Book;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/viewBooks")
public class ViewBookServlet extends HttpServlet {

    private BookDAO bookDAO = new BookDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Book> books = bookDAO.getAllBooks();

        request.setAttribute("books", books);

        RequestDispatcher dispatcher = request.getRequestDispatcher("viewBooks.jsp");
        dispatcher.forward(request, response);
    }
}