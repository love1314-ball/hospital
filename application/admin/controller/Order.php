<?php
namespace app\admin\controller;
use app\common\controller\AdminBase;
use think\Db;
use think\Request;
//机构

class Order extends AdminBase {

    protected function _initialize() {
        parent::_initialize();
    }

    public function index() {
        $all =Db::name('order a')
        ->join('admin w','a.user_id = w.id')
        ->join('song c','a.song_id = c.id')
        ->field( 'a.*, w.*, c.* , a.id o_id , w.id u_id , c.id s_id')
        ->select();
        $this->assign( 'all', $all );
        return $this->fetch( 'index' );
    }

  
}
