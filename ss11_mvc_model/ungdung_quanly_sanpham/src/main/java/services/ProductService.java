package services;

import models.Pruduct;

import java.util.List;

public interface ProductService {
        List<Pruduct> getAllProduct();
        void addProduct(String name,double gia ,String images);
        Pruduct getProductById(int id);
        void deleteProduct(int id);
        List<Pruduct> searchProduct(String txt);
        void updateProduct(String name,double gia ,String images,int id);
}
