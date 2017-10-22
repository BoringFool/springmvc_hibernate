package com.zm.test;

import java.sql.SQLException;

import javax.sql.DataSource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.zm.model.User;

public class Test {

	public static void main(String[] args) {

		try {
			testDataSource();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	private static ApplicationContext ctx = null;

	
	public static void testDataSource() throws SQLException {
		// ���spring����
		ctx = new ClassPathXmlApplicationContext("beans.xml");
		// System.out.println(ctx);
		// ������ݿ�����
		DataSource dataSource = ctx.getBean(DataSource.class);

		// System.out.println(dataSource.getConnection().toString());
		// ���hibernate����
		SessionFactory sessionFactory = ctx.getBean(SessionFactory.class);
		System.out.println(sessionFactory);

		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		// �������ݿ�
		User u= new User();
		u.setName("����");
		u.setPassword("804998");
		session.save(u);
		tx.commit();
		session.close();

	}
}
