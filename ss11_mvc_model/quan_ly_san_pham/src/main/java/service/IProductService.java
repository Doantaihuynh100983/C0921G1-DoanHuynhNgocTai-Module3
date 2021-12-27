package service;

import bean.Product;

import java.util.List;

public interface IProductService {
    List<Product> productList();
    void addProduct(Product product);
    void deleteProduct(int id);
}
