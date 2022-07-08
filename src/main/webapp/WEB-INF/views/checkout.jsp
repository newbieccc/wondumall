<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<title></title>

 		<!-- Google font -->
 		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

 		<!-- Bootstrap -->
 		<link type="text/css" rel="stylesheet" href="./css/bootstrap.min.css"/>

 		<!-- Slick -->
 		<link type="text/css" rel="stylesheet" href="./css/slick.css"/>
 		<link type="text/css" rel="stylesheet" href="./css/slick-theme.css"/>

 		<!-- nouislider -->
 		<link type="text/css" rel="stylesheet" href="./css/nouislider.min.css"/>

 		<!-- Font Awesome Icon -->
 		<link rel="stylesheet" href="./css/font-awesome.min.css">

 		<!-- Custom stlylesheet -->
 		<link type="text/css" rel="stylesheet" href="./css/style.css"/>

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

    </head>
	<body>
		<!-- HEADER -->
		<header>
			<c:import url="./header.jsp"></c:import>
		</header>
		<!-- /HEADER -->

		<!-- NAVIGATION -->
		<nav id="navigation">
			<c:import url="./nav.jsp"></c:import>
		</nav>
		<!-- /NAVIGATION -->

		<!-- BREADCRUMB -->
		<div id="breadcrumb" class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
						<h3 class="breadcrumb-header">ê²°ì œì£¼ë¬¸</h3>
						<ul class="breadcrumb-tree">
							<li><a href="./">Home</a></li>
							<li class="active">Checkout</li>
						</ul>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /BREADCRUMB -->

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">

					<div class="col-md-7">
						<!-- Billing Details -->
						<div class="billing-details">
							<div class="section-title">
								<h3 class="title">ì²?êµ¬ì?</h3>
							</div>
							<div class="form-group">
								<input class="input" type="text" id="o_name" name="o_name" placeholder="?´ë¦?">
							</div>
							<div class="form-group">
								<input class="input" type="text" id="o_email" name="o_email" placeholder="?´ë©”ì¼">
							</div>
							<div class="form-group">
								<input class="input" type="text" id="o_postcode" name="o_postcode" placeholder="?š°?¸ë²ˆí˜¸">
								<input type="button" onclick="sample4_execDaumPostcode()" value="?š°?¸ë²ˆí˜¸ ì°¾ê¸°" class="primary-btn">
							</div>
							<div class="form-group">
								<input class="input" type="text" id="o_roadAddress" name="o_roadAddress" placeholder="?„ë¡œëª…ì£¼ì†Œ">
							</div>
							<div class="form-group">
								<input class="input" type="text" id="o_extraAddress" name="o_extraAddress" placeholder="ì°¸ê³ ?•­ëª?">
							</div>
							<div class="form-group">
								<input class="input" type="text" id="o_detailAddress" name="o_detailAddress" placeholder="?ƒ?„¸ì£¼ì†Œ">
							</div>
							<div class="form-group">
								<input class="input" type="tel" id="o_tel" name="o_tel" placeholder="? „?™”ë²ˆí˜¸">
							</div>
						</div>
						<!-- /Billing Details -->

						<!-- Order notes -->
						<div class="order-notes">
							<textarea class="input" id="o_request" name="o_request" placeholder="?š”êµ¬ì‚¬?•­" style="resize: none;"></textarea>
						</div>
						<!-- /Order notes -->
					</div>

					<!-- Order Details -->
					<div class="col-md-5 order-details">
						<div class="section-title text-center">
							<h3 class="title">ì£¼ë¬¸</h3>
						</div>
						<div class="order-summary">
							<div class="order-col">
								<div><strong>? œ?’ˆ</strong></div>
								<div><strong>TOTAL</strong></div>
							</div>
							<div class="order-products">
								<div class="order-col">
									<div>1x Product Name Goes Here</div>
									<div>$980.00</div>
								</div>
								<div class="order-col">
									<div>2x Product Name Goes Here</div>
									<div>$980.00</div>
								</div>
							</div>
							<div class="order-col">
								<div>ë°°ì†¡</div>
								<div><strong>FREE</strong></div>
							</div>
							<div class="order-col">
								<div><strong>ì´ê¸ˆ?•¡</strong></div>
								<div><strong class="order-total">$2940.00</strong></div>
							</div>
						</div>
						
						<div class="input-checkbox">
							<input type="checkbox" id="terms">
							<label for="terms">
								<span></span>
								ê²°ì œë¥? ?•˜?‹œê² ìŠµ?‹ˆê¹??
							</label>
						</div>
						<a href="javascript:iamport();" class="primary-btn order-submit">ê²°ì œ</a>
					</div>
					<!-- /Order Details -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		<!-- FOOTER -->
		<footer id="footer">
			<c:import url="./footer.jsp"></c:import>
		</footer>
		<!-- /FOOTER -->

		<!-- jQuery Plugins -->
		<script src="./js/jquery.min.js"></script>
		<script src="./js/bootstrap.min.js"></script>
		<script src="./js/slick.min.js"></script>
		<script src="./js/nouislider.min.js"></script>
		<script src="./js/jquery.zoom.min.js"></script>
		<script src="./js/main.js"></script>
		<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
		<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
function iamport(){
	//ê°?ë§¹ì  ?‹ë³„ì½”?“œ
	IMP.init('imp56561187');
	IMP.request_pay({
	    pg : 'kg',
	    pay_method : 'card',
	    merchant_uid : 'merchant_' + new Date().getTime(),
	    name : '?ƒ?’ˆ1' , //ê²°ì œì°½ì—?„œ ë³´ì—¬ì§? ?´ë¦?
	    amount : 100, //?‹¤? œ ê²°ì œ?˜?Š” ê°?ê²?
	    buyer_email : 'iamport@siot.do',
	    buyer_name : 'êµ¬ë§¤??´ë¦?',
	    buyer_tel : '010-1234-5678',
	    buyer_addr : '?„œ?š¸ ê°•ë‚¨êµ? ?„ê³¡ë™',
	    buyer_postcode : '123-456'
	}, function(rsp) {
		console.log(rsp);
	    if ( rsp.success ) {
	    	var msg = 'ê²°ì œê°? ?™„ë£Œë˜?—ˆ?Šµ?‹ˆ?‹¤.';
	        msg += 'ê³ ìœ ID : ' + rsp.imp_uid;
	        msg += '?ƒ?  ê±°ë˜ID : ' + rsp.merchant_uid;
	        msg += 'ê²°ì œ ê¸ˆì•¡ : ' + rsp.paid_amount;
	        msg += 'ì¹´ë“œ ?Š¹?¸ë²ˆí˜¸ : ' + rsp.apply_num;
	    } else {
	    	 var msg = 'ê²°ì œ?— ?‹¤?Œ¨?•˜???Šµ?‹ˆ?‹¤.';
	         msg += '?—?Ÿ¬?‚´?š© : ' + rsp.error_msg;
	    }
	    alert(msg);
	});
}

function sample4_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // ?Œ?—…?—?„œ ê²??ƒ‰ê²°ê³¼ ?•­ëª©ì„ ?´ë¦??–ˆ?„?•Œ ?‹¤?–‰?•  ì½”ë“œë¥? ?‘?„±?•˜?Š” ë¶?ë¶?.

            // ?„ë¡œëª… ì£¼ì†Œ?˜ ?…¸ì¶? ê·œì¹™?— ?”°?¼ ì£¼ì†Œë¥? ?‘œ?‹œ?•œ?‹¤.
            // ?‚´? ¤?˜¤?Š” ë³??ˆ˜ê°? ê°’ì´ ?—†?Š” ê²½ìš°?—” ê³µë°±('')ê°’ì„ ê°?ì§?ë¯?ë¡?, ?´ë¥? ì°¸ê³ ?•˜?—¬ ë¶„ê¸° ?•œ?‹¤.
            var roadAddr = data.roadAddress; // ?„ë¡œëª… ì£¼ì†Œ ë³??ˆ˜
            var extraRoadAddr = ''; // ì°¸ê³  ?•­ëª? ë³??ˆ˜

            // ë²•ì •?™ëª…ì´ ?ˆ?„ ê²½ìš° ì¶”ê??•œ?‹¤. (ë²•ì •ë¦¬ëŠ” ? œ?™¸)
            // ë²•ì •?™?˜ ê²½ìš° ë§ˆì?ë§? ë¬¸ìê°? "?™/ë¡?/ê°?"ë¡? ??‚œ?‹¤.
            if(data.bname !== '' && /[?™|ë¡?|ê°?]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            // ê±´ë¬¼ëª…ì´ ?ˆê³?, ê³µë™ì£¼íƒ?¼ ê²½ìš° ì¶”ê??•œ?‹¤.
            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // ?‘œ?‹œ?•  ì°¸ê³ ?•­ëª©ì´ ?ˆ?„ ê²½ìš°, ê´„í˜¸ê¹Œì? ì¶”ê??•œ ìµœì¢… ë¬¸ì?—´?„ ë§Œë“ ?‹¤.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }

            // ?š°?¸ë²ˆí˜¸?? ì£¼ì†Œ ? •ë³´ë?? ?•´?‹¹ ?•„?“œ?— ?„£?Š”?‹¤.
            document.getElementById('o_postcode').value = data.zonecode;
            document.getElementById("o_roadAddress").value = roadAddr;
            
            // ì°¸ê³ ?•­ëª? ë¬¸ì?—´?´ ?ˆ?„ ê²½ìš° ?•´?‹¹ ?•„?“œ?— ?„£?Š”?‹¤.
            if(roadAddr !== ''){
                document.getElementById("o_extraAddress").value = extraRoadAddr;
            } else {
                document.getElementById("o_extraAddress").value = '';
            }

        }
    }).open();
}
</script>
	</body>
</html>
