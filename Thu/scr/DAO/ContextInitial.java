package DAO;

import java.util.ArrayList;
import java.util.List;
import java.util.Timer;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import com.mysql.jdbc.ConnectionImpl;
import com.mysql.jdbc.Field;

import Controller.HandleLogin;
import Model.TaiKhoan;
/**
 * Application Lifecycle Listener implementation class ContextInitial
 *
 */
@WebListener
public class ContextInitial implements ServletContextListener {

   
    public ContextInitial() {
        
    }
    public void contextDestroyed(ServletContextEvent event)  { 
    	ServletContext appScope = event.getServletContext();
    	final List<TaiKhoan> OnlineUser = new ArrayList<TaiKhoan>();
    	OnlineUser.removeAll(OnlineUser);
    	appScope.setAttribute(HandleLogin.CLIENTS, OnlineUser);
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent event)  { 
    	ServletContext appScope = event.getServletContext();
    	final List<TaiKhoan> OnlineUser = new ArrayList<TaiKhoan>();
    	appScope.setAttribute(HandleLogin.CLIENTS, OnlineUser);
    	
    }
	
}
