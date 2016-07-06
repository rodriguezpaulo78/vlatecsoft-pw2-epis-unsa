package ServicesModel;

public class AuthenticatorDistribuidor {
	 
	public String authenticate(String username, String password) {
		if (((("Paulo".equalsIgnoreCase(username))&& ("123".equals(password)))
		||((("Arturo".equalsIgnoreCase(username))&& ("123456".equals(password)))
		||((("Carlos".equalsIgnoreCase(username))&& ("123456".equals(password)))
		||((("Danilo".equalsIgnoreCase(username))&& ("123456".equals(password)))))))){
			return "success";
		} else {
			return "fail";
		}
	}
}

