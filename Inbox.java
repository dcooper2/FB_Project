package facebook;
import java.util.ArrayList;
import java.util.Hashtable;

/**The Inbox class is functional for creating an inbox that holds messages. 
* This class is useful for creating an inbox for a specific user.
* @author Thomas Baird
*/


public class Inbox {


	private ArrayList<Conversation> messages; 
	private User user;	
	/**Sets the user who the inbox belongs to.*/
	public Inbox(User user){
		this.user = user;
		messages =  new ArrayList<Conversation>();
	}
	/**The receiveMessage method takes in a User and an InboxMessage as a parameter, the User as the person who will be receiving the message and an InboxMessage as the message that the user will be receiving in their Inbox. This will add the InboxMessage given as a parameter and add it to the User's messages ArrayList. This will simulate the user receiving the mssage. The purpose of this message is to receive the message that another 
* User has sent.
@param User takes in a User object called receiver.
@param InboxMessage takes in an InboxMessage object called message.
*/
	public void receiveMessage(User receiver, InboxMessage message){
	}
	/**The sendMessage method  will actually send a message, based upon the InboxMessage parameter
* from the User which is called author to another User (receiver). This method will return
* nothing and will "send" the message by adding it to the receiver User's messages ArrayList. The purpose of this method is to actually do the sending of a
* message to another user. This method differs from receiveMessage() in the way
* that it does the receiving of the message, not the sending.
@param User takes in a User object called receiver.
@param User takes in a User object called author.
@param InboxMessage takes in an InboxMessage object called message.
*/
	public void sendMessage(User receiver, User author, InboxMessage message){
		//some code goes here
	}
	/**The getMessage method takes no parameters and returns an ArrayList of type 
* InboxMessage containing all of the messages belonging to the User's Inbox which this method is called upon.
* This method will return all of the User's messages that have been added to their messages
* ArrayList. 
*/
	public ArrayList<Conversation> getConversations(){
		return messages;
	}
	/**The deleteMessage method takes one parameter, of type InboxMessage, which is the 
* desired message to be deleted, returning nothing. This method is called on a user and is 
* given a InboxMessage as the parameter. The messages will then be searched for in the User's
* ArrayList of messages and when found the message will be removed.
@param InboxMessage takes in an InboxMessage object called message.
*/
	public void deleteConversation(Conversation message){
		for(int x = 0; x < messages.size(); x++){
			if(messages.get(x) == message){
				messages.remove(x);
			}
		}
	}
	/**The save method will simply save all of the current information in the current 
* Inbox object, returning nothing, saving the information as the specific User's email.inbox. This method will
* use printWriter and fileWriter to accomplish this process. This method will not return 
* anything it will simply create/ouput to a file.
*/
	private void save(){
		//some code goes here
	}
}
