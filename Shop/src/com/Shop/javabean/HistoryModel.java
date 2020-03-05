/**
 * 用来管理历史纪录
 * 把历史记录保存在一个list里面
 */
package com.Shop.javabean;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.Shop.dao.itemDao;

public class HistoryModel {
	public static List<Item> historyList = new ArrayList();

	// 看历史记录中是否已经存在了
	// 如果不存在的话就添加到historylist中
	// 如果已经存在了就删除以前的添加新的

	public void addToList(String iId) {

		itemDao itemdao = new itemDao();
		Item i = itemdao.getItemById(iId);

		if (isInList(iId) == false) {
			// 根据id查到商品
			historyList.add(i);

		} else {

			deleteFromList(iId);
			historyList.add(i);
		}
	}

	public boolean isInList(String iId) {
		boolean b = false;

		Iterator it = historyList.iterator();
		while (it.hasNext()) {

			Item i = (Item) it.next();
			if (i.getId().equals(iId)) {
				b = true;
				break;
			}
		}

		return b;
	}

	public void deleteFromList(String iId) {
		Iterator it = historyList.iterator();
		while (it.hasNext()) {

			Item i = (Item) it.next();
			if (i.getId().equals(iId)) {
				historyList.remove(i);
				break;
			}
		}
	}
}
