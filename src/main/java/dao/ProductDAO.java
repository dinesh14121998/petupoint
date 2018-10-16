package dao;

import java.util.List;

import model.Product;

public interface ProductDAO {
	void insert(Product p);
	void update(Product p);
	void delete(int pid);
	
	Product getProduct(int pid);
	List<Product> getProduct(String category);
	List<Product> getProduct();

}
