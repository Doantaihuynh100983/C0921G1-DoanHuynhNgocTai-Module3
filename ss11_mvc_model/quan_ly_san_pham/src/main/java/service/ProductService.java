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
}
