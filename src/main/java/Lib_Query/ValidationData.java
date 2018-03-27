package Lib_Query;

public class ValidationData {
	public static String SR ="You are successfully Resgistered";
	public static String SRN ="You are Not successfully Resgistered";
	public static String ERROR ="Their is something gone Wrong";
	public static String SL="You are successfully login";
	public static String NSL="Your Username or Password are Incorrect";
	public static String SU="You are successfully update";
	public static String SUN="You are not successfully update";
	public static String SI="You'r Data successfully Inserted";
	public static String SIN="You'r Data Not successfully Inserted";
	public static String SD="You'r Data  successfully Deleted";
	public static String UNNF="User name not Found !";
	public static String Al="You alreday login";
	public static String SE="Your Session is Expried ";
	public static String SLO="You are successfully LogOut";




	
	//Random UserName Genration
		public static String userNameGenration (String f1 ,String f2) {
			return f1=f1+(int)(Math.random()*(100-1))+f2;
		}
		
		//password Validation Metheod
		
		public static String passwordValidation (String pass) {
			if (pass.matches("^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\\S+$).{8,}$")) {
				return "Strong";
			}
			return "NotStrong";
			/* About the working 
			    ^                 # start-of-string
				(?=.*[0-9])       # a digit must occur at least once
				(?=.*[a-z])       # a lower case letter must occur at least once
				(?=.*[A-Z])       # an upper case letter must occur at least once
				(?=.*[@#$%^&+=])  # a special character must occur at least once
				(?=\S+$)          # no whitespace allowed in the entire string
				.{8,}             # anything, at least eight places though
				$ */
		}
		
		//Mobile NO validation
		public static String mobileNoValidation (String mob) {
			if (mob.matches("^((\\+){0,1}91(\\s){0,1}(\\-){0,1}(\\s){0,1}){0,1}[6789][0-9](\\s){0,1}(\\-){0,1}(\\s){0,1}[1-9]{1}[0-9]{7}$")) {
				return "true";
			}
			return "false";
		}
		//Email Validation 
		public static String emailValidation (String email) {
			String pattern="^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
			if (email.matches(pattern)) {
				return "true";
			}
			return "false";
		}
}

