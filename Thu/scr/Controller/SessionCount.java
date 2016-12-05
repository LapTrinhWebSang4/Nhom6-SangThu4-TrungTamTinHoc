package Controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Application Lifecycle Listener implementation class SessionCount
 *
 */
@WebListener
public class SessionCount implements HttpSessionListener {
	private List sessions = new ArrayList();
    /**
     * Default constructor. 
     */
    public SessionCount() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see HttpSessionListener#sessionCreated(HttpSessionEvent)
     */
    public void sessionCreated(HttpSessionEvent event)  { 

        HttpSession session = event.getSession();
        sessions.add(session.getId());

        session.setAttribute("counter", this);
    }

	/**
     * @see HttpSessionListener#sessionDestroyed(HttpSessionEvent)
     */
    public void sessionDestroyed(HttpSessionEvent event)  { 
    	 HttpSession session = event.getSession();
         sessions.remove(session.getId());

         session.setAttribute("counter", this);
    }
    public int getActiveSessionNumber()
    {
        return sessions.size();
    }
	
}
