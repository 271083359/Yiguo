<?php
namespace app\index\controller;
use think\Controller;
use app\index\model\shop;

class Wj extends Controller
{
    public function Order(){


        return $this->fetch();
    }


    public function pay(){

        return $this->fetch();
    }

    public function personal(){
        $shop = new shop;
        $err = $shop->ShopUser(1);

        $this->assign('err',$err);

        $frr = $shop->ShopOrder();

        $this->assign('frr',$frr);

        $grr = $shop->Record();
        if($grr == null){

            $this->assign('grr',0);

        }else{

                $this ->assign('grr',$grr);

        }



      	return $this->fetch();
    }
 	public function shopping(){

        $shop = new shop;
        $arr = $shop->shop();
        $this->assign('res',$arr);
        return $this->fetch();


    }







}
