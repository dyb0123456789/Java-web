package com.Shop.servlet;

import java.awt.HeadlessException;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import com.Shop.dao.sqlHelper;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ResultSet rs;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterServlet() {
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

		// 用来注册用户 对数据库进行增加

		String id = request.getParameter("rg_id");
		String pwd = request.getParameter("rg_pwd");
		String pwd2 = request.getParameter("rg_pwd2");

		String sql2 = "select * from login where id =?";
		String[] param2 = { id };
		sqlHelper sh2 = new sqlHelper();
		rs = sh2.query(sql2, param2);
		// System.out.println(id+pwd+name);
		if (id.equals("") || pwd.equals("") || pwd2.equals("")) {
			response.sendRedirect("/Shop/register.jsp?info=1");
		} else
			try {
				if (rs.next()) {
					response.sendRedirect("/Shop/register.jsp?info=3");
				} else {
					if (!pwd.equals(pwd2)) {
						response.sendRedirect("/Shop/register.jsp?info=2");
					} else {
						String sql = "insert into login values(?,?)";
						String[] param = { id, pwd };
						sqlHelper sh = new sqlHelper();
						if (sh.update(sql, param)) {
							JOptionPane.showMessageDialog(null, "更新成功!");
							response.sendRedirect("/Shop/login_user.jsp?info");
						} else {
							JOptionPane.showMessageDialog(null, "更新失败!");
							response.sendRedirect("/Shop/login_user.jsp?info");
						}
					}
				}
			} catch (HeadlessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
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
