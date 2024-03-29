package com.sist.vo;
/*
 *   1. Ajax : 우편번호 , 아이디중복체크 , 예매|예약 , 검색 , 페이지나누기 , 추천 , 레시피 만들기 
 *   
 */
public class ZipcodeVO {
    private String zipcode,sido,gugun,dong,bunji,address;

	public String getZipcode() {
		return zipcode;
	}
	
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	
	public String getSido() {
		return sido;
	}
	
	public void setSido(String sido) {
		this.sido = sido;
	}
	
	public String getGugun() {
		return gugun;
	}
	
	public void setGugun(String gugun) {
		this.gugun = gugun;
	}
	
	public String getDong() {
		return dong;
	}
	
	public void setDong(String dong) {
		this.dong = dong;
	}
	
	public String getBunji() {
		return bunji;
	}
	
	public void setBunji(String bunji) {
		this.bunji = bunji;
	}
	// VO => 데이터베이스의 컬럼명 + 기타 (컬럼이 아닌 다른 변수를 포함 할 수 있다)
	// 출력용으로 사용  - address는 set 필요 없이 get만 있으면 된다
	public String getAddress() {
		return sido+" "+gugun+" "+dong+" "+bunji;
	}
	   
}