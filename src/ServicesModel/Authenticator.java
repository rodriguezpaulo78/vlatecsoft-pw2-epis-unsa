package ServicesModel;

public class Authenticator {
	 
	public String authenticate(String username, String password) {
		if (((("Paulo".equalsIgnoreCase(username))&& ("123456".equals(password)))
		||((("Antonio".equalsIgnoreCase(username))&& ("abcdef".equals(password)))
		||((("Julio".equalsIgnoreCase(username))&& ("a1b2c3".equals(password))))))){
			return "success";
		} else {
			return "fail";
		}
	}
}

