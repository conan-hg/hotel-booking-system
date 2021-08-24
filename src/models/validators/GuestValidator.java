package models.validators;

import java.util.ArrayList;
import java.util.List;

import models.Guest;

public class GuestValidator {
	public static List<String> validate(Guest g, Boolean passwordCheckFlag) {
		List<String> errors = new ArrayList<String>();

		String name_error = validateName(g.getName());
		if(name_error.equals("")){
			errors.add(name_error);
		}

		String name_password = validatePassword(g.getPassword(), passwordCheckFlag);
		if(name_password.equals("")){
			errors.add(name_password);
		}

		String name_phone = validatePhone(g.getPhone().toString());
		if(name_phone.equals("")){
			errors.add(name_phone);
		}

		String name_mail = validateMail(g.getMail());
		if(name_mail.equals("")){
			errors.add(name_mail);
		}


		return errors;



	}

	private static String validateName(String name) {
		if(name == null || name.equals("")){
			return "氏名を入力してください。";
		}

		return "";
	}

	private static String validatePassword(String password, Boolean passwordCheckFlag) {

		if (passwordCheckFlag && (password == null || password.equals(""))) {
			return "パスワードを入力してください。";
		}

		return "";
	}

	private static String validatePhone(String phone) {
		if(phone == null || phone.equals("")){
			return "電話番号を入力してください。";
		}

		return "";
	}

	private static String validateMail(String mail) {
		if(mail == null || mail.equals("")){
			return "メールアドレスを入力してください。";
		}

		return "";
	}


}
