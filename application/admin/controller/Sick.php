<?php
namespace app\admin\controller;
use app\common\controller\AdminBase;
use think\Db;
use think\Request;
//机构

class Sick extends AdminBase {

    protected function _initialize() {
        parent::_initialize();
    }

    public function index() {
        //判断是管理员还是用户 ，如果使用户看自己的信息

        $where = [];
        $username = input( 'username' );
        if ( $username ) {
            $where['username'] = $username;
        }
        $order = input( 'order' );
        if ( $order ) {
            $where['order'] = $order;
        }
        $phone = input( 'phone' );
        if ( $phone ) {
            $where['phone'] = $phone;
        }

        $all = Db::name( 'order a' )
        ->join( 'admin w', 'a.user_id = w.id' )
        ->join( 'song c', 'a.song_id = c.id' )
        ->field( 'a.*, w.*, c.* , a.id o_id , w.id u_id , c.id s_id' )
        ->where( $where )
        ->order( 'order' )
        ->select();
        $this->assign( 'all', $all );
        return $this->fetch( 'index' );
    }

    public function add() {
        $up = input( 'up' );
        if ( $up ) {
            $all = Db::name( 'order a' )
            ->join( 'admin w', 'a.user_id = w.id' )
            ->join( 'song c', 'a.song_id = c.id' )
            ->where( 'a.id', $up )
            ->field( 'a.*, w.*, c.* , a.id o_id , w.id u_id , c.id s_id' )
            ->find();
            $this->assign( 'all', $all );
            $this->assign( 'id', $up );
        }
        $date = Db::name( 'song' )->select();
        $this->assign( 'date', $date );
        return $this->fetch( 'add' );
    }

    public function edit() {
        $id = input( 'id' );
        $user['username'] = input( 'user_name' );
        $user['phone'] = input( 'user_phone' );
        $user['password'] = md5( $user['phone'] );
        $user['status'] = 1;
        $user['status_rule'] = 2;
        $user['last_login_ip'] = '127.0.0.1';
        $user['create_time'] = time();
        $data['song_id'] = input( 'song_id' );
        //药物的id
        $data['song_number'] = input( 'song_number' );
        $order = rand( 10000000000000, 99999999999999 );
        $data['order'] = $order;
        $data['time'] = date( 'Y-m-d h:i:s', time() );

        if ( $id ) {
            $uporder['id'] = $id;
            $uporder['song_id'] = input( 'song_id' );
            $uporder['song_number'] = input( 'song_number' );
            $all =  Db::name( 'order a' )
            ->join( 'admin w', 'a.user_id = w.id' )
            ->join( 'song c', 'a.song_id = c.id' )
            ->where( 'a.id', $id )
            ->field( 'a.*, w.*, c.* , a.id o_id , w.id u_id , c.id s_id' )
            ->find();
            $upuser['username'] = input( 'user_name' );
            $upuser['id'] = $all['u_id'];
            $upuser['phone'] = input( 'user_phone' );
            $upuser['password'] = md5( $user['phone'] );
            $song_number = input( 'song_number' );
            $songups = Db::name( 'song' )->where( 'id', $all['s_id'] )->setDec( 'number', $song_number );
            $orderups = Db::name( 'order' )->update( $uporder );
            $userups = Db::name( 'admin' )->update( $upuser );
            if ( $upuser ) {
                $this->success( '更新成功', 'admin/Sick/index' );
            } else {
                $this->error( '更新失败' );
            }
        } else {
            //插入
            $song_number = Db::name( 'song' )->where( 'id', $data['song_id'] )->setDec( 'number', $data['song_number'] );
            $data['user_id'] = Db::name( 'admin' )->insertGetId( $user );
            $add = Db::name( 'order' )->insert( $data );
            if ( $add ) {
                $this->success( '增加成功', 'admin/Sick/index' );
            } else {
                $this->error( '增加失败' );
            }
        }

    }

    public function del() {
        $id = input( 'id' );
        $del = Db::name( 'order' )->delete( $id );
        if ( $del ) {
            $this->success( '删除成功', 'admin/sick/index' );
        } else {
            $this->error( '删除失败' );
        }
    }

    public function adds()
 {
        //二次疗程页面
        $data =  Db::name( 'order a' )
        ->join( 'admin w', 'a.user_id = w.id' )
        ->join( 'song c', 'a.song_id = c.id' )
        ->field( 'a.*, w.*, c.* , a.id o_id , w.id u_id , c.id s_id' )
        ->select();
        $this->assign( 'data', $data );
        return $this->fetch( 'adds' );
    }

    public function repeatedly()
 {
        //增加反复疗程
        $or = input( 'order' );
        $data['song_id'] = input( 'songid' );
        $data['song_number'] = input( 'song_number' );
        $all = Db::name( 'order' )->where( 'id', $or )->find();
        $data['user_id'] = $all['user_id'];
        $data['user_id'] = $all['user_id'];
        $data['order'] = $all['order'];
        $data['time'] = date( 'Y-m-d h:i:s', time() );
        $add = Db::name( 'order' )->insert( $data );
        if ( $add ) {
            $this->success( '增加成功', 'admin/Sick/index' );
        } else {
            $this->error( '增加失败' );
        }
    }

    //信息回馈

    public function feedback()
 {
        return $this->fetch( 'feedback' );

    }

    //回馈信息插入数据库

    public function couple()
 {

    $data['content'] = input( 'content' );
    $data['user_id'] = 1;
    //获取的session
    $data['user_name'] = "ceshi";
    $add = Db::name( 'survey' )->insert( $data );
    if ( $add ) {
        $this->success( '增加成功', 'admin/Sick/index' );
    } else {
        $this->error( '增加失败' );
    }
    }

}
