<!DOCTYPE html>
<html>
<head>
    <title>BDSTORE</title>
</head>
<body>
<h1>Hello, BDSTORE!</h1><hr>
<h4>Подробная информация о товаре</h4>
<b>Название товара: </b>${product.title}
<b>Описание товара: </b>${product.description}
<b>Цена товара: </b>${product.price}
<b>Город товара: </b>${product.city}
<b>Автор товара: </b>${product.user}
<hr>
<form action="/product/delete/${product.id}" method="post">
    <input type="submit" value="Удалить товар"/>
</form>
</body>
</html>