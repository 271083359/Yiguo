<?php
namespace app\index\controller;
use think\Controller;
use gd\Gdk;
use think\Db;
use think\helper\hash\Md5;
use think\Session;
use think\Request;
use api_demo\SmsDemo;
use \think\Cookie;

class Wms extends Controller
{

    public function pyzm(){


        $arr=[rand(0,9),rand(0,9),rand(0,9),rand(0,9),rand(0,9),rand(0,9)];
        $randnum=implode($arr);
        session('randnum',$randnum);
        $post = input('post.','','','htmlspecialchars');

        $phone=$post['phone'];

        header('Content-Type: text/plain; charset=utf-8');

        $demo = new SmsDemo(
            "LTAIE2LMR8VUaaEh",
            "gcBlGjyuCKnNPUEbMjn5GjkAMvqOR8"
        );

        echo "SmsDemo::sendSms\n";
        $response = $demo->sendSms(
            "小明商店", // 短信签名
            "SMS_100565002", // 短信模板编号
            $phone, // 短信接收者
            Array(  // 短信模板中字段的值
                "code"=>"12345",
                "product"=>"dsd",
                "num"=>$randnum
            ),
            "123"
        );
        print_r($response);

        echo "SmsDemo::queryDetails\n";
        $response = $demo->queryDetails(
            "12345678987",  // phoneNumbers 电话号码
            "20171002", // sendDate 发送时间
            10, // pageSize 分页大小
            1 // currentPage 当前页码
        // "abcd" // bizId 短信发送流水号，选填
        );

        print_r($response);

    }


//    public $code;

    public function yzm(){

        $yzobj=new Gdk(46,22,4);

//        dump($yzobj->imgres);

//        $_SESSION['code']= $yzobj->code;

//        session('code',$yzobj->code);

//        $this->code=$yzobj->getcode();

        $yzobj->outimg();

        session('code',$yzobj->code);

    dump($_SESSION);

//        self::$gdcode=$yzobj->code;

    }


    public function loadif(){

        //session_start();

        $code = Session::get('code');

        $code = strtolower($code);

        //print_r($_SESSION);die;
        $post=input('post.','','','htmlspecialchars');
        $Uname=$post['UserName'];
        $Pwd=md5($post['Pwd']);
        //需进一步加密
        $yzm=strtolower($post['VerifyCode']);
        $rem=$post['Rem'];

        if ($yzm!=$code){

            $data['code']=500;
            echo json_encode($data);

        }else{

            $res1=Db::table('User')->where('phone',$Uname)->where('pwd',$Pwd)->find();
            $res2=Db::table('User')->where('email',$Uname)->where('pwd',$Pwd)->find();
            if ($res1||$res2) {
                $data['code'] = 200;
                echo json_encode($data);
                session('uname',$Uname);
                if ($rem){
//                    cookie('uname',$Uname,1296000);       助手函数
                    Cookie::set('uname',$Uname,1296000);
                    Cookie::set('pwd',$Pwd,1296000);
                }
            }else{
                $data['code'] = 400;
                echo json_encode($data);
            }
        }

    }

    public function regif(){

        $code1 = Session::get('code');

        $code1 = strtolower($code1);
        $post = input('post.','','','htmlspecialchars');
        $phone=$post['ph'];
        $gdm=strtolower($post['gdm']);
        $pyzm=$post['yzm'];
        $email=$post['email'];
        $pwd=md5($post['pwd']);
        if ($code1!==$gdm){
            $data['code']=500;
            echo json_encode($data);
        }else{

            $resph=Db::table('User')->where('phone',$phone)->find();
            if ($resph){

                $data['code']=400;
                echo json_encode($data);

            }else{

                $resemail=Db::table('User')->where('email',$email)->find();
                if ($resemail){
                    $data['code']=300;
                    echo json_encode($data);
                }else{
                    $myzm = Session::get('randnum');

                    if ($pyzm!==$myzm){

                        $data['code']=100;
                        echo json_encode($data);

                    }else{
                        $arrin=['uid'=>'','phone'=>$phone,'email'=>$email,'pwd'=>$pwd];
                        Db::table('User')->insert($arrin);
                        $data['code']=200;
                        echo json_encode($data);
                        session('uname',$phone);

                    }

                }

            }


        }

    }

    public function load(){

//        dump(self::$gdcode);
//        $this->assign('code',);

        return $this->fetch();
    }

    public function regis(){

        return $this->fetch();
    }

    public function detail(){


        if (!empty(Cookie::get('uname'))&&!empty(Cookie::get('pwd'))){
            $uname=Cookie::get('uname');
            $pwd=Cookie::get('pwd');
            $res1=Db::table('User')->where('phone',$uname)->where('pwd',$pwd)->find();
            $res2=Db::table('User')->where('email',$uname)->where('pwd',$pwd)->find();
            if ($res1||$res2){
                Session::set('uname',$uname);

            }

        }
        if (!empty(Session::get('uname'))){
            $user=Session::get('uname');
            $showtic1="<li id=\"_logout\">
					<a href=\"javascript:void(0);\" class=\"logout\">[退出]</a>
					
				</li>";
            $showtic2="<li id=\"_loginname\">
					<a rel=\"nofollow\" href=\"\">".$user."</a>
				</li>";

        }else{
            $showtic1="<li id=\"_register\">
					<a rel=\"nofollow\" href=\"__PUBLIC__/index/wms/regis\">[注册]</a>
				</li>";
            $showtic2="<li id=\"_login\">
					<a rel=\"nofollow\" href=\"__PUBLIC__/index/wms/load\">[登录]</a>
				</li>";

        }
        $this->assign('tic1',$showtic1);
        $this->assign('tic2',$showtic2);

    	return $this->fetch();

    }

    public function logout(){
        Session::delete('uname');
        Cookie::delete('uname');
        Cookie::delete('pwd');
        $data['code']=200;
        echo json_encode($data);
    }





























}










?>