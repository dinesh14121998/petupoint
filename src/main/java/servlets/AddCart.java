package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CartDAO;
import impl.CartDAOImpl;
import model.Cart;




@WebServlet(urlPatterns="/AddCart")
public class AddCart extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		int pid = Integer.parseInt(req.getParameter("pid"));
		String email = req.getParameter("email");
		int qty = Integer.parseInt(req.getParameter("qty"));
		
		Cart k = new Cart();
		
		k.setProductId(pid);
		k.setEmail(email);
		k.setQty(qty);
		
		CartDAO kdao = new CartDAOImpl();
		
		kdao.insert(k);
		
		resp.sendRedirect( "/" + getServletContext().getServletContextName() + "/ViewCart.jsp?email=" + email);
		
	}

	
}
