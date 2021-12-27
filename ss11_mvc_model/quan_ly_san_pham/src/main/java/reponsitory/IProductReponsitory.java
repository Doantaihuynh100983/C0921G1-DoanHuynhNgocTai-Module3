package reponsitory;

import bean.Product;

import java.util.List;

public interface IProductReponsitory {
        List<Product> productList();
        void addProduct(Product product);
        void deleteProduct(int id);
        void updateProduct(Product product);
        Product showUpdateProduct(int id);
        List<Product> searchProduct(String name);
}
