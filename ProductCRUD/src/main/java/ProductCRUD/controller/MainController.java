package ProductCRUD.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import ProductCRUD.dao.ProductDao;
import ProductCRUD.model.Product;

@Controller
public class MainController {
	
	@Autowired
	private ProductDao productDao;
	@RequestMapping("/")
	public String home(Model m) {
		List<Product> products=productDao.getProducts();
		m.addAttribute("products",products);
		return "index";
	}
	//show add product form
	@RequestMapping("/add-product")
	public String addProduct(Model m) {
		m.addAttribute("title","Add Product");
		return "add_product_form";
	}
	//handle add product here 
	@RequestMapping(value="/handle-product",method = RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Product product,HttpServletRequest request) {
		System.out.println(product);
		productDao.createProduct(product);
		RedirectView redirectView=new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
	}
	//handle deleting the product here 
		@RequestMapping(value="/delete/{id}")
		public RedirectView deleteProduct(@PathVariable("id") int id,HttpServletRequest request) {
			productDao.deleteProduct(id);
			RedirectView redirectView=new RedirectView();
			redirectView.setUrl(request.getContextPath()+"/");
			return redirectView;
		}
		//handle editing the product here 
		@RequestMapping(value="/update/{id}")
		public String updateProduct(@PathVariable("id") int id,Model model) {
			Product product=this.productDao.getProduct(id);
			model.addAttribute("product",product);
			return "update_form";
		}
}