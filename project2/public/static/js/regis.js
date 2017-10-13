
$('#yzmr').on('click',function () {

    // alert('abc');

    $('#imgcode').attr('src',"yzm?t="+Math.random());

    // console.log($('#gd1').attr('src'));


})


/*
$('#PhoneReg').on(click){




}*/

var phrg=/^1[3578][0-9]{9}$/;

var gdrg=/^[A-z0-9]{4}$/;

var strg=/^[0-9]{6}$/;

var pwdrg=/^[A-z0-9]{6,20}$/;

var erg=/^[A-z0-9]{4,15}@[A-z0-9]{2,8}.c[a-z]{1,2}$/;

$('#Phone_Mobile').blur(function () {

    // alert('sss');
    $('#ph').empty();


    var phtext=$('#Phone_Mobile').val();

    var phte=phrg.test(phtext);

    if (!phte){
        $('#ph').html('<i></i>请输入正确的手机号');
        $('#ph').addClass('pass-error');
    }


})

$('.btn-yzm').click(function () {

    // alert('sss');
    $('#ph').empty();



    var phtext=$('#Phone_Mobile').val();

    var phte=phrg.test(phtext);

    if (!phte){
        $('#ph').html('<i></i>请输入正确的手机号');
        $('#ph').addClass('pass-error');
    }





})


$('#verficode_tab1').blur(function () {

    $('#gd').empty();

    var gdtext=$('#verficode_tab1').val();

    var gdte=gdrg.test(gdtext);

    if (!gdte){

        $('#gd').html('<i></i>请输入图形验证码');
        $('#gd').addClass('pass-error');

    }


})

$('#Phone_VerifyCode').blur(function () {

    $('#yzm').empty();

    var yzmtext=$('#Phone_VerifyCode').val();

    var yzmte=strg.test(yzmtext);

    if (!yzmte){

        $('#yzm').html('<i></i>请输入正确验证码');
        $('#yzm').addClass('pass-tip');

    }



})

$('#Phone_Password').blur(function () {
    $('#pwd1').empty();

    var pwdtext=$('#Phone_Password').val();

    var pwdte=pwdrg.test(pwdtext);

    if(!pwdte){
        $('#pwd1').html('<i></i>请设置密码');
        $('#pwd1').addClass('pass-error');
    }
})

$('#Phone_ConfimPassword').blur(function () {
    $('#pwd2').empty();

    var pwd2text=$('#Phone_ConfimPassword').val();

    var pwd1text=$('#Phone_Password').val();

    if(pwd1text!==pwd2text){
        $('#pwd2').html('<i></i>两次密码不一致');
        $('#pwd2').addClass('pass-error');
        $('#pwd2').removeClass('pass-succ');
    }else {
        $('#pwd2').html('<i></i>');
        $('#pwd2').addClass('pass-succ');
        $('#pwd2').removeClass('pass-error');

    }
})

$('#Phone_AtCode').blur(function () {
    $('#email').empty();

    var etext=$('#Phone_AtCode').val();

    var ete=erg.test(etext);

    if(!ete){

        $('#email').html('<i></i>请填写正确的邮箱');

        $('#email').addClass('pass-error');

    }

})

$('#Phone_SendCode').on('click',function () {
    var pyzm=$('#Phone_Mobile').val();
    var phte=phrg.test(pyzm);
    $('#ph').empty();
    if (!phte){
        $('#ph').html('<i></i>请输入正确的手机号');
        $('#ph').addClass('pass-error');

    }else{
        $.ajax({
            url:'pyzm',
            type:'post',
            data:{
                'phone':pyzm
            }

            /*success:function (data) {
                var json=JSON.parse(data);
                console.log(json.code);
            }*/



        })
    }




})

$('#PhoneReg').on('click',function () {

    $('#gd').empty();
    $('#ph').empty();
    $('#yzm').empty();
    $('#pwd1').empty();
    $('#pwd2').empty();
    $('#email').empty();

    var gdtext=$('#verficode_tab1').val();

    var gdte=gdrg.test(gdtext);

    var phtext=$('#Phone_Mobile').val();

    var phte=phrg.test(phtext);

    var yzmtext=$('#Phone_VerifyCode').val();

    var yzmte=strg.test(yzmtext);

    var pwdtext=$('#Phone_Password').val();

    var pwdte=pwdrg.test(pwdtext);

    var pwd2text=$('#Phone_ConfimPassword').val();

    var etext=$('#Phone_AtCode').val();

    var ete=erg.test(etext);

    if (!gdte){
        $('#gd').html('<i></i>请输入图形验证码');
        $('#gd').addClass('pass-error');
    }else{
        if (!phte){
            $('#ph').html('<i></i>请输入正确的手机号');
            $('#ph').addClass('pass-error');

        }else{
            if(!yzmte){
                $('#yzm').html('<i></i>请输入正确验证码');
                $('#yzm').addClass('pass-tip');
            }else{
                if(!pwdte){
                    $('#pwd1').html('<i></i>请设置密码');
                    $('#pwd1').addClass('pass-error');

                }else{
                    if (pwdtext!==pwd2text){
                        $('#pwd2').html('<i></i>两次密码不一致');
                        $('#pwd2').addClass('pass-error');
                        $('#pwd2').removeClass('pass-succ');

                    }else {
                        if (!ete){
                            $('#email').html('<i></i>请填写正确的邮箱');

                            $('#email').addClass('pass-error');
                        }else{

                            $.ajax({

                                url:'regif',
                                type:'post',
                                data:{
                                    'gdm':gdtext,
                                    'ph':phtext,
                                    'yzm':yzmtext,
                                    'pwd':pwdtext,
                                    'email':etext

                                },
                                success:function (data) {
                                    var json=JSON.parse(data);
                                    if (json.code===500){
                                        $('#gd').html('<i></i>图形验证码错误');
                                        $('#gd').addClass('pass-error');
                                    }else if(json.code===400){
                                        $('#ph').html('<i></i>该号码已被注册');
                                        $('#ph').addClass('pass-error');
                                    }else  if(json.code===300){
                                        $('#email').html('<i></i>该邮箱已被注册');

                                        $('#email').addClass('pass-error');
                                    }else if (json.code===100){
                                        $('#yzm').html('<i></i>短信验证码错误');
                                        $('#yzm').addClass('pass-tip');

                                    }else if (json.code===200){

                                        window.history.back(-1);

                                    }

                                }

                            })

                        }
                    }


                }

            }

        }

    }




})










































































