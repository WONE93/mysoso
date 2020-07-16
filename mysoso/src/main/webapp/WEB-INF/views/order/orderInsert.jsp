<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="resources/admin/scss/hw.css" rel="stylesheet" type="text/css">


   <!-- 컨텐츠영역 -->

    <div class="title">
            <h3>계산서</h3>
    </div>
    
  
    <div class="line_color">
<table border="0" width=100%; height=15px;>


<col style="width:25%" >
<col style="width:25%" >
<col style="width:25%" >
<col style="width:25%" >

<thead>
<tr>
     <th scope="col">주문메뉴</th>
     <th scope="col">수량</th>
     <th scope="col">가격</th>
     <th scope="col">적립금</th>
</tr>

<tbody align="center">
<tr>
      <td>떡볶이</td>
      <td>1개</td>
      <td>10,000</td>
      <td>100</td>
</tr>
</tbody>
</table>
</div>
<div class="title" style="border-top: 1px solid #d5d5d5;" align="right">
            <h3>총주문금액</h3>
</div>
<!-- 메뉴담기 -->
<!-- <div class="row">

<div class="orderInsert col-lg-6 col-sm-12" >
   <table border="1" style="width:100%;">
   <tbody><tr>
   <th>주문메뉴</th><th>수량</th><th>가격</th>
   </tr>
   <tr>
      <td></td>
      <td></td>
      <td></td>
   </tr>
   </tbody></table>
   
   <p>총 주문 금액:________</p>
   
</div>  -->

<!-- 배달 -->
<div class="line_table" width="100%">
 <table class="" width="100%">
 <tr class="">
	<th scope="row">주소 </th>
         <td>
			<li>배달할거에요? <input type="checkbox"> 배달 주문시, 자동 회원가입 됩니다.</li><br>
             <input id="ozipcode1" name="ozipcode1" fw-filter="isFill" fw-label="주문자 우편번호1" fw-msg="" class="inputTypeText" placeholder="" size="6" maxlength="6" readonly="1" value="" type="text"> <a><img src="//img.echosting.cafe24.com/skin/base_ko_KR/order/btn_zipcode.gif" alt="우편번호" /></a><br>
             <input id="oaddr1" name="oaddr1" fw-filter="isFill" fw-label="주문자 주소1" fw-msg="" class="inputTypeText" placeholder="" size="40" readonly="1" value="" type="text"> <span class="txtInfo">기본주소</span><br>
             <input id="oaddr2" name="oaddr2" fw-filter="isFill" fw-label="주문자 주소2" fw-msg="" class="inputTypeText" placeholder="" size="40" value="" type="text"> <span class="txtInfo">나머지주소</span><span class="grid displaynone">(선택입력가능)</span>
         </td>
</tr>                         
<tr class="">
	<th scope="row">휴대전화 <span class=""><img src="//img.echosting.cafe24.com/skin/base_ko_KR/order/ico_required.gif" alt="필수"></span>
	</th>
    <td><select id="ophone2_1" name="ophone2_[]" fw-filter="isNumber&amp;isFill" fw-label="주문자 핸드폰번호" fw-alone="N" fw-msg="">
		<option value="010">010</option>
		<option value="011">011</option>
		<option value="016">016</option>
		<option value="017">017</option>
		<option value="018">018</option>
		<option value="019">019</option>
	</select>-<input id="ophone2_2" name="ophone2_[]" maxlength="4" fw-filter="isNumber&amp;isFill" fw-label="주문자 핸드폰번호" fw-alone="N" fw-msg="" size="4" value="" type="text">-<input id="ophone2_3" name="ophone2_[]" maxlength="4" fw-filter="isNumber&amp;isFill" fw-label="주문자 핸드폰번호" fw-alone="N" fw-msg="" size="4" value="" type="text"></td>
 </tr>
</table>
</div>
   


<!-- 결제금액 -->

<div class="line_table" width="100%" align="center">
<h3>결제금액</h3>
<div class="col-lg-12 col-sm-12">
<table>
   <tbody><tr>
      <td>주문금액</td><td></td>
   </tr>
   <tr>
      <td>할인금액</td><td></td>
   </tr>
   <tr>
      <td>적립금</td><td></td>
   </tr>
   <tr>
      <td colspan="2">총금액</td>
   </tr>
</tbody></table>
</div>
<br>
<button>취소하기</button>
<button>결제하기</button>
</div>

   
    </div>