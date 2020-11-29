package servlet;

import java.io.IOException;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ProblemDAO;
import model.Problem;


@WebServlet("/Main")
public class Main extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public static String first;//どこからでも参照できるようにする
	int count_quiz;//現在の問題数
	Problem problem = new Problem();
	List list = new ArrayList();//問題の取得する際の関数
	ResultSet rs;
	ProblemDAO problemDAO = new ProblemDAO();
	private int MAX_QUIZ_NUM;//問題の総数
	int point;//点数
	boolean skip;//スキップフラグ
	boolean firstFlag; // 初期状態フラグ（※暫定対応）

	public Main() {
		firstFlag = true;
		point = 0;
		count_quiz = 0;
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//トップから難易度選択した場合スキップしない
		skip = false;
		firstFlag = true;

		//セッションスコープに保存された結果を取得(true)だから新しく作る。
		HttpSession session = request.getSession(true);
		//correct.jsp,miss.jspから取得  String
		if (request.getParameter("first") != null ) {
			first = request.getParameter("first");
			this.MAX_QUIZ_NUM = problemDAO.getQuizId(first);
			for(int i=1;i<=MAX_QUIZ_NUM;i++) {
				list.add(i);
			}
		}
		if (request.getAttribute("Finish") != null) {
			RequestDispatcher dispatch = request.getRequestDispatcher("./index.jsp");
			dispatch.forward(request, response);
		}
		//再挑戦時、リストに追加しなおす。Main() のコンストラクタは一回しか作動しないため、再作成〇再作成
		try {
			if (request.getAttribute("retry") != null) {
				if (list.isEmpty()) {
					for (int i = 1; i <= MAX_QUIZ_NUM; i++) {
						list.add(i);
					}
					request.removeAttribute("retry");
					skip = false;
					firstFlag = true;
				}
			}else if (list.isEmpty()) {
				//Skipする。
				skip =true;
				// クイズの数をリセットする
				count_quiz = 0;

				// finish.jsp にページ遷移
				RequestDispatcher dispatch = request.getRequestDispatcher("/WEB-INF/finish.jsp");
				dispatch.forward(request, response);
			}
			if(!skip) {
				rs = problemDAO.Quizinfo(getTargetNumber(),first);
				//SELECT文の結果を格納
				while(rs.next()) {
					int id = rs.getInt(1);
					String question = rs.getString("question");
					String explanation = rs.getString("explanation");
					String answer = rs.getString("answer");
					String choose1= rs.getString("choose1");
					String choose2= rs.getString("choose2");
					String choose3= rs.getString("choose3");

					// ここに順番情報を追記する
					List listPlace = new ArrayList();
					listPlace = setArea();

					request.setAttribute("listPlace", listPlace);
					request.setAttribute("question", question);
					session.setAttribute("explanation", explanation);//これだけsession
					session.setAttribute("answer", answer);//session
					request.setAttribute("choose1", choose1);
					request.setAttribute("choose2", choose2);
					request.setAttribute("choose3", choose3);

					//得点
					if (firstFlag) {
						session.setAttribute("point", point);

						// （※暫定対応）
						firstFlag = false;
					} else {
						session.setAttribute("point", (int)session.getAttribute("point"));
					}
					//最大問題数
					session.setAttribute("maxquiznum", MAX_QUIZ_NUM);
					//問題数カウント
					request.setAttribute("count_quiz", count_quiz);
					//quiz.jsp にページ遷移
					RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/quiz.jsp");
					dispatcher.forward(request, response);
				}
			}
		}catch(Exception e) {
			// 何もしない
			e.printStackTrace();
		}
	}
	public int getTargetNumber() {
		// クイズを何問出したか数える
		// (ランダム出題なので、問題数を数えないといけない）
		count_quiz++;

		// 対象idを格納する変数
		int num = 0;

		// 返却するidを格納する変数
		// numでもよいが、「変数の使いまわし」を避ける
		int targetNum = 0;

		// ランダムインスタンス生成
		Random random = new Random();

		// listには未出題の問題が格納されている。＋size→未出題の総数
		// 例：[1,2,3]
		// その中から何番目を取得するか、numに格納する
		num = random.nextInt(list.size());//

		// listには未出題の問題が格納されている
		// 例：[1,2,3]
		// その中から何番目を取得するか、numに格納する
		// 例：2番目の場合　ー＞　「2」
		targetNum = (int) list.get(num);

		// 全ての問題を出し切っていない場合は、
		// listから出題対象を削除する
		// listが空の場合、実行時エラーになるため
		// 回避する必要がある
		if (!list.isEmpty()) {
			list.remove(num);

		}
		// 出題問題番号を返却する
		// (この番号をgetidに割り当てればOK!)
		return targetNum;

	}
	//問題自体の並び替え
	public List setArea() {
		ArrayList<Integer> plist = new ArrayList<Integer>();
		for (int i = 1; i <= 4; i++) {
			plist.add(i);
		}
		//シャッフル関数
		Collections.shuffle(plist);
		return plist;
	}
}



