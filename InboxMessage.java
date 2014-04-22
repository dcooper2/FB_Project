package facebook;

import java.util.Date;
import java.util.ArrayList;

/**
Message sent to another user's inbox. Is visible <b>only</b> to the recipient.
@author Dominic
*/
public class InboxMessage
{
	private String text;
	private User author;
	private User recipient;
	private Date date;

	public InboxMessage(String t, User a, User r)
	{
		text = t;
		author = a;
		recipient = r;
		date = new Date();
	}

	/**
        Returns the text of the message sent to another {@link User}.
        @return Returns the {@link String} of the message body.
        */
	public String getText()
	{
		return text;
	}

	/**
        Returns the {@link User} who sent the message initially.
        @return Returns the {@link User} who initially sent the message.
        */
	public User getAuthor()
	{
		return author;
	}

	/**
        Returns the {@link User} who sent the friend request.
        @return Returns the {@link User} who initially sent the request.
        */
	public User getRecipient()
	{
		return recipient;
	}

	/**
        Returns the {@link Date} of when the message was created.
        @return Returns {@link Date} that was set when the message was created.
        */
	public Date getDate()
	{
		return date;
	}
	
	/**
	Delivers the message created to a designated {@link User}.   
        Message is added to the receiver's {@link Inbox}.
	*/
	public void send()
	{
		ArrayList<InboxMessage> destination = recipient.getInbox().getMessages();
		destination.add(this);
	}
}
