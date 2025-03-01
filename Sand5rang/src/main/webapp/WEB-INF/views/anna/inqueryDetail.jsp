<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  
<head>
    <meta charset="utf-8">
    <title>Sand5rang</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">    
    
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet">
   


    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

  </head>
<style>
   inq_info {font-size: 12px;}
   .answer {align: center;}
   hr {color:lightgrey;}
   .ans_content{ width:100%; hight: 400px; }
   
 

</style>
<body>

<jsp:include page="include/1.jsp" />
<jsp:include page="include/2.jsp" />
<jsp:include page="include/3.jsp" />
<jsp:include page="include/4.jsp" />
<jsp:include page="include/5.jsp" />

<div class="navbar navbar-fixed-top">
	
	<div class="navbar-inner">
		
		<div class="container">
			
			<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</a>
			
			<a class="brand" href="admain.hs">
				Sand5rang 관리자				
			</a>		
			
			<div class="nav-collapse">
				<ul class="nav pull-right">
			
					<li class="dropdown">						
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<i class="icon-user"></i>
							관리자 님
							<b class="caret"></b>
						</a>
						
						<ul class="dropdown-menu">
							<li><a href="logout.me">Logout</a></li>
						</ul>						
					</li>
				</ul>
				
			</div><!--/.nav-collapse -->	
	
		</div> <!-- /container -->
		
	</div> <!-- /navbar-inner -->
	
</div> <!-- /navbar -->
<div class="subnavbar">
	<div class="subnavbar-inner">
	
		<div class="container">
			<ul class="mainnav">
			
				<li>
					<a href="admain.hs">
						<i class="icon-dashboard"></i>
						<span>메인</span>
					</a>	    				
				</li>
				<li class="dropdown">					
					<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
						<i class="icon-long-arrow-down"></i>
						<span>가맹점 업무처리</span>
						<b class="caret"></b>
					</a>	
				
					<ul class="dropdown-menu">
                        <li><a href="ad1.hs">가맹점 주문처리</a></li>
						<li><a href="ad2.hs">공장발주내역</a></li>
                    </ul>    				
				</li>
				
				<li class="dropdown active">					
					<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
						<i class="icon-long-arrow-down"></i>
						<span>가맹점 관리</span>
						<b class="caret"></b>
					</a>	
				
					<ul class="dropdown-menu">
                        <li><a href="storeList.sm">가맹점 조회</a></li>
						<li><a href="storeEnrollList.sm">가맹가입신청</a></li>
						<li><a href="inqList.an">문의 조회</a></li>
                    </ul>    				
				</li>
				
				<li>
					<a href="ad3.hs">
						<i class="icon-money"></i>
						<span>결제대금</span>
					</a>    				
				</li>
			
			</ul>
		</div> <!-- /container -->
	
	</div> <!-- /subnavbar-inner -->
</div> <!-- /subnavbar -->
    

<div class="main">
	
	<div class="main-inner" style="margin-bottom:300px;">

	    <div class="container">
	
	      <div class="row">
	      	
	      	<div class="span12">      		
	      		
	      		<div class="widget">
	      			
	      			<div class="widget-header">
                        
	      				<i class="icon-comment-alt"></i>
	      				<h3>문의 조회</h3></div> <!-- /widget-header -->
                        <div class="widget-content">
<br>

    <div class="wrap">
       
        <div class="content">
    
            <!--content 영역-->
            <div class="content_detail">
            
            <form id="postForm" action="" method="post">
	              <input type="hidden" name="ino" value="${ i.inqNo }">
	            </form>

                <!--가맹점이 작성한 문의 제목-->
                <div class="inq_title"> 
                  	<div style="padding-bottom:5px; margin-left:10px;">
                  		<h1>${i.inqTitle}</h1>
                  	</div>
                  
                       	<!--작성글 세부 정보 및 답변 상태-->
                       	<div class="inq_info">
                            <div style="display:inline-block; padding-right:10px; font-size:15px;margin-left:10px;">카테고리:  ${i.category} </div>
                            <div style="display:inline-block; padding-right:10px; font-size:15px;">가맹점:  ${i.storeName}</div>
                            <div style="display:inline-block; padding-right:10px; font-size:15px;">문의날짜 :  ${i.inqDate} </div>
                            <div style="display:inline-block; padding-right:10px; font-size:15px;">답변상태: </div>
                            <div style="display:inline-block; font-size:15px;">
                            <c:if test="${empty i.ansDate }">답변대기</c:if>
                            ${i.ansDate}</div>
                             
                        </div><br>
                </div>

                <!--가맹점이 작성한 문의 본문-->
                <div class="inq_content"> 
                    <pre name="inqQuery">${ i.inqQuery }</pre>
                </div><br><hr>
				 <div  style="width:800px; align:center; font-size:16px; margin-left:40px;" class="ans_content"> 
                    ${ i.inqAnswer }
                </div>

            </div><br>

            </div><br>
            
             <!--관리자 답변 버튼 -->
             <div class="answer" align="right">
                <a href="ansForm.an?ino=${i.inqNo}" class="btn btn-success btn-large">답변하기</a>
                <a href="#" onClick="history.back();" class="btn btn-invert btn-large" >목록으로</a>
            </div><!-- 관리자 답변 버튼 끝 -->



         </div>
     		</div>
    			</div>
        			</div> <!-- /widget -->
	      		</div> <!-- /span8 -->
	  		 </div> <!-- /row -->
	  	 </div> <!-- /container -->
	    </div> <!-- /main-inner -->  
</div> <!-- /main -->
    
 
<div class="extra">

	<div class="extra-inner">

		<div class="container">

			<div class="row">
                    <div class="span3">
                        <h4>
                            About Free Admin Template</h4>
                        <ul>
                            <li><a href="javascript:;">EGrappler.com</a></li>
                            <li><a href="javascript:;">Web Development Resources</a></li>
                            <li><a href="javascript:;">Responsive HTML5 Portfolio Templates</a></li>
                            <li><a href="javascript:;">Free Resources and Scripts</a></li>
                        </ul>
                    </div>
                    <!-- /span3 -->
                    <div class="span3">
                        <h4>
                            Support</h4>
                        <ul>
                            <li><a href="javascript:;">Frequently Asked Questions</a></li>
                            <li><a href="javascript:;">Ask a Question</a></li>
                            <li><a href="javascript:;">Video Tutorial</a></li>
                            <li><a href="javascript:;">Feedback</a></li>
                        </ul>
                    </div>
                    <!-- /span3 -->
                    <div class="span3">
                        <h4>
                            Something Legal</h4>
                        <ul>
                            <li><a href="javascript:;">Read License</a></li>
                            <li><a href="javascript:;">Terms of Use</a></li>
                            <li><a href="javascript:;">Privacy Policy</a></li>
                        </ul>
                    </div>
                    <!-- /span3 -->
                    <div class="span3">
                        <h4>
                            Open Source jQuery Plugins</h4>
                        <ul>
                            <li><a href="">Open Source jQuery Plugins</a></li>
                            <li><a href="">HTML5 Responsive Tempaltes</a></li>
                            <li><a href="">Free Contact Form Plugin</a></li>
                            <li><a href="">Flat UI PSD</a></li>
                        </ul>
                    </div>
                    <!-- /span3 -->
                </div> <!-- /row -->

		</div> <!-- /container -->

	</div> <!-- /extra-inner -->

</div> <!-- /extra -->


    
    
<div class="footer">
	
	<div class="footer-inner">
		
		<div class="container">
			
			<div class="row">
				
    			<div class="span12">
    				&copy; 2013 <a href="#">Bootstrap Responsive Admin Template</a>.
    			</div> <!-- /span12 -->
    			
    		</div> <!-- /row -->
    		
		</div> <!-- /container -->
		
	</div> <!-- /footer-inner -->
	
</div> <!-- /footer -->
    


<jsp:include page="include/6.jsp" />


  </body>

</html>
