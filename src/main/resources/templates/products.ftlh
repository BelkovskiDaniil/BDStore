<!DOCTYPE html>
<html>
<head>
    <title>BDSTORE</title>
</head>
<body>
<h1>Hello, BDSTORE!</h1><hr>
<h4>Товары из Махачкалы</h4>
<form action="/" method="get">
    Поиск по названию объявления <label>
        <input type="text" name="title">
    </label>
    <input type="submit" value="Поиск">
</form>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price}$ | <a href="/product/${product.id}">Подробнее...</a></p>
    </div>
    <#else>
    <h3>Товаров нет</h3>
</#list>
<h3>Создать новый товар</h3>
<form action = "/product/create" method="post">
    Название товара: <label>
        <input type="text" name="title"/>
    </label><br><br>
    Описание товара: <label>
        <input type="text" name="description"/>
    </label><br><br>
    Цена товара: <label>
        <input type="number" name="price"/>
    </label><br><br>
    Город товара: <label>
        <input type="text" name="city"/>
    </label><br><br>
    Автор товара: <label>
        <input type="text" name="user"/>
    </label><br><br>
    <input type="submit" value="Добавить товар"/><br><br>
</form>
</body>
</html>