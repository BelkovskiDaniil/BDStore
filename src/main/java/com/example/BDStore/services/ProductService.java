package com.example.BDStore.services;

import com.example.BDStore.models.Product;
import lombok.Getter;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Service
public class ProductService {
    @Getter
    private List<Product> products = new ArrayList<>();
    private Long ID = 1L;

    {
        products.add(new Product(++ID,"LongStick", "Looong stick", 300, "Perm", "Belka"));
        products.add(new Product(++ID,"ShortStick", "Shooort stick", 100, "Perm", "Belka"));
    }

    public Product getProductById(Long id) {
        return products.stream().filter(product -> Objects.equals(product.getId(), id)).findFirst().orElse(null);
    }

    public void saveProduct(Product product) {
        product.setId(++ID);
        products.add(product);
    }

    public void deleteProduct(Long id) {
        products.removeIf(product -> Objects.equals(product.getId(), id));
    }
}
