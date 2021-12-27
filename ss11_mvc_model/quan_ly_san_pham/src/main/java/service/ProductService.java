package service;

import bean.Product;
import reponsitory.IProductReponsitory;
import reponsitory.ProductReponsitory;

import java.util.List;

public class ProductService implements IProductService{
        private IProductReponsitory iProductReponsitory = new ProductReponsitory();
    @Override
    public List<Product> productList() {
        return iProductReponsitory.productList();
    }


    @Override
    public void addProduct(Product product) {
            this.iProductReponsitory.addProduct(product);
    }

    @Override
    public void deleteProduct(int id) {
            this.iProductReponsitory.deleteProduct(id);
    }

    @Override
    public void updateProduct(Product product) {
            this.iProductReponsitory.updateProduct(product);
    }

    @Override
    public Product showUpdateProduct(int id) {
        return  this.iProductReponsitory.showUpdateProduct(id);
    }

    @Override
    public List<Product> searchProduct(String name) {
        return this.iProductReponsitory.searchProduct(name);
    }
}
