<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>회원가입</title>

    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    
    
    <style>

        body {
        font-family: 'a아메리카노L';
        background-color: #f8f8f8;
        }

        body .container {
        position: relative;
        overflow: hidden;
        width: 600px;
        height: 650px;
        margin: 80px auto 0;
        background-color: #ffffff;
        -moz-box-shadow: rgba(0, 0, 0, 0.1) 0px 10px 30px;
        -webkit-box-shadow: rgba(0, 0, 0, 0.1) 0px 10px 30px;
        box-shadow: rgba(0, 0, 0, 0.1) 0px 10px 30px;
        }
        body .container .half {

        padding: 58px 40px 0;
        }

        body .container h1 {
        font-size: 18px;
        font-weight: 700;
        margin-bottom: 23px;
        text-align: center;
        text-indent: 6px;
        letter-spacing: 7px;
        text-transform: uppercase;
        color: #263238;
        }

        body .container .tabs {
        width: 100%;
        margin-bottom: 29px;
        border-bottom: 1px solid #d9d9d9;
        }

        body .container .half .createForm{

            width: 520px;
            height: 400px;
            
            margin-right: 20px;
            margin-bottom: 20px;
            font-size: 14px;
            font-weight: 400;
            text-align: left;
            
            text-indent: -15px;
            letter-spacing: 7px;
            border: 1px solid black;
            text-transform: uppercase;

        }

        .buttonStyle{

            font-size: 12px;
            line-height: 42px;
            display: block;
            width: 50%;
            height: 42px;
            cursor: pointer;
            float: left;
            vertical-align: middle;
            letter-spacing: 2px;
            text-transform: uppercase;
            color: #263238;
            border: 1px solid #263238;
            background: transparent;
            -moz-border-radius: 2px;
            -webkit-border-radius: 2px;
            border-radius: 2px; 
        }

        .li{

            text-align: center;
            font-family: '굴림', sans-serif;

        }

        /*body .container .half .submit-wrap {
        position: absolute;
        bottom: 0;
        width: 100%;
        }*/

        .ol{
            

        }
    
    </style>
</head>
<body>
<section class="container">
        <article class="half">
        <form action="registerMember.do" method="post">
            <h1>BalPoom</h1>
                <div class="tabs"></div>
                    <div class="createForm">
						
                        <li>모든 헤엥목을 빠짐없이 기입해주시기 바랍니다.</li>

                        <ol>>id  <input type = "id" name = "m_id" class = "inpt"
                             required="required" placeholder="ID"><input type="button" value="중복 확인"> </ol>
                        <ol>>pw <input type="password" name = "m_password" class = "inpt"
                             required="required" placeholder="Password"></ol> 
                        <ol>>confirm <input type="password" name = "password" class = "inpt"
                             required="required" placeholder="Password"></ol>   
                        <ol>>name <input type="name" name = "m_name" class = "inpt"
                             required="required" placeholder="Your name"></ol>   
                        <ol>>birth <input type="text" name = "m_birth" class = "inpt"
                                required="required" placeholder="yyyy-mm-dd" ></ol> 
                        <ol>>HP <input type="text" name = "m_cellphone" class = "inpt"
                                required="required" placeholder="- 없이 입력"  ></ol> 
                        <ol>>P <input type="text" name = "m_phone" class = "inpt"
                                required="required" placeholder="- 없이 입력"  ></ol> 
                        <ol>>address <input type="text" id="m_address" readonly="" size="5">
                        <!--<input type="text" id="post2" readonly="" size="5" name="post2">-->
                        <input onclick="openDaumPostcode()" type="button" value="우편번호찾기"><br>
                        
                        <span style="LINE-HEIGHT: 10%"><br></span>
                        <input type="text" id="address" readonly="" size="40"  placeholder="도로명주소"><br>
                        <span style="LINE-HEIGHT: 10%"><br></span>
                        <input type="text" size="40" id="address2" placeholder="상세주소">
                        
                            
                    </div>
                    <div class = "submit-wrap">
                    <input class="buttonStyle" type = "submit" value = "Create">
                    <input class="buttonStyle" type = "button" value = "Cancel">
                    </div>
                    </form>    
        </article>

    </section>
    <div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
        <img src="//t1.daumcdn.net/localimg/localimages/07/postcode/320/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
    </div>
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"> </script>    
    <script>
        // 우편번호 찾기 화면을 넣을 element
        var element_layer = document.getElementById('layer');
    
        function closeDaumPostcode() {
            // iframe을 넣은 element를 안보이게 한다.
            element_layer.style.display = 'none';
        }
    
        function openDaumPostcode() {
            new daum.Postcode({
                oncomplete: function(data) {
                    // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
    
                    // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                    // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                    var fullAddr = data.address; // 최종 주소 변수
                    var extraAddr = ''; // 조합형 주소 변수
    
                    // 기본 주소가 도로명 타입일때 조합한다.
                    if(data.addressType === 'R'){
                        //법정동명이 있을 경우 추가한다.
                        if(data.bname !== ''){
                            extraAddr += data.bname;
                        }
                        // 건물명이 있을 경우 추가한다.
                        if(data.buildingName !== ''){
                            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                        // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                        fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                    }
    
                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    document.getElementById('postcode').value = data.zonecode; //5자리 새우편번호 사용
                    document.getElementById('address').value = fullAddr;
                    //document.getElementById('sample2_addressEnglish').value = data.addressEnglish;
    
                    // iframe을 넣은 element를 안보이게 한다.
                    // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                    element_layer.style.display = 'none';
                },
                width : '100%',
                height : '100%',
                maxSuggestItems : 5
            }).embed(element_layer);
    
            // iframe을 넣은 element를 보이게 한다.
            element_layer.style.display = 'block';
    
            // iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
            initLayerPosition();
        }
    
        // 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
        // resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
        // 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
        function initLayerPosition(){
            var width = 300; //우편번호서비스가 들어갈 element의 width
            var height = 400; //우편번호서비스가 들어갈 element의 height
            var borderWidth = 5; //샘플에서 사용하는 border의 두께
    
            // 위에서 선언한 값들을 실제 element에 넣는다.
            element_layer.style.width = width + 'px';
            element_layer.style.height = height + 'px';
            element_layer.style.border = borderWidth + 'px solid';
            // 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
            element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
            element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
        }
    </script>
        
    
</body>
</html>