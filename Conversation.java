package facebook;
import java.util.ArrayList;

public class Conversation{

	private ArrayList<User> members = new ArrayList<User>();
	private ArrayList<InboxMessage> messages = new ArrayList<InboxMessage>();
	private String subject;

	public Conversation(User userOne, User userTwo, String subject){
		members.add(userOne);
		members.add(userTwo);
		this.subject = subject;
	}

	public ArrayList<User> getMembers(){
		return members;
	}
	public String getSubject(){
		return subject;
	}
	public ArrayList<InboxMessage> getMessages(){
		return messages;
	}
	public void deleteMessage(InboxMessage toDelete){
		for(int x = 0; x < messages.size(); x++){
			if(messages.get(x) == toDelete){
				messages.remove(x);
			}
		}
	}
}
