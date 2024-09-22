<!DOCTYPE html>
<html>
<head>
    <title>BDSTORE</title>
</head>
<body>
<h1>Hello, BDSTORE!</h1><hr>
<h4>Товары из Махачкалы</h4>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price}$ | <a href="/product/${product.id}">Подробнее...</a></p>
    </div>
</#list>
<h3>Создать новый товар</h3>
<form action = "/product/create" method="post">
    Название товара: <input type="text" name="title"/><br><br>
    Описание товара: <input type="text" name="description"/><br><br>
    Цена товара: <input type="number" name="price"/><br><br>
    Город товара: <input type="text" name="city"/><br><br>
    Автор товара: <input type="text" name="user"/><br><br>
    <input type="submit" value="Добавить товар"/><br><br>
</form>
</body>
</html>