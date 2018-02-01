<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="./css/detail_edit.css" />
    <title>Document</title>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>

</head>

<body>
    <div class="wrapper">
        <div class="detail_Info">
            <diV class="half_detail_Info_Img">
                <div class="show_Img">
                    <img src="">
                </div>
                <div class="wating_Img">

                </div>
            </diV>
            <div class="half_detail_Info_Text">
                <form action="#">
                    <div class="info_box1">
                        <p class="product_name">
                            <h1>상품명이 들어갈공간~~</h1>
                        </p>
                    </div>
                    <br>
                    <table class="Info_table">
                        <tr>
                            <td>가격</td>
                            <td>
                                <span>5000원</span>
                            </td>
                        </tr>
                        <tr>
                            <td>배송비</td>
                            <td>30,000원 이상 무료, 미만 2,500원</td>
                        </tr>
                        <tr>
                            <td>색상</td>
                            <td>색상을 선택해 주세요
                                <br>
                                <select class="option_selecter" id="color_selecter" onchange="color_select(this.value)">
                                    <option>S</option>
                                    <option>L</option>
                                    <option>M</option>
                                    <option>XL</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>사이즈</td>
                            <td>사이즈를 선택해 주세요
                                <br>
                                <select class="option_selecter" id="size_selecter" onchange="size_select(this.value)">
                                    <option>S</option>
                                    <option>L</option>
                                    <option>M</option>
                                    <option>XL</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                옵션은 5개 까지 추가 가능합니다 &nbsp;&nbsp;&nbsp;
                                <button type="button" onclick="valueShow()" class="evtBtn">옵션 추가</button>
                            </td>
                        </tr>
                        <tr id="amount_set_TR">
                            <td colspan="2" class="amount_set_TD">
                            </td>
                        </tr>
                    </table>

                    <br>
                    <input type="hidden" value="5000" id="base_price">
                    <button type="submit" class="pageMoveBtn">바로 주문</button>
                </form>
                <form action"#" class="cartData">
                    <button type="submit" class="pageMoveBtn">장바구니</button>
                </form>
            </div>
        </div>
    </div>

    <script>
        var color = $("#color_selecter option:selected").val();
        var size = $("#size_selecter option:selected").val();;
        var amount = $("#size_selecter option:selected").val();
        var price = $("#base_price").val();
        var index = 5;
        var index_tmp = [0, 0, 0, 0, 0];

        function valueShow() {
            size_select(size);
            color_select(color);
            price_picker(price);
            console.log(color);
            console.log(size);
            console.log(price);


            for (var i = 0; i < index; i++) {
                if (index_tmp[i] != 1) {
                    var a = '';
                    var b = '';
                    a += '<div id="amount_set' + i + '" class="amount_set"><div class="smallWrap">';
                    a += '<span>' + color + ' /&nbsp;</span>';
                    a += '<span> ' + size + '</span></div>';
                    a += '<p id="decreaseQuantity' + i + '" class="decreaseQuantity" onclick="minusAmount(this.id)">-</p>'
                    a += '<input type="text" id="numberUpDown' + i + '" class="numberUpDown" readOnly value="1">'
                    a += '<p id="increaseQuantity' + i + '" class="increaseQuantity" onclick="plusAmount(this.id)">+</p>'
                    a += '<p id = "pricexamount' + i + '" class="pricexamount">' + price + '원</p><p id="remove_amount_set' + i + '" class="remove_amount_set" onclick="removeDiv(this.id)">X<p>'
                    a += '</div>';
                    a += '<input type="hidden" name="price' + i + '" value="' + price + '">';
                    a += '<input type="hidden" name="p_identifier' + i + '" value="p_common_name/' + color + '/' + size + '">';
                    a += '<input type="hidden" name="c_cnt' + i + '" value="1">';
                    index_tmp[i] = 1;
                    
                    b += '<div class="amount_set_clone" id="amount_set_clone'+i+'"><input class="clone" type="hidden" name="p_identifier' + i + '" value="p_common_name/' + color + '/' + size + '">';
                    b += '<input class="clone" type="hidden" name="c_cnt' + i + '" value="1"></div>';
                    $(".amount_set_TR").show();
                    $(".amount_set_TD").append(a);
                    $(".cartData").append(b);
                    break;
                }
            }

        }
        function size_select(value) {
            size = value;
            console.log("size");
        }
        function color_select(value) {
            color = value;
            console.log("color");
        }
        function price_picker(value) {
            price = value;
        }

        function plusAmount(id) {
            console.log();

            if (id == ("increaseQuantity" + 0)) {
                amount = parseInt($('#numberUpDown' + 0).val());
                if (amount < 10) {
                    amount += 1;
                    console.log(amount);
                    $('#numberUpDown' + 0).val(amount);
                    $('input[name=price' + 0 + ']').val(amount * price);
                    $('input[name=c_cnt' + 0 + ']').val(amount);
                    $("#pricexamount" + 0).text(amount * price + "원");
                } else {
                    alert('최대 구매수량은 10개 입니다.')
                }
            } else if (id == ("increaseQuantity" + 1)) {
                amount = parseInt($('#numberUpDown' + 1).val());
                if (amount < 10) {
                    amount += 1;
                    console.log(amount);
                    $('#numberUpDown' + 1).val(amount);
                    $('input[name=price' + 1 + ']').val(amount * price);
                    $('input[name=c_cnt' + 1 + ']').val(amount);
                    $("#pricexamount" + 1).text(amount * price + "원");
                } else {
                    alert('최대 구매수량은 10개 입니다.')
                }
            } else if (id == ("increaseQuantity" + 2)) {
                amount = parseInt($('#numberUpDown' + 2).val());
                if (amount < 10) {
                    amount += 1;
                    console.log(amount);
                    $('#numberUpDown' + 2).val(amount);
                    $('input[name=price' + 2 + ']').val(amount * price);
                    $('input[name=c_cnt' + 2 + ']').val(amount);
                    $("#pricexamount" + 2).text(amount * price + "원");
                } else {
                    alert('최대 구매수량은 10개 입니다.')
                }
            } else if (id == ("increaseQuantity" + 3)) {
                amount = parseInt($('#numberUpDown' + 3).val());
                if (amount < 10) {
                    amount += 1;
                    console.log(amount);
                    $('#numberUpDown' + 3).val(amount);
                    $('input[name=price' + 3 + ']').val(amount * price);
                    $('input[name=c_cnt' + 3 + ']').val(amount);
                    $("#pricexamount" + 3).text(amount * price + "원");
                } else {
                    alert('최대 구매수량은 10개 입니다.')
                }
            } else if (id == ("increaseQuantity" + 4)) {
                amount = parseInt($('#numberUpDown' + 4).val());
                if (amount < 10) {
                    amount += 1;
                    console.log(amount);
                    $('#numberUpDown' + 4).val(amount);
                    $('input[name=price' + 4 + ']').val(amount * price);
                    $('input[name=c_cnt' + 4 + ']').val(amount);
                    $("#pricexamount" + 4).text(amount * price + "원");
                } else {
                    alert('최대 구매수량은 10개 입니다.')
                }
            }


        }
        function minusAmount(id) {

            if (id == ("increaseQuantity" + 0)) {
                amount = parseInt($('#numberUpDown' + 0).val());
                if (amount > 1) {
                    amount -= 1;
                    console.log(amount);
                    $('#numberUpDown' + 0).val(amount);
                    $('input[name=price' + 0 + ']').val(amount * price);
                    $('input[name=c_cnt' + 0 + ']').val(amount);
                    $("#pricexamount" + 0).text(amount * price + "원");
                } else {
                    alert('최소 구매수량은 1개 입니다.');
                }
            } else if (id == ("increaseQuantity" + 1)) {
                amount = parseInt($('#numberUpDown' + 1).val());
                if (amount > 1) {
                    amount -= 1;
                    console.log(amount);
                    $('#numberUpDown' + 1).val(amount);
                    $('input[name=price' + 1 + ']').val(amount * price);
                    $('input[name=c_cnt' + 1 + ']').val(amount);
                    $("#pricexamount" + 1).text(amount * price + "원");
                } else {
                    alert('최소 구매수량은 1개 입니다.');
                }
            } else if (id == ("increaseQuantity" + 2)) {
                amount = parseInt($('#numberUpDown' + 2).val());
                if (amount > 1) {
                    amount -= 1;
                    console.log(amount);
                    $('#numberUpDown' + 2).val(amount);
                    $('input[name=price' + 2 + ']').val(amount * price);
                    $('input[name=c_cnt' + 2 + ']').val(amount);
                    $("#pricexamount" + 2).text(amount * price + "원");
                } else {
                    alert('최소 구매수량은 1개 입니다.');
                }
            } else if (id == ("increaseQuantity" + 3)) {
                amount = parseInt($('#numberUpDown' + 3).val());
                if (amount > 1) {
                    amount -= 1;
                    console.log(amount);
                    $('#numberUpDown' + 3).val(amount);
                    $('input[name=price' + 3 + ']').val(amount * price);
                    $('input[name=c_cnt' + 3 + ']').val(amount);
                    $("#pricexamount" + 3).text(amount * price + "원");
                } else {
                    alert('최소 구매수량은 1개 입니다.');
                }
            } else if (id == ("increaseQuantity" + 4)) {
                amount = parseInt($('#numberUpDown' + 4).val());
                if (amount > 1) {
                    amount -= 1;
                    console.log(amount);
                    $('#numberUpDown' + 4).val(amount);
                    $('input[name=price' + 4 + ']').val(amount * price);
                    $('input[name=c_cnt' + 4 + ']').val(amount);
                    $("#pricexamount" + 4).text(amount * price + "원");
                } else {
                    alert('최소 구매수량은 1개 입니다.');
                }
            }

        }
        function removeDiv(id) {
            if (id == ("remove_amount_set" + 0)) {
                $("#amount_set" + 0).remove();
                $("#amount_set_clone"+0).remove();
                index_tmp[0] = 0;
            } else if (id == ("remove_amount_set" + 1)) {
                $("#amount_set" + 1).remove();
                $("#amount_set_clone"+1).remove();
                index_tmp[1] = 0;
            } else if (id == ("remove_amount_set" + 2)) {
                $("#amount_set" + 2).remove();
                $("#amount_set_clone"+2).remove();
                index_tmp[2] = 0;
            } else if (id == ("remove_amount_set" + 3)) {
                $("#amount_set" + 3).remove();
                $("#amount_set_clone"+3).remove();
                index_tmp[3] = 0;
            } else if (id == ("remove_amount_set" + 4)) {
                $("#amount_set" + 4).remove();
                $("#amount_set_clone"+4).remove();
                index_tmp[4] = 0;
            }
        }
    </script>


</body>

</html>