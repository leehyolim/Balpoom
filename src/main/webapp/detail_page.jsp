<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Insert title here</title>
<script type="text/javascript" src="./js/cloud-zoom.1.0.2.min.js"></script>
    
    <script type="text/javascript">
    function cloudZoom()
    {
    
        $('.cloud-zoom').CloudZoom();
    
    }
    </script>
</head>
<body>
	<div style="padding: 10px 30px 30px 30px;">
        <table border="0" cellspacing="0" cellpadding="0" class="auto">
                <tr width='360' height='366'>
                    <td align="center" valign="middle"><img src="C:\JavaScript_Space/Tulips.jpg"></td>
                </tr>
                </table>
                
                
                <link rel="stylesheet" type="text/css" href="./css/cloud-zoom.css" />
                
                <!-- 상품 이미지 end //-->
                    </td>
                    <td width="50"></td>
                    <td valign="top" class="item_information">
                <!-- 상품 정보 박스 start //-->
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td class="item_title">중앙정보</td>
                </tr>
                </table>
                
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr height="5"><td></td></tr>
                </table>
                
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                
                </table>
                
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr height="10"><td></td></tr>
                </table>
                
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr><td height="1" bgcolor="#cccccc" class="none">&nbsp;</td></tr>
                </table>
                
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr height="30">
                    <td width="60" class="item_subtitle">판매가 :</td>
                    <td class="item_money">25,000 원</td>
                </tr>
                <tr height="1" bgcolor="#f4f4f4"><td colspan="2"></td></tr>
                
                </table>
                
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr><td height="1" bgcolor="#cccccc" class="none">&nbsp;</td></tr>
                </table>
                
                <table border="0" cellspacing="0" cellpadding="0">
                
                </table>
                
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr><td height="1" bgcolor="#f4f4f4" class="none">&nbsp;</td></tr>
                </table>
                
                
                <table border="0" cellspacing="0" cellpadding="0">
                <tr height="30">
                    <td width="60" class="item_subtitle">배송비</td>
                    <td class="item_delivery_money">2,500원</td>
                </tr>
                </table>
                
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr><td height="1" bgcolor="#cccccc" class="none">&nbsp;</td></tr>
                </table>
                
                <table border="0" cellspacing="0" cellpadding="0">
                <tr height="30">
                    <td width="60" class="item_subtitle">배송비결제</td>
                    <td>
                <select id="order_delivery_pay" name="order_delivery_pay" class="select">
                <option value="0">주문시 결제</option>
                </select>
                    </td>
                </tr>
                </table>
                
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr><td height="1" bgcolor="#cccccc" class="none">&nbsp;</td></tr>
                </table>
                
                <div id="item_cart_data" style="display:none;"></div>
                
                <form method="post" id="formItem" name="formItem" autocomplete="off">
                <input type="hidden" name="url" value="http%3A%2F%2Fdmshop.kr%2Fitem.php%3Fid%3DJ252641947" />
                <input type="hidden" name="m" value="" />
                <input type="hidden" name="cart_type" value="" />
                <input type="hidden" name="item_id" value="16" />
                <input type="hidden" id="cart_id" name="cart_id" value="" />
                <input type="hidden" id="order_start" name="order_start" value="" />
                <input type="hidden" name="order_delivery_pay" value="" />
                <input type="submit" value="ok" disabled style="display:none;" />
                
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr height="3"><td></td></tr>
                </table>
                
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td>
                <div style="border:1px solid #eaeaea; background-color:#ffffff;">
                <div style="padding:7px 10px 7px 10px;">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td width="55" class="order_title">주문수량</td>
                    <td width="85">
                <table border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td><input type="text" id="order_limit" name="order_limit" class="input" value="1" onkeyup="orderCheck();" /></td>
                    <td width="2"></td>
                    <td class="order_limit">개</td>
                   
                </tr>
                </table>
                    </td>
                    <td align="right">
                <table border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td class="order_title2">금액 :</td>
                    <td width="5"></td>
                    <td class="item_total_money"><span id="order_total_money_view">25,000</span>원</td>
                </tr>
                </table>
                    </td>
                </tr>
                </table>
                </div>
                </div>
                    </td>
                </tr>
                </table>

                <table border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td><a href="orderForm.jsp"><input type="button" value="주문하기"></a></td>
                            <td width="2"></td>
                            <td><a href="basket.jsp"><input type="button" value="장바구니"></a></td>
                            <td width="2"></td>
                            
                        </tr>
                        </table>
                        
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr height="20"><td></td></tr>
                        </table>
                        
                
                <input type="hidden" id="item_option_id" name="item_option_id" value="" />
                <input type="hidden" id="order_total_money" name="order_total_money" value="0" />
                </form>
        </div> 
        <a name="item_view"></a>
        <div style="padding:15px 15px 15px 15px;" class="item_view">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr class="tab_bg">
            <td>
        <table border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="141" onclick="shopMove('#item_view'); return false;" class="tab_use1_on pointer"></td>
            <td width="141" onclick="shopMove('#item_delivery'); return false;" class="tab_use2_off pointer"></td>
            <td width="141" onclick="shopMove('#item_refund'); return false;" class="tab_use3_off pointer"></td>
           
        </tr>
        </table>
            </td>
            <td class="tab_side"></td>
        </tr>
        </table>
        
        <!-- 상품 요약안내 start //-->
        
        <!-- 상품 요약안내 end //-->
        
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr height="150">
            <td>
        </td>
        </tr>
        </table>
        </div>
        
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr><td height="1" bgcolor="#efefef" class="none">&nbsp;</td></tr>
        </table>
               
        <a name="item_delivery"></a>
        <div style="padding:15px 15px 15px 15px;" class="item_view">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr class="tab_bg">
            <td>
        <table border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="141" onclick="shopMove('#item_view'); return false;" class="tab_use1_off pointer"></td>
            <td width="141" onclick="shopMove('#item_delivery'); return false;" class="tab_use2_on pointer"></td>
            <td width="141" onclick="shopMove('#item_refund'); return false;" class="tab_use3_off pointer"></td>
           
        </tr>
        </table>
            </td>
            <td class="tab_side"></td>
        </tr>
        </table>
        
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr height="150">
            <td><style type="text/css">.delivery_information p {line-height:16px; font-size:12px; color:#878787; font-family:gulim,굴림;} .delivery_information p a {line-height:16px; font-size:12px; color:#878787; font-family:gulim,굴림;}</style>
        <div class="delivery_information">
        <div style="margin-top:10px; border:1px solid #e0e0e0;">
        <div style="padding:20px; border:4px solid #f2f2f2;">
        <table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td width="9"></td><td><img src="/image/shop/public/parcel01.gif"></td></tr></tbody></table><table style="margin-top:10px; border-top:2px solid #f4f4f4;" border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr height="30"><td></td></tr></tbody></table>
        <table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td width="55"></td><td valign="top" width="90"><p style="margin-top:5px;"><img src="/image/shop/public/parcel02.gif"></p></td><td valign="top"><p>저희 쇼핑몰은 <font color="#436fca">평일 오후 4시 이전 결제완료건에 한하여, 당일 발송</font>을 원칙으로 합니다.<br>단, 주문상품의 입고지연 및 주문제작 상품 경우, 발송기간이 2~3일 가량 지연될 수 있습니다.</p><p style="margin-top:10px; font-weight:bold;">평일(월~금) 주문건 오후 4시 이전 결제건</p><p>당일 발송. 오후 6시 상품 출고</p><p style="margin-top:10px; font-weight:bold;">평일(월~금) 주문건 오후 4시 이후 결제건</p><p>익일 발송. 다음날 오후 6시 상품 출고</p><p style="margin-top:10px; font-weight:bold;">토/일/공휴일 결제건</p><p>다음 영업일 기준 오후 6시 상품 출고</p></td></tr></tbody></table><table style="margin-top:25px; border-top:1px solid #f4f4f4;" border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr height="30"><td></td></tr></tbody></table>
        <table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td width="55"></td><td valign="top" width="90"><p style="margin-top:5px;"><img src="/image/shop/public/parcel03.gif"></p></td><td valign="top"><p>배송기간은 상품발송일로 부터, <font color="#436fca">택배사의 사정에 따라 1일~4일 가량</font> 소요될 수 있습니다.</p><p>주말/공휴일을 포함하거나, 도선산간 지역일 경우 추가적인 배송지연이 발생할 수 있습니다.</p></td></tr></tbody></table><table style="margin-top:25px; border-top:1px solid #f4f4f4;" border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr height="30"><td></td></tr></tbody></table>
        <table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td width="55"></td><td valign="top" width="90"><p style="margin-top:5px;"><img src="/image/shop/public/parcel04.gif"></p></td><td valign="top"><p>5만원 이하 결제건 : <b>배송비 2,500원</b> (주문 결제시, 부담)</p><p>5만원 이상 결제건 : <b>무료 배송</b></p><p style="margin-top:10px;">단, 아래와 같은 경우 별도의 추가 배송비(도선료)가 발생 됩니다.</p><p style="margin-left:5px;">- 도서산간/제주도 : 추가요금 500원</p><p style="margin-left:5px;"> - 국내 기타/섬 지역 : 4,500원</p><p style="margin-left:5px;"> - 해외 발송 : 전화문의</p></td></tr></tbody></table><table style="margin-top:25px; border-top:1px solid #f4f4f4;" border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr height="30"><td></td></tr></tbody></table>
        <table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td width="55"></td><td valign="top" width="90"><p style="margin-top:10px;"><img src="/image/shop/public/parcel05.gif"></p></td><td valign="top"><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td valign="top"><img src="/image/shop/public/parcel06.gif"></td><td width="20"></td><td valign="top"><p style="margin-top:25px; font-weight:bold;">우체국 택배</p><p>홈페이지 : <a href="http://parcel.epost.go.kr/" target="_blank">http://parcel.epost.go.kr/</a></p><p>전화문의 : 1588-1300</p><p>상담시간 : 평일 09:00 ~ 18:00</p></td></tr></tbody></table><table style="margin-top:10px;" border="0" cellpadding="0" cellspacing="0"><tbody><tr><td><p>배송조회는 택배사의 홈페이지 또는 전화문의를 이용 하시거나,<br>쇼핑몰 내 마이페이지 &gt; 배송조회를 통해 확인하실 수 있습니다.</p></td></tr></tbody></table></td></tr></tbody></table><table border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr height="25"><td></td></tr></tbody></table>
        </div>
        </div>
        </div></td>
        </tr>
        </table>
        </div>
        
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr><td height="1" bgcolor="#efefef" class="none">&nbsp;</td></tr>
        </table>
        <!-- 배송안내 end //-->
        
        <!-- 환불규정 start //-->
        <a name="item_refund"></a>
        <div style="padding:15px 15px 15px 15px;" class="item_view">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr class="tab_bg">
            <td>
        <table border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="141" onclick="shopMove('#item_view'); return false;" class="tab_use1_off pointer"></td>
            <td width="141" onclick="shopMove('#item_delivery'); return false;" class="tab_use2_off pointer"></td>
            <td width="141" onclick="shopMove('#item_refund'); return false;" class="tab_use3_on pointer"></td>
            
        </tr>
        </table>
            </td>
            <td class="tab_side"></td>
        </tr>
        </table>
        
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr height="150">
            <td><style type="text/css">.refund_information p {line-height:16px; font-size:12px; color:#878787; font-family:gulim,굴림;} .refund_information p a {line-height:16px; font-size:12px; color:#878787; font-family:gulim,굴림;}</style>
        <div class="refund_information">
        <div style="margin-top:10px; border:1px solid #e0e0e0;">
        <div style="padding:20px 0 30px 0; border:4px solid #f2f2f2;">
        <table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td width="30"></td><td><img src="/image/shop/public/policy01.gif"></td></tr></tbody></table>
        <table style="margin-top:10px; border-top:2px solid #f4f4f4;" border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr height="30"><td></td></tr></tbody></table>
        <table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td align="right" valign="top" width="135"><p style="margin-top:5px;"><img src="/image/shop/public/policy02.gif"></p></td><td width="30"></td><td valign="top"><p>저희 쇼핑몰은 판매자의 과실 또는 소비자의 과실로 발생되는 상품의 교환, 환불(반품) 서비스를<br>소비자 보호법에 의거하여 상품수령로 부터 7일 이내에 요청하실 수 있습니다.</p><p style="margin-top:10px; font-weight:bold;">주문취소 접수</p><p>상품 주문 후, 배송준비 전 단계에서 마이페이지를 통해서 [주문취소]접수가능</p><p style="margin-top:10px; font-weight:bold;">상품교환 접수</p><p>상품 수령 후, 마이페이지에서 [상품수령]버튼 클릭 후 [교환신청]버튼을 클릭하여 접수가능</p><p style="margin-top:10px; font-weight:bold;">환불/반품 접수</p><p>상품 수령 후, 마이페이지에서 [상품수령]버튼 클릭 후 [환불신청]버튼을 클릭하여 접수가능</p></td></tr></tbody></table><table style="margin-top:25px; border-top:1px solid #f4f4f4;" border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr height="30"><td></td></tr></tbody></table>
        <table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td align="right" valign="top" width="135"><p style="margin-top:5px;"><img src="/image/shop/public/policy03.gif"></p></td><td width="30"></td><td valign="top"><p>판매자의 과실로인한 상품 교환 및 환불시에는 <b>왕복 배송요금 5,000원을 판매자가 부담</b> 합니다.</p><p>판매자의 과실에 해당하는 사유는 다음과 같습니다.</p><p style="margin-top:10px;">- 오배송 : 주문상품과 다른 상품, 주문옵션과 다른 옵션의 상품이 배송되었을 때</p><p>- 제품불량 : 제품의 하자 또는 사용 및 외관상 결함이 있을 때</p><p>- 허위광고 : 쇼핑몰의 제품 안내문구와, 차이가 있을 때</p><p>※ 예외규정 : 모니터상의 제품사진과 실제품의 미세한 색상 또는 규격의 차이</p><p style="margin-left:75px;">상품 상세정보를 통해 사전에 안내된 경우 등</p></td></tr></tbody></table><table style="margin-top:25px; border-top:1px solid #f4f4f4;" border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr height="30"><td></td></tr></tbody></table>
        <table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td align="right" valign="top" width="135"><p style="margin-top:5px;"><img src="/image/shop/public/policy04.gif"></p></td><td width="30"></td><td valign="top"><p>소비자의 과실로인한 상품 교환 및 환불시에는 <b>왕복 배송요금 5,000원을 소비자가 부담</b> 합니다.</p><p>소비자의 과실에 해당하는 사유는 다음과 같습니다.</p><p style="margin-top:10px;">- 단순변심 : 판매자 과실에 해당하는 사유하지 않는 사유로 교환 및 환불을 요청할 때</p><p>- 주문오류 : 소비자가 실수로 상품 및 주문옵션을 잘못 입력하였을 때</p><p>- 판매자 과실의 예외규정에 명시된 항목</p></td></tr></tbody></table><table style="margin-top:25px; border-top:1px solid #f4f4f4;" border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr height="30"><td></td></tr></tbody></table>
        <table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td align="right" valign="top" width="135"><p style="margin-top:5px;"><img src="/image/shop/public/policy05.gif"></p></td><td width="30"></td><td valign="top"><p>상품 수령 후, 반품/교환 요청 시 아래의 사유에 해당할 경우, 판매자는 소비자 보호법에 의거하여<br>반품 및 교환을 거절할 수 있으니, 반드시 확인 하시기 바랍니다.</p><p style="margin-top:10px;">- 소비자에게 책임 있는 사유로 상품이 멸실 또는 훼손된 경우</p><p>- 소비자의 개봉 또는 사용흔적 등으로 인하여, 새 상품으로서의 가치가 훼손된 경우</p><p>- 상품 수령일로 부터 반품 및 교환접수 기간이 경과하였을 경우</p><p>- 무단복제를 목적으로 상품을 구입하였을 경우</p><p>- 그 외 주문제작, 해외 직배송 등의 사유로 반품/교환 불가 상품으로 사전 명시된 상품일 경우</p></td></tr></tbody></table>
        </div>
        </div>
        </div></td>
        </tr>
        </table>
        </div>
        
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr><td height="1" bgcolor="#efefef" class="none">&nbsp;</td></tr>
        </table>
</body>
</html>