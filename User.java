package facebook;

import java.util.ArrayList;
import java.io.*;
/**
A class representing an account and all that can be done with it while on the facebook webpage. Is created in the {@link UserRepository}.
@author Dominic
*/
public class User {
	
	private String username;
	private String email;
	private String password;
	private ArrayList<User> friends;
	private PhotoAlbum photos;
	private ArrayList<Group> usersGroups;
	private Inbox usersInbox;
	//private ArrayList<Notification> notifications;
	private ArrayList<Hobby> hobbies;
	private ArrayList<FriendRequest> fRequests;
	private Wall usersWall;
	private ArrayList<Settings> settings;
	
	public User(String u, String e, String pwd)
	{
		username = u;
		email = e;
		password = pwd;
		friends = new ArrayList<User>();
		photos = new PhotoAlbum(this);
		usersGroups = new ArrayList<Group>();
		usersInbox = new Inbox(this);
	//	notifications = new ArrayList<Notification>();
		hobbies = new ArrayList<Hobby>();
		fRequests = new ArrayList<FriendRequest>();
		usersWall = new Wall();
		settings = new ArrayList<Settings>();
	}	
	
	public String getUsername()
	{
		return username; 
	}	
	
	public String getPassword()
        {
		return password;
        }

	public String getEmail()
        {
		return email;
        }
	
	public ArrayList<Group> getGroups()
        {
		return usersGroups;
        }

	public ArrayList<User> getFriends()
        {
		return friends;
        }
	
	public Inbox getInbox()
	{
		return usersInbox;
	}

	/* No longer needed
	public ArrayList<Notification> getNotifications()
	{
		return notifications;
	}
	*/

	public ArrayList<Hobby> getHobbies()
	{
		return hobbies;
	}

	public ArrayList<FriendRequest> getFriendRequests()
	{
		return fRequests;
	}

	public void addHobby(Hobby h)
	{
		hobbies.add(h);
	}
	
	public void addGroup(Group g)
	{
		usersGroups.add(g);
	}
	
	public void addPhoto(Photo p)
	{
		photos.addPhoto(p);
	}

/* No longer needed
	public void addNotification(Notification n)
	{
		notifications.add(n);
	}
*/

	public void deleteHobby(String h)
	{
		hobbies.remove(h);
	}

        public void deletePhoto(Photo p)
        {
                photos.removePhoto(p);
        }

	public void deleteGroup(Group g)
	{
		usersGroups.remove(g);
	}

	/**
	Sends a friend request to another user. Requests is added to the receiver's list of request and now has the option to either {@link User #acceptFriendRequest} or {@link User #rejectFriendRequest}
	@param u User who will be the receiver of the friend request.
	*/
	public void sendFriendRequest(User u)
	{
		FriendRequest fr = new FriendRequest(this, u);
		fr.send(u);
	}

/**
A receiver of a friend request agrees to be 'friends' with the {@link FriendRequest} sender. The receiver is now added to the sender's list of friends and vice versa. All privileges available to friends are now enabled. The initial friend request will be removed from the list of pending friend requests
@param fr FriendRequest object sent from another {@link User}
*/
	public void acceptFriendRequest(FriendRequest fr)
	{
		User u = fr.getSender();
		friends.add(u);
		//fr.accept(); does nothing
		//u.notify()
		fRequests.remove(fr);
	}

/**
A receiver of a friend request agrees to be 'friends' with the {@link FriendRequest} sender. The receiver is now added to the sender's list of friends and vice versa. All privileges available to friends are now enabled. The initial 
friend request will be removed from the list of pending friend requests
@param fr FriendRequest object sent from another {@link User}
*/
	public void rejectFriendRequest(FriendRequest fr)
	{
		//fr.reject(); 
		fRequests.remove(fr);
	}

/**
Creates a new {@link Group} with this {@link User} being listed as the creator. The creator is given special privileges that ordinary group members do not have.
@param groupName a {@link String} that will be used to designate the group from other groups
*/
	public void createGroup(String groupName)
	{
		//Group g = new Group(groupName, username, settings); 
		//usersGroups.add(g);
	}

	private void save()
	{
		try
		{
			File file = new File(username + ".user");
			FileWriter fw = new FileWriter(file);
			PrintWriter pw = new PrintWriter(fw);
			
			pw.println(password);
			pw.println("--");

			pw.println(email);
                        pw.println("--");

			for(int i = 0; i < friends.size(); i++)
			{
				pw.println(friends.get(i).getUsername());
			}
			pw.println("--");
			
			for (int i = 0; i < hobbies.size(); i++)
			{
				pw.println(hobbies.get(i));
			}
			pw.println("--");

			//HEADS UP!!! For everything after this point we need to save mulitple things
			for(int i = 0; i < photos.getPhotos().size(); i++)
                        {
                                pw.println(photos.getPhotos().get(i).getFileName());
                        }
			pw.println("--");

			for(int i = 0; i < usersGroups.size(); i++)
                        {
                                pw.println(usersGroups.get(i).getName());
                        }
                        pw.println("--");
			
			Inbox m = new Inbox(this);
			for(int i = 0; i < m.getMessages().size(); i++)
                        {
                               // pw.println(;
                        }
                        pw.println("--");
			
			//How do we save settings???


			for(int i = 0; i < fRequests.size(); i++)
			{
				//pw.println(;
			} 
			pw.println("--");
			
			Wall w = new Wall();	
			for(int i = 0; i < w.getPosts().size(); i++)
			{
				//pw.println(;
			}
			pw.println("--");
			
			pw.close();
		}catch (Exception e)
			{
				System.out.println("HEY!!! Couldn't save " + username + "!");
                                e.printStackTrace();

			}
	}

	public void load(String filename) throws Exception
	{
		//Need to know how we're saving before I can load
	}	
}
