<?php
namespace app\index\controller;
use think\Controller;
class Yrh extends Controller
{
    public function egg(){
          $egg=db('egg')->select();
          $this->assign('class_egg',$egg);


        return $this->fetch();
    }

////////////////////////////////////////////////////////////////////////////////////////

 public function fast(){
          $egg=db('fast')->select();
          $this->assign('class_egg',$egg);


        return $this->fetch();
    }

////////////////////////////////////////////////////////////
public function fruit(){
          $egg=db('fruit')->select();
          $this->assign('class_egg',$egg);


        return $this->fetch();
    }

////////////////////////////////////////////////////////////
public function groceriecs(){
          $egg=db('groceriecs')->select();
          $this->assign('class_egg',$egg);


        return $this->fetch();
    }

////////////////////////////////////////////////////////////
public function meat(){
          $egg=db('meat')->select();
          $this->assign('class_egg',$egg);


        return $this->fetch();
    }

////////////////////////////////////////////////////////////
public function milk(){
          $egg=db('milk')->select();
          $this->assign('class_egg',$egg);


        return $this->fetch();
    }

////////////////////////////////////////////////////////////
public function seafood(){
          $egg=db('seafood')->select();
          $this->assign('class_egg',$egg);


        return $this->fetch();
    }

////////////////////////////////////////////////////////////

    public function life(){
         $a=db('life')->where('show',0)->select();
         $this->assign('res',$a);
           $b=db('life')->where('show',1)->select();
         $this->assign('res1',$b);
         $c=db('life')->where('show',1)->select();
         $this->assign('res2',$c);
         return $this->fetch();
    }
////////////////////////////////////////////////////////////////////////////////////////
    public function search(){



         $c=db('life')->where('show',1)->select();
         $this->assign('res2',$c);
         return $this->fetch();

      	
    }
 	



}
