package yly.entity;

import java.util.Comparator;
import java.util.List;

import yly.Service;

public class Test_sort {

	public static void main(String[] args) {
		List<Fund> funds = Service.getAllFund();
		for (Fund f : funds) {
			System.out.println(f.toString());
		}
		System.out.println( "<-----------我是华丽的分割线------------>" );
		funds.sort(new Comparator<Fund>() {

			@Override
			public int compare(Fund o1, Fund o2) {
				// TODO Auto-generated method stub
				return o1.getId().compareTo(o2.getId());
			}
		});
		for (Fund f:funds) {
			System.out.println(f.toString());
		}
	}

}
