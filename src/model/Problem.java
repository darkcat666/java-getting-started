package model;

import java.io.Serializable;
import java.util.List;

public class Problem implements Serializable {
	//クイズをランダムに作成
	//挑戦ボタンを押すごとにランダムに生成
	private int id;//問題数
	private String question;//問題文
	private String explanation;//解説
	private String answer;//答え
	private String choose1;//誤った選択肢
	private String choose2;//誤った選択肢
	private String choose3;//誤った選択肢
	
	
	public Problem() {}
	public Problem(int id,String question,String explanation,String answer,String choose1,String choose2,	String choose3) {
		this.id = id;
		this.question = question;
		this.explanation = explanation;
		this.answer = answer;
		this.choose1 = choose1;
		this.choose2 = choose2;
		this.choose3 = choose3;
	}
	public int getid() {
		return id;
	}
	public String getQuestion() {
		return question;
	}
	public String getExplanation() {
		return explanation;
	}
	public String getAnswer() {
		return answer;
	}
	public String getChoose1() {
		return choose1;
	}
	public String getChoose2() {
		return choose2;
	}
	public String getChoose3() {
		return choose3;
	}
	}
	