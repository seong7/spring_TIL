package ctag;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

//Helper 클래스 : 스크립트 변수에 관한 정보를 제공하는 클래스,TagExtraInfo 상속

public class ConnectionTag extends SimpleTagSupport{

	private String id;
	
	public void setId(String id) {
		this.id = id;
	}

	@Override
	public void doTag() throws JspException, IOException {
		try {
			getJspContext().setAttribute(id, new DBConnection());
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			
		}
	}
}







