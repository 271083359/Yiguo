<?php

namespace app\index\model;
use think\Controller;
use think\Model;
use think\Db;


class shop extends Model
{
//首页展示图
    public function Home(){

        $arr = Db::table('groceries_prefecture')
                ->select();
                return $arr;

    }
// 首页展示图
    public function fast(){

        $brr = Db::table('fast_prefecture')
                ->select();
                return $brr;

    }
//首页全部商品分类
    public function fruit(){

        $crr = Db::table('classify')
                ->field('icon,classify,cid')
                ->select();
        return $crr;
    }

//首页全部分类
    public function classify(){

        $drr = Db::table('classify_small')
                ->field('cont,cid')
                ->select();
           return $drr;

    }

//个人资料
    public function ShopUser($id){
        // $id = 1;
        $err = Db::table('user')
                ->where('uid',$id)
                ->select();
        return $err;

    }
//个人订单
    public function ShopOrder(){

        $frr = Db::table('user')
            ->join('ddbh','user.uid = ddbh.uid')
            ->field('ddbh.ddbh,ddbh.img,ddbh.pay_money,ddbh.zt,ddbh.data,ddbh.num,ddbh.consignee,ddbh.pay_num')
            ->limit(5)
            ->select();
            return($frr);
    }

//个人资料购买记录

    public function Record(){

            $grr = Db::table('user')
            ->join('ddbh','user.uid = ddbh.uid')
            ->where('ddbh.zt',2)
            ->field('ddbh.ddbh,ddbh.img,ddbh.pay_money,ddbh.zt,ddbh.data,ddbh.num,ddbh.consignee,ddbh.pay_num,ddbh.shop')
            ->limit(3)
            ->select();

            return $grr;


    }



}
