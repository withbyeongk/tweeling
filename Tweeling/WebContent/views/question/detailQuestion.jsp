<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    import="com.kh.question.model.vo.Question,
    		com.kh.question.model.vo.QAttachment"%>
<%
	int orderCount = (int)request.getAttribute("orderCount");			// 총 주문 건 수
	int mileage = (int)request.getAttribute("mileage");					// 보유 적립금
	int couponNum = (int)request.getAttribute("couponNum");				// 보유 쿠폰 수
	
	Question q = (Question)request.getAttribute("question");
	QAttachment qat = (QAttachment)request.getAttribute("attachment");
	System.out.println(q);
	System.out.println(qat);
	
	String qType = "";
	int temp = q.getQuestionType();
	
	switch(temp){
	case 1: 
		qType = "상품"; break;
	case 2:
		qType = "결제"; break;
	case 3:
		qType = "배송"; break;
	case 4:
		qType = "이벤트"; break;	
	case 5:
		qType = "회원"; break;	
		default:
		qType = "기타";
	}
	
%>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Tweeling</title>
    <style>
        .myPageOuter{
            width: 70%;
            /* border: 1px solid black; */
            /* background-color: antiquewhite; */
            /*margin-top: 100px;*/
            margin: 3% auto;
        }
        
        /* myPageTop 영역 스타일 시작 */
        .header{
        	margin-top: 100px;
        }
        .myPageTop{
            margin:0 auto;      /*myPageBody영역 내에 div들이 가운데 정렬*/
            width:100%;
            height: 150px;
        }
        .myPageCeleb {
        	float:left;
        	height: 100%;
        	width: 170px;
        	text-align:center;
        }
        .myPageInfo{
            /*border: 1px solid aqua;*/
            float:left;
            margin-left: 7%;
            width: 50%;
            height: 100%;
        }
        .myCelebName{
            width:100%;
        }
        .celebImg{
        	width:100%;
        	height:100%;
        }
        #myPageInfoTable{
            text-align: center;
            font-size: 1rem;
        }
        #userName{
            font-size: 2rem;
            font-weight: bold;
        }
        #userName-sub{
            font-size: 1.2rem;
            font-weight: bold;
            padding-right: 5%;
        }
        .userGrade{
            font-size: 1.2rem;
            font-weight: bold;
        }
        /* myPageTop 영역 스타일 끝 */

        /* myMenu 스타일 시작 */
        .myPageBottom{
            /* border: 1px solid red; */
            margin-top: 10%;
        }
        .myPageContent{
            /* border: 1px solid aqua; */
            float:left;
            margin: 0 3% 0 3%;
            width: 70%;
            height: 100%;
            clear:both;
        }
        .myPageNavigator{
            /* border: 1px solid black; */
            float: right;
            width: 20%;
            height: 100%;
        }
        .myPageMenuSpan{
            font-size: 1.1rem;
            font-weight: bold;
        }
        .myPage-main-li {
            margin-left: 0px;
            list-style: none;
            line-height: 200%;
            font-size: 0.8rem;
        }
        .myPage-sub-li{
            margin-left: 0px;
            list-style: none;
            line-height: 150%;
        }
        .myPage-a{
            font-size: 0.9rem;
            color: black;
            text-decoration: none;		/*링크 스타일 안먹음*/
        }
        .myPage-a:hover{
            color: black;
            font-weight: bold;
            text-decoration: none;
        }
        #myPage{
            font-size: 0.9rem;
        }
        /* myMenu 스타일 끝 */

        /* myPageContent 스타일 시작 */
        .detailArea{
        	width:80%;
        	margin: auto;
        }
        .detailTbTr{
        	margin: auto;
        	width: 100%;
        	height: 30px;
        }
        
        .detailBackColor{
        	background-color: #D7BFDC;
        }
        .linkBtn{
        	width: 50px;
        	height: 30px;
        	background-color: #D7BFDC;
            border-radius: 30px;
            border: 0;
        }
        #reply-area{
        	margin: auto;
        	width: 85%;
        }
        #reply-area>thead>tr{
        	height:50px;
        }
        #reply-area>tbody>tr{
        	height:50px;
        }
    </style>
</head>
<body>
	<%@ include file="../common/realMenubar.jsp" %>
    <div class="myPageOuter">
        <div class="header">
        </div>
        <div class="myPageBody">
            <!-- myPageTop 추가 시작 -->
            <div class="myPageTop">
                <div class="myPageCeleb">
                    <img class="celebImg" src="resources/member_upfiles/<%=loginUser.getUserBias() %>.png" alt="<%=loginUser.getUserBias()%>">
                </div>
                <div class="myPageInfo">
                    <br>
                    <span id="userName"><%=loginUser.getUserName() %></span><span id="userName-sub">님</span>
                    <span class="userGrade">Lv</span><span class="userGrade">99</span>
                    <br><br>
                    <table id="myPageInfoTable">
                        <tr>
                            <td width="200px">주문 내역</td>
                            <td width="250px">취소/교환/반품</td>
                            <td width="150px">적립금</td>
                            <td width="150px">쿠폰</td>
                        </tr>
                        <tr>
                            <td><%=orderCount%>건</td>
                            <td>0 / 0 / 0</td>
                            <td><%=mileage %>원</td>
                            <td><%=couponNum %>개</td>
                        </tr>
                    </table>
                </div>
            </div>
            <!-- myPageTop 추가 끝 -->
            <div class="myPageBottom">
                <div class="myPageContent">
                    <!--우측 myPageNavigator에 따라 변경되는 부분 -->
                    <span class="myPageMenuSpan" style=margin-right:70%;">&nbsp&nbsp1:1 문의 상세</span>
                    <hr width="100%" align="left" color="black">
                    <br>
                    <div class="detailArea">
	                    <input type="hidden" name="userNo" value="<%=loginUser.getUserNo() %>">
	                    
	                    <table class="detailTable">
	                    	<thead>
	                    		<tr class="detailTbTr">
	                    			<th width="150px;" class="detailBackColor">카테고리</th>
	                    			<td width="250px;"><%=qType %></td>
	                    			<th width="150px;" class="detailBackColor">작성일</th>
	                    			<td width="250px;"><%=q.getCreateDate() %></td>
	                    		</tr>
	                    		<tr class="detailTbTr">
	                    			<th class="detailBackColor">제목</th>
	                    			<td colspan="3"><%=q.getQuestionTitle() %></td>
                    			</tr>
	                    	</thead>
	                    	<tbody>
	                    		<tr class="detailTbTr">
	                    			<th class="detailBackColor" height="300px">내용</th>
	                    			<td colspan="3">
	                    				<%=q.getQuestionContent() %>
	                    			</td>
	                    		</tr>
	                    		<tr class="detailTbTr">
	                    			<th class="detailBackColor">첨부파일</th>
	                    			<%if(qat == null) { %>
	                    			<td colspan="3">없음</td>
	                    			<%} else { %>
	                    			<td colspan="3">
	                    				<a download href="<%=contextPath %>/<%=qat.getFilePath()%><%=qat.getOriginName() %>"><%=qat.getOriginName() %></a>
	                    			</td>
	                    			<%} %>
	                    		</tr>
	                    	</tbody>
	                    </table>
					</div>
                    <br>
                    <hr width="100%" align="left" color="black">
                    <br>
                    <div align="center">
						<!-- 현재는 목록을 눌렀을 때 1페이지로 가는데, 원래 페이지로 가도록 수정해야 함 -->
						<button class="linkBtn" onclick="location.href='<%=contextPath%>/listView.question?currentPage=1'" >목록</button>
						<button class="linkBtn" onclick="location.href='<%=contextPath%>/updateForm.question?qno=<%=q.getQuestionNo()%>'">수정</button>
						<button class="linkBtn" onclick="location.href='<%=contextPath%>/delete.question?qno=<%=q.getQuestionNo()%>'">삭제</button>
					</div>
                    <br>
					<div id="reply-area">
						<table align="center">
							<thead>
								<tr>
									<th align="center" width="80px">댓글작성</th>
									<td>
										<textarea id="replyContent" rows="3" cols="100" style="resize:none"></textarea>
									</td>
									<td colspan="2"><button onclick="insertReply();" class="linkBtn">등록</button></td>
								</tr>
							</thead>
						</table>
						<br><br>
						<table align="center">
							<thead>
								<tr style="border-bottom:1px solid black;">
									<th width="80px">작성자</th>
									<th width="580px">댓글 내용</th>
									<th width="100px">작성일</th>
									<th width="50px">삭제</th>
								</tr>
							</thead>
							<tbody>
							</tbody>
						</table>
					</div>
                </div>
                
                <div class="myPageNavigator">
                    <div>
                        <li class="myPageMenuSpan myPage-main-li" ><a class="myPage-a" href="">&nbsp&nbspMy Page</a></li>
                        <p clear:both;></p>
                        <hr width="150" align="left" color="black">
                        <div>
                            <li class="myPage-main-li">&nbsp나의 쇼핑 정보</li>
                            <li class="myPage-sub-li"><a class="myPage-a" href="<%=contextPath%>/orderList.mp">&nbsp&nbsp&nbsp&nbsp&nbsp주문 내역</a></li>
                            <li class="myPage-sub-li"><a class="myPage-a" href="<%=contextPath%>/wishList.mp">&nbsp&nbsp&nbsp&nbsp&nbsp관심 상품</a></li>
                            <li class="myPage-sub-li"><a class="myPage-a" href="<%=contextPath%>/selectPoint.mp">&nbsp&nbsp&nbsp&nbsp&nbsp적립금</a></li>
                            <li class="myPage-sub-li"><a class="myPage-a" href="<%=contextPath%>/selectCoupon.mp">&nbsp&nbsp&nbsp&nbsp&nbsp쿠폰</a></li>
                        </div>
                        <br><br>
                        <div>
                            <li class="myPage-main-li">&nbsp회원 정보</li>
                            <li class="myPage-sub-li"><a class="myPage-a" href="<%=contextPath%>/updateMember.me">&nbsp&nbsp&nbsp&nbsp&nbsp회원 정보 수정</a></li>
                            <li class="myPage-sub-li"><a class="myPage-a" href="<%=contextPath%>/shippingManage.mp">&nbsp&nbsp&nbsp&nbsp&nbsp배송지 관리</a></li>
                        </div>
                        <br><br>
                        <div>
                            <li class="myPage-main-li">&nbsp고객 센터</li>
                            <li class="myPage-sub-li"><a class="myPage-a" href="<%=contextPath%>/listView.question?currentPage=1">&nbsp&nbsp&nbsp&nbsp&nbsp1:1 문의</a></li>
                            <li class="myPage-sub-li"><a class="myPage-a" href="<%=contextPath%>/noticeList.no">&nbsp&nbsp&nbsp&nbsp&nbsp공지사항</a></li>
                            <li class="myPage-sub-li"><a class="myPage-a" href="<%=contextPath%>/announcement.no">&nbsp&nbsp&nbsp&nbsp&nbsp이용 안내</a></li>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>

        <div class="footer">
            <!-- include footer-->
        </div>
        
        <script>
	        $(function(){
				selectReplyList();
				
				//setInterval(selectReplyList,1000);
			});
		
		
			function insertReply(){
				$.ajax({
					url : "rinsert.question",
					data : {
						qno : <%=q.getQuestionNo()%>,
						content : $("#replyContent").val()
					},
					type : "post",
					success : function(result){
						
						if(result>0){
							console.log("댓글작성 성공");
							selectReplyList();//댓글목록 갱신
							$("#replyContent").val("");
						}else{
							console.log("댓글작성 실패");
						}
					},
					error : function(){
						console.log("통신 실패");
					}
				});
			}
			
			function selectReplyList(){
				$.ajax({
					url : "rlist.question",
					data : {qno : <%=q.getQuestionNo()%>},
					success : function(list){
						var str ="";
						for(var i in list){
							str += "<tr>"
									+ "<td align='center'>"+list[i].replyWriter+"</td>"
									+ "<td>"+list[i].replyContent+"</td>"
									+ "<td align='center'>"+list[i].createDate+"</td>"
									+ "<td align='center'><button class='detailBackColor' style='border:none;' onclick='deleteReply("+list[i].replyNo+");'>삭제</button>"
									+ "</tr>";
						}
						$("#reply-area tbody").html(str);
					},
					error : function(){
						console.log("통신 실패");
					}
				});
			}
			
			function deleteReply(replyNo){
				console.log(replyNo);
				$.ajax({
					url : "rdelete.question",
					data : {replyNo : replyNo},
					success : function(result){
						console.log("ajax 결과 : "+result);
						selectReplyList();
					},
					error : function(){
						console.log("ajax 실패");
					}
				});
			}
        </script>
        
    </div>
</body>
</html>