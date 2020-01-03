package el;

import java.text.DecimalFormat;

public class ElMethod {

	// 금액 
	public static String comma(int num) {
		DecimalFormat df = new DecimalFormat("#,##0");
		return df.format(num);
	}
}
