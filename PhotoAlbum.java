package facebook;
import facebook.*;
import java.util.ArrayList;

/**
A list of photos owned by a {@link User} including a profile picture and cover photo.
@author Dominic
*/
public class PhotoAlbum
{
	private User albumOwner;
	private ArrayList<Photo> photos;
	private Photo coverPhoto;
	private Photo profilePicture;

	public PhotoAlbum(User owner)
	{
		albumOwner = owner;
		photos = new ArrayList<Photo>();
		
	}

	/**
        Returns the {@link User} who owns the album.
        @return Returns the {@link User} who the album belongs to.
        */
	public User getOwner()
	{
		return albumOwner;
	}

	/**
        Returns all the {@link Photo}s in the album.
        @return Returns an {@link ArrayList} containing all {@link Photo}s owned by the {@link User} associated with the album.
        */
	public ArrayList<Photo> getPhotos()
	{
		return photos;
	}

	/**
	Returns the {@link Photo} that has been designated as the cover photo.
	@return Returns the {@link Photo} that has been selected in {@link PhotoAlbum #makeCoverPhoto}.	
	*/
	public Photo getCoverPhoto()
	{
		/*if(!coverPhoto.equals(null))
		{
			return coverPhoto;
		}*/
		return coverPhoto;	
	}

	/**
        Returns the {@link Photo} that has been designated as the profile picture.
        @return Returns the {@link Photo} that has been selected in {@link PhotoAlbum #makeProfilePicture}. 
        */
	public Photo getProfilePicture()
	{
		/*if(!profilePicture.equals(null))
		{
			return profilePicture;
		}*/
		return profilePicture;
	}

	/**
	Adds a {@link Photo} to the album.
	@param p A {@link Photo} to be added to the {@link User}s album.
	*/
	public void addPhoto(Photo p)
	{
		photos.add(p);
	}

	/**
        Deletes a {@link Photo} from the album.
        @param p A {@link Photo} to be removed from the {@link User}s album.
        */

	public void removePhoto(Photo p)
	{
		photos.remove(p);
	}

	/**
        Selects a {@link Photo} to be the profile picture.
        @param p A {@link Photo} to be designated as the {@link User}s profile picture.
        */

	public void makeProfilePicture(Photo p)
	{
		/*for(int i = 0; i < this.size(); i++)
		{
			if(this.get(i).equals(p))
			{
				profilePicture = this.get(i);
					
			}
		}*/
	}

	/**
        Selects a {@link Photo} to be the cover photo.
        @param p A {@link Photo} to be designated as the {@link User}s cover photo.
        */    
	public void makeCoverPhoto(Photo p)
        {
                /*for(int i = 0; i > this.size(); i++)
                {
                        if(this.get(i).equals(p))
                        {
                                coverPhoto = this.get(i);

                        }
                }*/
        }
}
