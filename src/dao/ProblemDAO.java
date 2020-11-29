package dao;

import java.sql.Connection;//DBMSへの接続や切断

import java.sql.DriverManager;//DBMSへの接続準備
import java.sql.PreparedStatement;
import java.sql.ResultSet;//検索結果を受け取る
import java.util.Random;

import model.Problem;
import servlet.Main;

public class ProblemDAO {

	static Connection conn = null;
	ResultSet rs ;
	PreparedStatement pStm ;
	int tmpNum ;
	String sql ;
	//ここで宣言しているので、下ではString　sqlとしなくてよい

	// SQLに繋ぐ関数
	public static Connection connection() {

		try {
		//JDBCドライバを読み込み
		Class.forName("com.mysql.jdbc.Driver");

		//データベースへの接続　　接続先DB、ユーザー名、パスワード
		conn = DriverManager.getConnection("jdbc:mysql://localhost/quiz","root", "");//

		} catch(Exception ex){//例外発生時の処理

        ex.printStackTrace();  //エラー内容をコンソールに出力する
        }
	    return null;
    }
	
	public int getQuizId(String first) {	// 問題数を取得する。
		try {
		    connection();
		    //初級・中級・上級で分岐
		    if(first.equals("beginner")) {
				//SELECT文の準備
			    sql = "select count(id) from beginner";
			    
			}if(first.equals("intermediate")){
				//SELECT文の準備
			    sql = "select count(id) from intermediate";
				
			}if(first.equals("advanced")) {
				//SELECT文の準備
			    sql = "select count(id) from advanced";
			}
			//準備したSQLをDBに届けるPreparedStatementインスタンスを取得する。
			PreparedStatement pStm = conn.prepareStatement(sql);

			//SELECT文を実行(して結果表(ResultSet)を取得
			rs = pStm.executeQuery();
			
			while(rs.next()) {
				tmpNum = rs.getInt(1);//int型だから、"id"ではなく、1
				
			}
			} catch(Exception ex){//例外発生時の処理
				ex.printStackTrace();  //エラー内容をコンソールに出力する
		    }
		    return tmpNum;
	     }
	public ResultSet Quizinfo(int getid,String first) {//ランダムに選択したIDに連動して取り出す。
		try {
			//SQLに繋ぐ
			connection();
			//SELECT文の準備
			if(first.equals("beginner")) {
				//SELECT文の準備
			   sql = "SELECT id,question,explanation,answer,choose1,choose2,choose3 FROM Beginner where id = '" + getid + "'";
			    
			}if(first.equals("intermediate")){
				//SELECT文の準備
			    sql = "SELECT id,question,explanation,answer,choose1,choose2,choose3 FROM intermediate where id = '" + getid + "'";
				
			}if(first.equals("advanced")) {
				//SELECT文の準備
			    sql = "SELECT id,question,explanation,answer,choose1,choose2,choose3 FROM advanced where id = '" + getid + "'";
			}

			//準備したSQLをDBに届けるPreparedStatementインスタンスを取得する。
			PreparedStatement pStm = conn.prepareStatement(sql);

			//SELECT文を実行(して結果表(ResultSet)を取得
		    rs = pStm.executeQuery();
		    
		    //Problem problem = new Problem(id,question,explanation,answer,choose1,choose2,choose3);
		   		
		} catch(Exception ex){//例外発生時の処理

	        ex.printStackTrace();  //エラー内容をコンソールに出力する
	      }
		return rs;
	}
}