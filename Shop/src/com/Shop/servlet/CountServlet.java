package com.Shop.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import com.Shop.dao.cartDao;
import com.Shop.dao.itemDao;
import com.Shop.javabean.CountModel;
import com.Shop.javabean.Item;

/**
 * Servlet implementation class CountServlet
 */
@WebServlet("/CountServlet")
public class CountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CountServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String allItem = request.getParameter("allItem");
		if (allItem != "") {
			String[] allItems = allItem.split(",");
			String uId = (String) request.getSession().getAttribute("uId");

			// 查询每件商品的数量
			cartDao cartdao = new cartDao();
			int[] allNums = new int[allItems.length];
			for (int i = 0; i < allItems.length; i++) {
				allNums[i] = cartdao.itOfNum(uId, allItems[i]);
			}

			// 获得所哟商品的信息
			List<Item> itemList = new ArrayList<Item>();
			itemDao itemdao = new itemDao();
			for (int i = 0; i < allItems.length; i++) {
				itemList.add(itemdao.getItemById(allItems[i]));
			}

			CountModel countModel = new CountModel();
			countModel.allNum = allNums;
			countModel.itemList = itemList;
			request.setAttribute("countModel", countModel);
			// 只能用服务器内部转发
			request.getRequestDispatcher("Count.jsp?").forward(request, response);
		} else {
			response.sendRedirect("/Shop/cartShopping.jsp?uId=" + request.getSession().getAttribute("uId"));
			JOptionPane.showMessageDialog(null, "您还未选择结算商品！");
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
