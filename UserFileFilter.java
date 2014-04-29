package facebook;

public class UserFileFilter implements java.io.FilenameFilter {

    public boolean accept(java.io.File dir, String name) {
        return name.endsWith(".user");
    }

}
