package facebook;
import java.util.Hashtable;
import java.util.Collection;

/**
 * This singleton class obtains existing User objects to add into a Hashtable. 
 * The class also has methods to create new User objects, return all User
 * objects, and to add a persistence layer. This class is a member of the 
 * <code>facebook package</code>.
 * @author Dylan Cooper
 */
public class UserRepository{
	private static UserRepository theInstance;
	private Hashtable<String, User> users;

	/**
	 * Returns the singleton instance of UserRepository. 
	 * If theInstance is null, a new UserRepository object will be returned.
	 * If theInstance is not null, the already existing object will be
	 * returned.
	 * @author Dylan Cooper
	 */
	public static UserRepository instance(){
		if (theInstance == null){
			theInstance = new UserRepository();
		}
		return theInstance;	
	}
	/**
	 * Instantiates a Hashtable to hold all the existing User objects.
	 * The Hashtable key will be the String of the User objects username
	 * with the value as the corresponding User object.
	 * @author Dylan Cooper  
	 */
	private UserRepository(){
		users = new Hashtable<String, User>();
	}
	/**
	 * Returns a new User object based on the specified username, password,
	 * and email address parameters as Strings. 
	 * The method then adds the
	 * newly created User object into the Hashtable of existing users.
	 * @param username the string representing the user's unique username
	 * @param password the string representing the user's password
	 * @param email the string representing the user's email address
	 * @author Dylan Cooper
	 */
	public User createNewUser(String username, String password, String email){
		User u = new User(username, email, password);
		users.put(email, u);
		return u;
	}
	/**
	 * Returns a Collection of User objects representing all existing users
	 * loaded into the Hashtable. The public method returns an unsorted 
	 * Collection of User objects.     
	 * @author Dylan Cooper
	 */
	public Collection<User> getAllUsers(){
		return users.values();
	}
	public boolean check(String email){
		return users.containsKey(email);
	}
	/**
	 * Hydrates all registered users from the .user files to form a
	 * persistence layer. The bootstrap method has no return type or
	 * parameters.  
	 * If an anonymous user has not registered with
	 * the system, then a .user file will not have been previously created
	 * to hydrate that user if the system shuts down. 
	 * @throws NullPointerException If the filename is null.
	 * @author Dylan Cooper.
	 */
	private static void bootstrap(){

	}

	public User getUser(String email){
		return users.get(email);
	}
}
