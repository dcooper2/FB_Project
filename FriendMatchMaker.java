package facebook;
import facebook.*;
import java.util.ArrayList;
import java.util.Collection;

/**
A friend-match-maker is a list that finds other users with similar hobbies. 
@author Dominic.
*/
public class FriendMatchMaker
{
	private User userToMatch;
	private ArrayList <User> users;
	private ArrayList<User> matches;

	private FriendMatchMaker(ArrayList<User> allUsers, User utm)
	{
		users = allUsers;
		userToMatch = utm;
		matches = new ArrayList<User>();
		matchmaker();
	}

	/**
	Function to compare hobbies of a selected User with those of the other Users in the UserRepository. Comparisons are made bewteen all existing {@link User} in the {@link UserRepository} and the currently logged in {@link User}.
	@throws Exception e Error with user or userToMatch's hobbies.  
	*/
	public void matchmaker()
	{
		try{
		ArrayList<String> userHobbies = userToMatch.getHobbies();
		for (int i = 0; i < users.size(); i++)
		{
			ArrayList<String> otherHobbies = users.get(i).getHobbies();
			for(int k = 0; k < otherHobbies.size(); k++)
			{
				for(int j = 0; j < userHobbies.size(); j++)
				{
					if(userHobbies.get(j).equals(otherHobbies.get(k)))
					{
						matches.add(users.get(i));
					}	
				}
			}
		}
		}catch(Exception e)
			{
				System.out.println("Matchmaker error");
				e.printStackTrace();
			}	
	}

/**
Returns all users that have a matching hobby with the selected User. 
@return Returns an {@link ArrayList} of {@link User}s that have matchinghobbies 
*/
	public ArrayList<User> getMatches()
	{
		return matches;
	}
}
