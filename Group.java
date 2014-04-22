package facebook;
import java.util.ArrayList;


/**
 * Contains methods to access the return types and objects associated with a
 * Group object. A Group represents an ArrayList of <code>User</code> objects
 * that are members of the Group. Each <code>member</code> can interact with
 * the <code>Group</code> through the Group <code>Wall</code> and/or 
 * <code>Settings</code>.
 * @see Wall
 * @see Settings
 * @author Dylan Cooper
 */
public class Group{
	private String groupname;
	private ArrayList<User> members;
	private User groupCreator;
	private ArrayList<Wall> wall;
	private ArrayList<Settings> groupSettings;	

	/**
	 * Returns a String representing the name of the Group object. The name
	 * will be used to identify the specific Group object to be accessed.
	 * @return groupName a String of the Group object name
	 * @author Dylan Cooper
	 */
	public String getName(){
		return groupname;
	}
	/**
	 * Returns the <code>ArrayList</code> of <code>User</code> objects that
	 * have been previously added to the Group object upon method call. 
	 * <i>Members</i> of the Group must be registered with the system. If
	 * a user was not added to <code>members</code> in the 
	 * {@link Group#addMember} method, then that user will not appear in the
	 * <code>ArrayList</code>. If no users have been added to <code>members
	 * </code>, an empty <code>ArrayList</code> is returned.
	 *
	 * @author Dylan Cooper
	 */
	public ArrayList<User> getMembers(){
		return members;
	}
	/**
         * Returns a single <code>User</code> object representing the user who
	 * created the Group. A Group object must be intialized to call method.
	 * The User object must be a valid, registered user with the system. If
	 * no Group object was initialized, an Exception will be thrown.
	 * @throws NullPointerException if Group object was not initialized prior to method call  
 	 * @author Dylan Cooper
        */
        public User getCreator(){
		return groupCreator;
        }
	/**
         * Returns an <code>ArrayList</code> of {@link Wall} objects reprenting
	 * each user and <code>member's</code> view of the Group Wall. If a 
	 * member has {@link Settings} configured, the member's view of the
	 * Group Wall will represent the preferences enabled. A member without
	 * {@link Settings} configured, a User not added as a <code>member</code>, or a user not registered with the system will see the default <code>Wall</code>.
	 * If a Wall object has not yet been created, an empty <code>ArrayList</code> is returned.
	 * @see Settings
	 * @see Wall
	 * @author Dylan Cooper
        */
        public ArrayList<Wall> getWall(){
		return wall;
        }
	/**
       	 * Returns an <code>ArrayList</code> of <code>Settings</code> objects
	 * representing the preferences of the Group page visibility. If no
	 * <code>Settings</code> have been enabled by the <code>groupCreator
	 * </code> User object, then the default <code>Settings</code> will be
	 * visible to <code>members</code>, registered users, and non-registered
	 * users.
	 * @author Dylan Cooper 
        */
        public ArrayList<Settings> getGroupSettings(){
		return groupSettings;
        }
	/**
         * Adds a given User object to the <code>members</code> ArrayList of
	 * User objects. If the given <code>user</code> is already in
	 * <code>members</code>, the ArrayList <code>members</code> is unchanged
	 * . If there are no existing User objects in <code>members</code>, the
	 * passed User object will be added into the first slot in <code>members</code>.
	 * If the User object is null, then the method will throw an exception.
	 * If there are existing User objects in <code>members</code>, the 
	 * passed User object will be added to the last slot in <code>members</code>.
	 *
	 * @throws NullPointerException if passed User object is null
	 * @author Dylan Cooper
        */
        public void addMember(User user){

        }
	/**
         * Deletes a given User object from the ArrayList containing the members
	 * of the Group. If the passed User object is found in <code>members</code> ArrayList, then the passed User will be removed from <code>members</code>.
	 * If the passed User object is not found in <code>members</code>, then
	 * no objects in the ArrayList will be deleted. If <code>members</code>
	 * is empty, it will remain unchanged.
	 * @throws NullPointerException if passed User object is null
 	 * @author Dylan Cooper
        */
        public void removeMember(User user){

        }
	/**
         * Enables the Group object to alter the passed <code>ArrayList</code>
	 * of <code>Settings</code> objects. A Group may change a <code>Settings
	 * </code> object from the passed ArrayList based on the Group 
	 * preferences which will affect the object the Group object modifies.
	 * If no <code>Settings</code> objects in the passed ArrayList are
	 * modified, the <code>Settings</code> remain unchanged. 
	 * @see Settings
 	 * @throws NullPointerException if passed ArrayList is null
	 * @author Dylan Cooper
        */
        public void changeGroupSettings(ArrayList<Settings> groupSettings){

        }
	/**
         * Constructs a Group object.
	 * @param groupName String of the Group's name
	 * @param groupCreator User object of who founded the Group
	 * @param groupSettings ArrayList of <code>Settings</code> objects
	 * @author Dylan Cooper
        */
        private void Group(String groupname, User groupCreator, ArrayList<Settings> settings){

        }
}
