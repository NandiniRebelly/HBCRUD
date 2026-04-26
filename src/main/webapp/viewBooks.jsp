<%@ page import="java.util.List" %>
<%@ page import="com.bookapp.model.Book" %>

<!DOCTYPE html>
<html>
<head>
    <title>View Books</title>
    <style>
        body {
            font-family: Arial;
            background-color: #f2f6ff;
            padding: 40px;
        }

        h2 {
            text-align: center;
        }

        table {
            width: 80%;
            margin: auto;
            border-collapse: collapse;
            background: white;
        }

        th, td {
            border: 1px solid #999;
            padding: 12px;
            text-align: center;
        }

        th {
            background-color: #2563eb;
            color: white;
        }

        a {
            padding: 6px 12px;
            text-decoration: none;
            border-radius: 5px;
        }

        .edit {
            background-color: #f59e0b;
            color: white;
        }

        .delete {
            background-color: #dc2626;
            color: white;
        }

        .home {
            display: block;
            text-align: center;
            margin-top: 25px;
        }
    </style>
</head>
<body>

<h2>Book List</h2>

<table>
    <tr>
        <th>ID</th>
        <th>Book Title</th>
        <th>Author</th>
        <th>Price</th>
        <th>Actions</th>
    </tr>

    <%
        List<Book> books = (List<Book>) request.getAttribute("books");

        if (books != null && !books.isEmpty()) {
            for (Book book : books) {
    %>

    <tr>
        <td><%= book.getId() %></td>
        <td><%= book.getTitle() %></td>
        <td><%= book.getAuthor() %></td>
        <td><%= book.getPrice() %></td>
        <td>
            <a class="edit" href="editBook?id=<%= book.getId() %>">Edit</a>
            <a class="delete" href="deleteBook?id=<%= book.getId() %>"
               onclick="return confirm('Are you sure you want to delete this book?')">
               Delete
            </a>
        </td>
    </tr>

    <%
            }
        } else {
    %>

    <tr>
        <td colspan="5">No books found</td>
    </tr>

    <%
        }
    %>

</table>

<a class="home" href="index.jsp">Back to Home</a>

</body>
</html>