package com.helper;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class FactoryProvider {

	public static SessionFactory factory;

	public static SessionFactory getSessionFactory() {

            // Build session factory from cfg.xml
            factory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();

            return factory;
	}

	public static void closeFactory() {

		if (factory!=null && factory.isOpen()) {
			factory.close();
		}

	}
}
