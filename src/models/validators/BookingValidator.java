package models.validators;

import java.util.ArrayList;
import java.util.List;

import models.Booking;

public class BookingValidator {
	public static List<String> validate(Booking b) {
		ArrayList<String> errors = new ArrayList<String>();

		String room_type_error = _validateRoom_type(b.getRoom_type());
        if(!room_type_error.equals("")) {
            errors.add(room_type_error);
        }

        String adult_people_error = _validateAdult_people(b.getAdult_people());
        if(!adult_people_error.equals("")) {
            errors.add(adult_people_error);
        }

        String child_people_error = _validateChild_people(b.getChild_people());
        if(!child_people_error.equals("")) {
            errors.add(child_people_error);
        }

        String check_in_date_error = _validateCheck_in_date(String.valueOf(b.getCheck_in_date()));
        if(!check_in_date_error.equals("")) {
            errors.add(check_in_date_error);
        }

        String check_out_date_error = _validateCheck_out_date(String.valueOf(b.getCheck_out_date()));
        if(!check_out_date_error.equals("")) {
            errors.add(check_out_date_error);
        }

        return errors;
	}

	private static String _validateRoom_type(String room_type) {
        if(room_type == null || room_type.equals("") || room_type.equals("-------")) {
            return "お部屋のタイプを入力してください。";
            }

        return "";
    }

    private static String _validateAdult_people(String adult_people) {
        if(adult_people == null || adult_people.equals("")) {
            return "大人の人数を入力してください。";
            }

        return "";
    }

    private static String _validateChild_people(String child_people) {
        if(child_people == null || child_people.equals("")) {
            return "小人の人数を入力してください。";
            }

        return "";
    }

    private static String _validateCheck_in_date(String check_in_date) {
        if(check_in_date == null || check_in_date.equals("")) {
            return "チェックインを入力してください。";
            }

        return "";
    }

    private static String _validateCheck_out_date(String check_out_date) {
        if(check_out_date == null || check_out_date.equals("")) {
            return "チェックアウトを入力してください。";
            }

        return "";
    }


}