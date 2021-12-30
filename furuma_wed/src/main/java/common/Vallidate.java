package common;

import java.util.regex.Pattern;

public class Vallidate {
    public static String isCMND(String cmnd){
            String regex = "[0-9]{9}";
            Pattern p = Pattern.compile(regex);
            if (p.matcher(cmnd).matches()){
                return cmnd;
            }

            return null;
        }

}
