$('.close').on('click',function () {

    $('.popout').css('display','none');

})

$('.qq').on('click',function () {
    $('.popout').css('display','block');

})

$('.sina').on('click',function () {
    $('.popout').css('display','block');

})

$($('.gray')[0]).on('click',function () {

    // alert('abc');

    $('#gd1').attr('src',"yzm?t="+Math.random());

    // console.log($('#gd1').attr('src'));


})

$('#btnLogin').on('click',function () {
    // alert('点击成功');
    $('#msg-wrap').empty();
    var u= $('#UserName').val();
    var p= $('#Pwd').val();
    var y= $('#VerifyCode').val();
    if($('#UserNameRemeber').is(':checked')){
        var r=true;

    }else{
        var r=false;
    }

    $.ajax({

        url:'loadif',
        type:'post',
        data:{
            'UserName':u,
            'Pwd':p,
            'VerifyCode':y,
            'Rem':r

        },
        success:function (data) {

            var jso=JSON.parse(data);
            // console.log(jso.code);
            if (jso.code===500){


                $('#msg-wrap').append('<div class="msg-error"> 请输入正确的验证码</div>');
                $('#msg-wrap').addClass('msg-wrap');

                $('#gd1').attr('src',"yzm?t="+Math.random());
            }else if (jso.code===400){

                $('#msg-wrap').append('<div class="msg-error"> 账号或者密码错误</div>');
                $('#msg-wrap').addClass('msg-wrap');
                $('#gd1').attr('src',"yzm?t="+Math.random());
            }else if (jso.code===200){
                // window.location.href="detail";

                window.history.back(-1);

                alert('登录成功');

            }
        }



    })


})