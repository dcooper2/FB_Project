package facebook;


/**This class represents the type of privacy settings that a user's settings
* will contain.
* @author Thomas Baird
*/
public class Settings {

	private Boolean pubOrPrivate;

	/**Sets the initial privacy settings*/
	public Settings(Boolean pubOrPrivate){
		this.pubOrPrivate = pubOrPrivate;
	}
	/**The getPrivacy method is called upon a Settings object, taking no parameters, 
* returning a boolean. This method is used to return the privacy settings of a Settings object.
* If false is returned it means public, when it returns true it means private.
*/
	public Boolean getPrivacy(){
		return pubOrPrivate;
	}
	/**The setPrivacy method is called upon a Settings object, taking a Boolean 
* (pubOrPrivate) as a parameter, and returning nothing. This method will take in the 
* pubOrPrivate parameter and either set or change the Settings' pubOrPrivate instance.
@param Boolean Takes in the type of privacy for the Settings object.
*/
	public void setPrivacy(Boolean pubOrPrivate){
		pubOrPrivate = this.pubOrPrivate;
	}
	/**The save method will simply save all of the current information in the current 
* Settings object, returning nothing, saving the information as the specific User's email
* .Settings. This method will use printWriter and fileWriter to accomplish this process.
* This method will not return anything it will simply create/ouput to a file.
*/
	private void save(){
		//some code goes here
	}
}	
