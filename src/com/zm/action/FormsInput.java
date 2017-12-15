package com.zm.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zm.model.User;
import com.zm.model.User2;

/*
 * acTojs.jsp
 * */
@Controller
@RequestMapping("/data")
public class FormsInput {

	/*
	 * �����������ͣ�������ð����ݰ�װ�£���ֵֹΪ��ʱ����
	 * 
	 * */
	/*@RequestMapping("/1")
	public void test(int data) {
		
	}*/
	@RequestMapping("/1")
	public void test(@RequestParam("data") int dat) {
		System.out.println("�����ǽ�������������name������ͬ����ͬ����Ҫʹ��@requsetparam��ע��");
	}
	
	/*
	 * �Զ������
	 * �轫�������������input��nameֵһһƥ��
	 * 
	 * */
	@RequestMapping("/2")
	public void test2(User user) {
		
	}
	
	/*
	 * �Զ��帴�϶�������
	 * ��Ҫʹ�á�������(�������͵�����).��������������input��name
	 * */
	@RequestMapping("/3")
	public void test(User2 user2) {
	    System.out.println(user2.getFirstName());
	    System.out.println(user2.getLastName());
	    System.out.println(user2.getContactInfo().getTel());
	    System.out.println(user2.getContactInfo().getAddress());
	}
}
