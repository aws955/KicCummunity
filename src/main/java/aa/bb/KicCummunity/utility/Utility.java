package aa.bb.KicCummunity.utility;

import org.springframework.stereotype.Component;

//사용자 입력에 대해서 자동으로 script방지와 enter허용, trim 기능을 제공합니다.
//static 함수이므로 클래스이름을 선언하고 사용하시면 됩니다.
@Component
public class Utility {	
	public static String getConvert(String msg) {
		msg = msg.replaceAll(">", "&gt;").replaceAll("<", "&lt").replaceAll("\n","<br>").trim();
		return msg;
	}
}
