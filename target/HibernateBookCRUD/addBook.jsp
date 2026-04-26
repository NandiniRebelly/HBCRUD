<!DOCTYPE html>
<html>
<head>
    <title>Add Book</title>
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
            background-color: #16a34a;
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

<div class="box">
    <h2>Add Book</h2>

    <form action="addBook" method="post">
        <label>Book Title:</label>
        <input type="text" name="title" required>

        <label>Author:</label>
        <input type="text" name="author" required>

        <label>Price:</label>
        <input type="number" step="0.01" name="price" required>

        <button type="submit">Save Book</button>
    </form>

    <a href="index.jsp">Back to Home</a>
</div>

</body>
</html>