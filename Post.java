package facebook;
import java.util.ArrayList;
import java.util.Date;

/**
 * Contains methods to create a String of text that can be posted to a User's
 * <code>Wall</code> on his/her <i>Profile Page </i>. The size of the text String is limited to
 * no more than 1,000 characters. 
 * 
 *
 * @see Comment
 * @author Dylan Cooper
 */
public class Post{
	private User author;
	private User recipient;
	private Date date;
	private String text;
	private ArrayList<Comment> comments;
	private ArrayList<Tag> tags;

	/**
	 * Returns the User object who created the Post object on which the 
	 * method is called upon. The User object must be a valid, registered
	 * user in order to create a Post object.
	 * @author Dylan Cooper
	 */
	public User getAuthor(){
		return author;
	}
	/**
	 * Returns the User object who recieved the Post object. The Post object
	 * can be added to a recipient User object's {@link Wall}. 
	 * If the User object that received the Post is also the author of the
	 * Post object, then that User object is returned. 
	 * @author Dylan Cooper
	 */
	public User getRecipient(){
		return recipient;
	}
	/**
	 * Returns a Date object representing the time at which the Post object
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
	 * Post object. The String is limited to a maximum of 1,000 
	 * characters. If the user attempts to exceed the character limit, no
	 * additional characters will be accepted beyond 1,000 characters. 
	 * @author Dylan Cooper 
	 */
	public String getText(){
		return text;
	}
	/**
	 * Returns an ArrayList of Tag objects that have been associated with
	 * the Post object. If no Tag objects have been created for the Post
	 * object, the method returns an empty ArrayList. See also the 
	 * {@link Tag} class.
	 * @return ArrayList of Tag objects
	 * @author Dylan Cooper
	 */
	public ArrayList<Tag> getTag(){
		return tags;
	}
	/**
	 * Adds a Tag object to the ArrayList from the {@link Post#getTag} 
	 * method. Appends the Tag object being added to the Post object to the
	 * end slot of the ArrayList of Tag objects.
	 * @throws NullPointerException if the Tag object is null
	 * @author Dylan Cooper 
	 */
	public void addTag(){

	}
	/**
	 * Returns an ArrayList of Comment objects posted to the Post object.
	 * If no Comment objects have been created to the Post object, then the
	 * method returns an empty ArrayList. See also the {@link Comment} class
	 * . 
	 * @return an ArrayList of Comment objects 
	 * @author Dylan Cooper
	 */
	public ArrayList<Comment> getComments(){
		return comments;
	}
	/**
	 * Instantiates the instance variables author, recipient, date, text,
	 * comments, and tags.
	 *
	 * @param author User object representing the user who created the Post 	 * object.
	 * @param recipient User object representing the user who is recieving
	 * the Post object.
	 * @param date Date object of the time the Post object was created.
	 * @param text String of text given by the user.
	 * @param comments ArrayList of Comment objects.
	 * @param tags ArrayList of Tag objects.
	 * @author Dylan Cooper
	 */
	public Post(User author, User recipient, String text){
                ArrayList<Comment> comments = new ArrayList<Comment>();
                ArrayList<User> tags = new ArrayList<User>();
                date = new SimpleDateFormat("MM/dd/yyyy hh:mm:ss").format(Calendar.getInstance().getTime());
        }
}
