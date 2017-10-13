<?php
namespace app\index\controller;
use think\Controller;
use app\index\model\shop;


class Index extends Controller
{
    public function index()
    {


    $shop = new shop;

    //热销展示图（粮油）
    $arr = $shop->Home();
    $this->assign('res',$arr);
    //热销展示图 （方便素食）
    $brr = $shop->fast();
    $this->assign('brr',$brr);
    //商品分类
    $crr = $shop ->fruit();
    $this->assign('crr',$crr);

    $drr = $shop->classify();
    $this->assign('drr',$drr);


    return $this->fetch();

    }


}

