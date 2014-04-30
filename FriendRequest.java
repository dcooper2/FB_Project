package facebook;
import facebook.*;
import java.util.ArrayList;
import java.util.Date;
/**
	Message sent to other users requesting to be friends.
	@author Dominic
*/
public class FriendRequest{
	private User sender;
	private User receiver;
	private boolean hasBeenAccepted; 
	private boolean hasBeenRejected; 
	private Date date;	


	public String toString(){
                String s = new String();
                s = String.valueOf(date.getTime());
                return s;
        }

	public FriendRequest(User s, User r)
	{
		sender = s;
		receiver = r;
		hasBeenAccepted = false;
		hasBeenRejected = false;
		Date date = new Date();
	}

	/**
	Returns the {@link User} who sent the friend request.
	@return Returns the {@link User} who initially sent the request.
	*/
	public User getSender()
	{
		return sender;
	}

	/**
        Returns the {@link User} who will receive the friend request.
        @return Returns the {@link User} who will be sent the request.
        */
	public User getReceiver()
	{
		return receiver;
	}

	/**
        Returns the {@link Date} of when the request was created.
        @return Returns the {@link Date} of the creation of the request.
        */
	public Date getDate()
	{
		return date;
	}
/* whole method does nothing that isn't already done in User
	/**
        Marks the friend request as having been accepted.
        
	public void accept()
	{
		hasBeenAccepted = true;
		//What should be done here that isn't done in the User method?
	}
*/ 

/* whole method does nothing that isn't already done in User
	/**
        Marks the friend request as having been rejected.
        
	public void reject()
        {
                hasBeenRejected = true;
                //What should be done here that isn't done in the User method?
        }
*/

	/**
	Sends a friend request to another {@link User}. Request is added to the {@link User}s list of friend requests and can be {@link FriendRequest #accept}ed or {@link FriendRequest #reject}ed later on.
	@param receiver {@link User} who will receive the friend request. 
	*/
	public void send(User receiver)
	{
		ArrayList<User> frs = receiver.getFriendRequests();
		FriendRequest fr = new FriendRequest(sender, receiver);
		frs.add(receiver);
	}
}
