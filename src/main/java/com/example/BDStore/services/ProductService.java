package com.example.BDStore.services;

import com.example.BDStore.models.Product;
import com.example.BDStore.repositories.ProductReposiroty;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;

@Service
@Slf4j
@RequiredArgsConstructor
public class ProductService {
    private final ProductReposiroty productReposiroty;

    public List<Product> listProducts(String title) {
        if (title != null) return productReposiroty.findByTitle(title);
        return productReposiroty.findAll();
    }

    public Product getProductById(Long id) {
        return productReposiroty.findById(id).orElse(null);
    }

    public void saveProduct(Product product) {
        log.info("Saving {}", product);
        productReposiroty.save(product);
    }

    public void deleteProduct(Long id) {
        productReposiroty.deleteById(id);
    }
}
