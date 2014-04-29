package facebook;

import java.util.ArrayList;

/**The Photo class is used to represent an image and the User comments and tags that go along with that
* @author Thomas Baird
*/
public class Photo {

	private String photoUrl;
	private ArrayList<Comment> comments = new ArrayList<Comment>();
	private ArrayList<User> tags = new ArrayList<User>();

	/** Sets the url for the photo*/
	public Photo(String photoUrl){
		this.photoUrl = photoUrl;
	}
	/**The getFileName is called upon a photo object, taking no parameters, and returning 
* a String of the photo's url.
*/ 
	public String getFileName(){
		return photoUrl;
	}
	/**The getComments method returns an ArrayList of type Comment, taking in no 
* parameters. This method will be called on a Photo object and returning an ArrayList of all 
* of the Comment objects that have been added to the the Photo's comments ArrayList.
*/ 
	public ArrayList<Comment> getComments(){
		return comments;
	}
	/**The getTags method returns an ArrayList of type User, taking in no parameters.
* This method will be called on a Photo object and returning an ArrayList of all the User's 
* who are tagged in the photo object and added to the ArrayList tags. The functionality of
* this method is to determine who is tagged in the current Photo object.
*/	
	public ArrayList<User> getTags(){
		return tags;
	}
	/**The commentOn method will return nothing and take in one parameter,
* a Comment, which will be added to the Photo's comments ArrayList. This method will not need
* any other parameters because the Comment parameter contains all necessary variables. The purpose of this object is for a User to be able to Comment on another
* User's Post. 
@param Comment Takes in an object of type Comment named comment.
*/
	public void commentOn(Comment comment){
		comments.add(comment);
	}
	/**The save method will simply save all of the current information in the current
* Photo object, returning nothing, saving the information as the specific photoNumber.Photo.
* This method will use printWriter and fileWriter to accomplish this process. This method will
* return nothing, it will simply create/output to a file.
*/
	private void save(){
		//Some code goes here
	}
}

