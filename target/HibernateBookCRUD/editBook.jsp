<%@ page import="com.bookapp.model.Book" %>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Book</title>
    <style>
        body {
            font-family: Arial;
            background-color: #f2f6ff;
            padding-top: 60px;
        }

        .box {
            background: white;
            width: 400px;
            margin: auto;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 0 10px gray;
        }

        input {
            width: 95%;
            padding: 10px;
            margin: 10px 0;
        }

        button {
            width: 100%;
            padding: 12px;
            background-color: #f59e0b;
            color: white;
            border: none;
            border-radius: 8px;
        }

        a {
            display: block;
            margin-top: 15px;
            text-align: center;
        }
    </style>
</head>
<body>

<%
    Book book = (Book) request.getAttribute("book");
%>

<div class="box">
    <h2>Edit Book</h2>

    <form action="updateBook" method="post">

        <input type="hidden" name="id" value="<%= book.getId() %>">

        <label>Book Title:</label>
        <input type="text" name="title" value="<%= book.getTitle() %>" required>

        <label>Author:</label>
        <input type="text" name="author" value="<%= book.getAuthor() %>" required>

        <label>Price:</label>
        <input type="number" step="0.01" name="price" value="<%= book.getPrice() %>" required>

        <button type="submit">Update Book</button>
    </form>

    <a href="viewBooks">Back to Book List</a>
</div>

</body>
</html>