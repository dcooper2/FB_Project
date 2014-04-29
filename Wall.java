package facebook;

import java.util.ArrayList;

/**The Wall class represnets a user's wall that can hold posts.
* @author Thomas Baird
*/
public class Wall {

	private ArrayList<Post> posts = new ArrayList<Post>();

	/**No necessary code in the constructer because there is nothing to be set.*/
	public Wall(){
	
	}
	/**This method will be called on a Wall object and return an ArrayList of type Post.
* The purpose of this method is to return the current posts that have been 
* added to the User's Wall object.
* This method will return the Wall object's posts ArrayList.
*/
	public ArrayList<Post> getPosts(){
		return posts;
	}
}

