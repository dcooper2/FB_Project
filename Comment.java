package facebook;
import java.util.ArrayList;
import java.util.Date;

/**
 *Forms an object containing a String of text with a <code>Date</code> and
 * <code>Tag</code> object(s). The <code>Comment</code> object is instantiated
 * by a User object to be associated with another User object.
 * @see Post
 * @author Dylan Cooper
*/
public class Comment{
	private User author;
	private User recipient;
	private Date date;
	private String text;
	private ArrayList<User> tags;

	/**
	 * Returns the <code>User</code> object who created the <code>Comment
	 * </code > object on which the method is called upon. The <code>User
	 * </code> object
	 *  must be a valid, registered user in order to create a <code>Comment
	 * </code>  object.
         * @author Dylan Cooper
	 */
	public User getAuthor(){
		return author;
	}
	/**
	 * Returns the User object who recieved the Comment object. The Comment object
         * can be added to a recipient User object's {@link Wall}. 
         * If the User object that received the Comment is also the author of the
         * Comment object, then that User object is returned. 
         * @author Dylan Cooper
	*/
	public User getRecipient(){
		return recipient;
	}
	/**
	 * Returns a Date object representing the time at which the Comment object
         * was formed. The Date object returned represents the number of 
         * miliseconds passed from the time at which the Date object was 
         * first allocated.
         * @author Dylan Cooper 
	*/
	public Date getDate(){
		return date;
	}
	/**
	 * Returns a String representing the text the author applied to the
         * Comment object. The String is limited to a maximum of 1,000 
         * characters. If the user attempts to exceed the character limit, no
         * additional characters will be accepted beyond 1,000 characters. 
         * @author Dylan Cooper 
	*/
	public String getText(){
		return text;
	}
	/**
	 * Returns an ArrayList of Tag objects that have been associated with
         * the Comment object. If no Tag objects have been created for the 
	 * Comment object, the method returns an empty ArrayList. 
	 * @see Tag
         * @return ArrayList of Tag objects
         * @author Dylan Cooper
	*/
	public ArrayList<User> getTag(){
		return tags; 
	}
	/**
	 * Adds a Tag object to the ArrayList from the {@link Comment#getTag} 
         * method. Appends the Tag object being added to the Comment object
	 * to the last slot of the ArrayList of Tag objects.
         * @throws NullPointerException if the Tag object is null
         * @author Dylan Cooper
	*/
	public void addTag(){

	}
	/**
	 * Contructs a Comment object with the instance variables author, 
	 * recipient, date, text, and tags.
         * @param author User object representing the user who created the 
	 * Comment object.
         * @param recipient User object representing the user who is recieving
         * the Comment object.
         * @param date Date object of the time the Comment object was created.
         * @param text String of text given by the user.
         * @param tags ArrayList of Tag objects.
         * @author Dylan Cooper
	*/
	private void Comment(User author, User recipient, Date date, String text, ArrayList<User> tags){

	}

}
