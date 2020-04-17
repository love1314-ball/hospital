<?php
namespace app\admin\controller;
use app\common\controller\AdminBase;
use think\Db;
use think\Request;
//机构

class Play extends AdminBase {

    protected function _initialize() {
        parent::_initialize();
    }

    public function index() {
        $where = [];
        $play_name = input('play_name');
        if ($play_name) {
            $where['play_name'] = $play_name;
        }
        $all = Db::name( 'play a' )->join( 'song w', 'a.song_id = w.id', 'left' )->field( 'a.*,w.*, a.id as s_id' )->where($where)->select();
        $this->assign( 'all', $all );
        return $this->fetch( 'index' );
    }

    public function add() {
        $up = input( 'up' );
        if ( $up ) {
            $all = Db::name( 'play' )->where( 'id', $up )->find();
            $song = Db::name( 'song' )->where( 'id', $all['song_id'] )->find();
            $this->assign( 'song', $song );
            $this->assign( 'all', $all );
            $this->assign( 'id', $up );
        }
        $date = Db::name( 'song' )->select();
        $this->assign( 'date', $date );
        return $this->fetch( 'add' );
    }

    public function edit() {
        $id = input( 'id' );
        $data['song_id'] = input( 'song_id' );
        $data['play_name'] = input( 'play_name' );
        $data['particular'] = input( 'particular' );
        if ( $id ) {
            $data['id'] = $id;
            $update = Db::name( 'play' )->update( $data );
            if ( $update ) {
                $this->success( '更新成功', 'admin/play/index' );
            } else {
                $this->error( '更新失败' );
            }
        } else {
            $add = Db::name( 'play' )->insert( $data );
            if ( $add ) {
                $this->success( '增加成功', 'admin/play/index' );
            } else {
                $this->error( '增加失败' );
            }
        }

    }

    public function del() {
        $id = input( 'id' );
        $del = Db::name( 'play' )->delete( $id );
        if ( $del ) {
            $this->success( '删除成功', 'admin/Play/index' );
        } else {
            $this->error( '删除失败' );
        }
    }

}
