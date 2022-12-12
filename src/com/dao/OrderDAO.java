package com.dao;

import java.util.List;

import com.model.Order;


public interface OrderDAO {

	boolean placeOrder(Order order);
	List<Order> getAllOrders();
	Order searchOrder(int orderId);
	boolean changeOrderStatusToConfirmed(int orderId);
	boolean changeOrderStatusToCancelled(int orderId);
}
