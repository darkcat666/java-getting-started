<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
<link rel="stylesheet" href="/Quiz/css/index.css">
<title>TOPページ</title>
</head>
<body>
	<header> </header>
	<div class="main-visual_1">
		<div class="header clearfix">
			<div class="header-box">
				<nav>
					<a class="nav-list" href="#Lecture"><span class = "border">Lecture</span></a> 
					<a class="nav-list" href="#Quiz"><span class = "border">Quiz</span></a>
					<a class="nav-list" href="#contact"><span class = "border">Contact</span></a>
				</nav>
			</div>
		</div>
		<div class="main-visual_2">
			<div class="main-visual_3">
				<p class="main-visual-title">投資信託クイズ</p>
				<p class="main-visual-title2">～すべての人に正確な資産形成を～</p>
				<p class="main-visual-title3">本クイズは、正確な投資信託の実態を届けることを通じて、</p>
				<p class="main-visual-title4">投資信託が誰にとっても身近なものである世界を目指しています</p>
			</div>
		</div>
	</div>
	<div class="Intro">
		<p class="Intro-top" id="Lecture">
			本サイトの指す投資信託とは、<span class="tumitate">つみたてNISA</span>の対象投資信託のことを指します。
		</p>
		<p class="Intro-top2">（投資ではなく、資産形成を目的とするため）</p>
		<div class="Intro-box">
			<p class="Intro-top3">
				※つみたてNISAとは、「少額からの長期・積立・分散投資を支援するための非課税制度（2018年1月からスタート）であり、<br>
				対象商品は、<span class="tumitate">手数料が低水準、頻繁に分配金が支払われないなど、長期・積立・分散投資に適した投資信託</span>に限定<br>
				投資初心者をはじめ幅広い年代の方にとって利用しやすい仕組みとなっています,
			</p>
		</div>
		<div class="Intro-table">
			<div class="table-box">
				<p class="table">目次</p>
				<div class="table-list">
					<h3>
						<a href="#1">1.投資信託の平均リターン(どれくらい儲かるのか)</a>
					</h3>
					<h3>
						<a href="#2">2.投資信託を選ぶ際に見るべきポイント</a>
					</h3>
					<h3>
						<a href="#3">3.購入時と購入後の3つの注意点</a>
					</h3>
					<h3>
						<a href="#4">4.おすすめ銘柄</a>
					</h3>
				</div>
			</div>
		</div>
	</div>
	<div class="Intro-head">
		<h2 class="Intro-hd" id="1">1.投資信託の平均リターン(どれくらい儲かるのか)</h2>
	</div>
	<div class="center">
		<div class="text-box">
			<p class="text">
				様々なサイトや金融機関が投資信託をおすすめしますが、利益面についてはあまり触れられていません。 <br>なのでここでは、皆様が気になるであろう<span
					class="tumitate">実際、何円利益がでるのか？</span>について紹介します。
			</p>
			<div class="premise-box">
				<p class="p-text">前提条件：</p>
				<p class="T-text">・投資額は一律、月1万円×12か月×10年 ＝ 120万円</p>
				<p class="p-text">・積立投資、一括投資とあるが、一括購入は購入時期が悪いと大量の含み損を抱えてしまいリスクが大きく、なおかつまとまったお金が必要であることから、積立投資の方を参考にする。</p>
				<p class="p-text">・オーソドックスな「日本株式型」「先進国株式型」「全世界株式型」の分類の中から10年以上存続している
					ファンドの平均リターンを紹介（運用会社を揃えることで、統一）</p>
				<p class="p-text">
					・詳細は、URLを参照いただきたい。<br>（投資信託協会の投信検索ライブラリー）<br>（検索：投資シュミレーション/積立投資/再投資)
				</p>
			</div>
		</div>
		<p class="heading">【日本株式型】</p>
		<p class="Brand">銘柄：ｅＭＡＸＩＳ日経２２５インデックス</p>
		<p class="text">日経平均に連動することを目標とした投資成果を目指す</p>
		<p class="return-text">
			10年間利益 ：852,850円（＋71.07%)<br> コスト：信託報酬(年0.4%)10年8211円<br>
			<span class="tumitate">最終利益：844,639円(+70%)<br></span>
		</p>
		<p style="text-align: left">
			<img src="img/Japanindex.png" alt="日本株リターン"
				style="min-width: 480px; max-width: 720px;">
		</p>
		<br> <a
			href="https://toushin-lib.fwg.ne.jp/FdsWeb/FDST030000?isinCd=JP90C0006LC1"><span
			class="returna">ｅＭＡＸＩＳ日経２２５インデックス 運用シュミレーション</span></a>
		<hr>
		<p class="heading">【先進国株式型】</p>
		<p class="Brand">銘柄：ｅＭＡＸＩＳ先進国株式インデックス</p>
		<p class="text">
			日本を除く先進国の株式市場の値動きに連動する投資成果を目指す<br>↓投資対象国
		</p>
		<p style="text-align: left">
			<img src="img/USAportfolio.png" alt="先進国株リターン" style="width: 480px";>
		</p>
		<p class="return-text">
			10年間利益 ：876,716円（＋73.06%)<br> コスト：信託報酬(年0.6%)10年12,460円 <br>
			<span class="tumitate">最終利益：864,255円(+70%) <br>
			</span>
		</p>
		<p style="text-align: left">
			<img src="img/USAindex.png" alt="米国株リターン"
				style="min-width: 480px; max-width: 720px;">
		</p>
		<a
			href="https://toushin-lib.fwg.ne.jp/FdsWeb/FDST030000?isinCd=JP90C0006LG2"><span
			class="returna">先進国株式インデックス 運用シュミレーション</span></a>
		<hr>
		<p class="heading">【全世界株式型】</p>
		<p class="Brand">銘柄：ｅＭＡＸＩＳ全世界株式インデックス</p>
		<p class="text">
			日本を除く先進国および新興国の株式市場の値動きに連動する投資成果を目指す<br>↓投資対象国
		</p>
		<p style="text-align: left">
			<img src="img/worldportfolio.png" alt="全世界株リターン" style="width: 480px";>
		<p class="return-text">
			10年間利益 ：800,521円（＋66.71%)<br> コスト：信託報酬(年0.6%)10年12,000円 <br>
			<span class="tumitate">最終利益：788,517円(+65.7%) <br>
			</span>
		</p>
		<p style="text-align: left">
			<img src="img/worldindex.png" alt="世界株リターン"
				style="min-width: 480px; max-width: 720px;">
		</p>
		<a
			href="https://toushin-lib.fwg.ne.jp/FdsWeb/FDST030000?isinCd=JP90C00074C7"><span
			class="returna">ｅＭＡＸＩＳ全世界株式インデックス 運用シュミレーション</span></a>
		<hr>
		<p class="text">
			・その他、債券型やバランス型、アクティブファンド等ありますが、詳細は割愛します。<br>詳しくはURLから検索してみてください。
			<a href="https://toushin-lib.fwg.ne.jp/FdsWeb/FDST999903">投資信託協会積立NISA一覧</a>
		<p>
		<p class="text">
			<span class="orenge">・銀行にお金を預けても、利益は0.01%以下です。いかに投資信託が魅力的な商品かおわかりいただけたでしょう。</span>
	</div>
	<div class="Intro-head">
		<h2 class="Intro-hd" id="2">2.投資信託を購入する上で、見るべき重要な点。</h2>
	</div>
	<div class="center">
		<p class="heading">1.騰落率（基準価格の上昇率)</p>
		<p class="text">
			一定期間にどれだけ基準価格が上がっているかを表す指標です。リターンを意味します。 <br>3年、5年、10年と長期的に見て比較しましょう。
		</p>
		<p class="heading">2.コスト(信託報酬/信託財産留保額/購入手数料)</p>
		<p class="text">
			コストは、主に3種類あります。<br>
			<br>①購入時にかかるコスト（販売手数料）<br>②売却時にかかるコスト(信託財産留保額)<br>③購入後に毎年かかるコスト（信託報酬）
			<br>
			<br>運用期間が長期になればなるほど信託報酬の多寡はパフォーマンスに大きく影響を及ぼすため、投資信託の商品比較をする際には、毎年引かれるコストである<span
				class="tumitate">「信託報酬」</span>をより重視しましょう。 <br>
			<br>例として、信託報酬の費用対比を載せます。 <br>毎年の資産残高に信託報酬率をかけて計算するので、おおよその算出となります。
		</p>
		<img src="img/cost.png" alt="信託報酬計算例" style="width: 400px;">
		</p>
		<p class="text">
			と1%の差で12万円差がつきます。<br>
			現在の日本は人生100年時代と言われており、寿命が延びれば伸びるほど、運用期間が長くなります。 <br>運用期間が大きくなればなるほど、差がつきますので、「信託報酬」が少しでも低い商品を選びましょう。
			<br>※積立NISA該当投資信託は、購入手数料、信託財産留保額は無料の場合が多いです。 <br>また、近年、証券会社の間で手数料引き下げ競争が行われており、新しい投資信託の方が、信託報酬が低い傾向にあります。
		</p>
	</div>
	<div class="Intro-head">
		<h2 class="Intro-hd" id="3">3.購入時と購入後の3つの注意点</h2>
	</div>
	<div class="center">
		<p class="heading">1.総合証券会社や銀行ではなく、ネット証券(SBI証券、楽天証券等)で購入すること</p>
		<p class="text">
			総合証券とは、実店舗を持つ証券会社のことを指します。例：野村證券、大和証券 <br>必ずといっていいほど、<span
				class="orenge">対面証券の方が購入手数料が高いため、購入手数料が安いネット証券</span>で購入するのがいいでしょう。
			<br>
		<p class="heading">2.購入は、余裕資金ですること</p>
		<p class="text">
			投資信託は長期保有することで、利益を上げる商品です。生活資金等、使い道が決まっている資金で投資すると、短期的な相場の下落局面で売却せざるを得なくなるかもしれません。
			<br>余裕資金ならば、そのような場合でも、保有することができ、それが長期的な利益につながります。 <br>
		<p class="heading">3.相場の動きに一喜一憂せず、機械的に購入を続け、長期間保有すること</p>
		<p class="text">
			相場は、生き物のようなものです。上がることもあれば、下がることもありますが、長期的にみて相場は上昇傾向にあります。 
			<br>
			<br>以下の図は、アメリカの代表的なナスダック指数の5年推移です。<span class = "orenge">5年間で「3倍」</span>となっています。
			<br>コロナ相場等で下落している時期もありますが、基本右肩上がりです。
			<br>また、<span class = "orenge">30年間の推移では驚愕の「22倍」</span>となっています。
			<br>
			<img src="img/NASDAQ.png" alt="ナスダック" style="width: 480px;">
			<br>
			<br><span class="orenge">投資信託で損をする人は、相場の下落に耐え切れず売却してしまう人がほとんどです。</span>
			<br>5年、10年、20年と長期保有を前提に購入してください。
		</p>
	</div>
	<div class="Intro-head">
		<h2 class="Intro-hd" id="4">4.おすすめ銘柄</h2>
	</div>
	<div class="center">
		<p class="heading">
			<a
				href="https://toushin-lib.fwg.ne.jp/FdsWeb/FDST030000?isinCd=JP90C000FQR3">SBI・全世界株式インデックス・ファンド</a>
		</p>
		<br>
		<p class="text">
			<span class="popular">理由①：リスクを分散でき、将来の成長に期待が持てるから</span> <br>
			日本だけ、アメリカだけと特定の国の投資信託の場合、その国の経済・社会・政治などの情勢に依存してしまい、投資信託の基準価額にも大きな影響を受けることがあります。
			<br>
			<br>なので、1つの国だけにとらわれず、複数の国に分散して投資をすることで、値下がりリスクを分散し、安定した運用を行うことができる「全世界型」をおすすめします。
			<br>
			<br>
			<span class="orenge">また、将来日本の人口は減る予想ですが、世界の人口は増え続け、GDPも年々1-3%ずつ増加しており、成長が続くことが見込まれるからです。</span>
		</p>
		<br>
		<p class="text">
			<span class="popular">理由②：信託報酬が低いから</span> <br>
			上述の通り、つみたてNISAは2018年1月から始まったため、対象投資信託も新しいものが多く、その場合、騰落率等に十分なデータがなく比較しにくいです。
			<br>
			<br>しかし、そもそもインデックス運用とは、ナスダックや日経平均といった投資の基準となる「指数（インデックス）」と連動して動く運用を目指すことから、
			対象国が同じであれば、どの投資信託でも似たような運用成績が出ると予想されます。 <br>なので、重要なのはコストです。本ファンドは世界株式型の投資信託のうち、一番信託報酬が安いからです。(0.062%)
		</p>
	</div>
	<div class="main-quiz" id="Quiz">
		<p class="main-quiz-text1">クイズのレベルを選んでください</p>
		<div class="main-quiz-box">
			<form action="/Quiz/Main" method="post">
				<div class="main-quiz-btn">
					<button class="btn01" type="submit" name="first" value="beginner">
						<span>初級/5問</span>
					</button>
				</div>
				<div class="main-quiz-btn">
					<button class="btn02" type="submit" name="first"
						value="intermediate">
						<span>中級/10問</span>
					</button>
				</div>
				<div class="main-quiz-btn">
					<button class="btn03" type="submit" name="first" value="advanced">
						<span>上級/15問</span>
					</button>
				</div>
			</form>
		</div>
	</div>
	<div class="Description">
		<br>
		<div class="Description2">
			<div class="Description-top">本サイトをご利用にあたっての注意事項</div>
			<ul class=list>
				<li><p>
						当サイトに掲載されている事項は、投資信託および投資一般に関する情報の提供を目的として、作成したものであり、投資信託の勧誘を目的としたものではありません。
					</p></li>
				<li><p>当サイトは特定の商品の勧誘や売買の推奨等を目的としたものではありません。</p></li>
				<li><p>当サイト中のいかなる内容も将来の運用成果または投資収益を示唆あるいは保証するものではありません。</p></li>
				<li><p>最終的な投資決定はお客様ご自身の判断でなさるようにお願いします。</p></li>
				<li><p>
						当サイトは信頼できると考えられる情報に基づいて作成しておりますが、情報の正確性、信頼性、完全性を保証するものではありません。
						当サイトから、リンクやバナーによって本ホームページ以外のサイトに移動される場合があります。移動された先のサイトは本サイトが運営するものではございません。よって、その内容の真偽等につきまして責任を負いかねますのでご了承ください。
					</p></li>
			</ul>
		</div>
	</div>
	<section id="contact">
		<div class="container">
			<h2 class="heading2">Contact</h2>
			<p class="heading-text">
				本サイトに興味を持っていただきまして、ありがとうございます。 <br>当サイトへの依頼、その他お問い合わせは以下のメールアドレスへお願いします。
				<br>クイズへの要望や内容の拡充などの希望等お待ちしております。
			<p class="Mail">Mail</p>
			<p class="adress"><a class="discription-text" href="mailto:adhsagev0330@gmail.com">adhsagev0330@gmail.com</a>
			</p>
		</div>
		</div>
	</section>
	<footer>
		<p class="footer-text">©︎2020 toushinQuiz</p>
	</footer>
</body>
</html>