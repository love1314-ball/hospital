<?php

namespace app\common\controller;
use think\Db;

class AdminBase extends Base {
    protected $noLogin = [];
    // 不用权限认证和登录的方法
    protected $noAuth = [];
    // 不用权限认证要登录的方法

    protected function _initialize() {
        parent::_initialize();
        !$this->checkLogin() && $this->redirect( 'admin/index/login' );
        // !$this->checkAuth() && $this->error( '没有权限，请联系管理员' );
        if ( $this->request->isGet() ) {
            $this->assign( 'navbar', list_to_tree( $this->getNavbar() ) );
            $this->assign( 'breadcrumb', array_reverse( explode( ',', $this->getBreadcrumb() ) ) );
            $this->assign( 'empty', '<tr><td colspan="20">~~暂无数据</td></tr>' );
        }
    }

    // 检查登录

    public function checkLogin() {
        if ( !is_admin_login() &&
        !in_array( $this->request->action(), $this->noLogin ) ) {
            return false;
        }
        return true;
    }

    // 权限认证

    public function checkAuth() {
        if ( session( 'admin_auth.username' ) != config( 'administrator' ) &&
        !in_array( $this->request->action(), $this->noLogin ) &&
        !in_array( $this->request->action(), $this->noAuth ) &&
        !( new \core\Auth() )->check( $this->request->module() . '/'
        . to_under_score( $this->request->controller() ) . '/'
        . $this->request->action(), session( 'admin_auth.admin_id' ) ) ) {
            return false;
        }
        return true;
    }

    // 获取导航栏

    public function getNavbar() {

        // $where = ['type' => 'nav', 'status' => 1];
        // if ( session( 'admin_auth.username' ) != config( 'administrator' ) ) {

        //     // $where['id'] = ['in', $access['rules']];
        // }

        $a = Db::name( 'admin' )->alias( 'a' )->join( 'nav b', 'a.status_rule=b.status' )->where( array( 'a.phone' => session( 'phone' ) ) )->field( 'b.nav_id' )->find();
        $nav_id = explode( ',', $a['nav_id'] );
        $find = [];
        foreach ( $nav_id as $k => $v ) {
            $find[] = Db::name( 'auth_rule' )->where( array( 'id' => $v ) )->find();
        }
        
        // $user = session( 'username' );
        // $phone = session( 'phone' );
        // $user_id = session( 'user_id' );
        // $status = Db::name( 'admin' )->where( 'id', $user_id )->value( 'status_rule' );
        // $all = Db::name( 'nav' )->where( 'status', $status )->find();
        // $nav_id = explode( ',', $all['nav_id'] );
        // foreach ( $nav_id as $k => $v ) {
        //     $find[] = Db::name( 'auth_rule' )->where( array( 'id' => $v ) )->find();
        // }
       
        return $find;
    }

    // 获取面包屑

    public function getBreadcrumb( $id = null ) {
        if ( $authRule = model( 'authRule' )->where( empty( $id ) ? ['url' => $this->request->module() . '/'
        . to_under_score( $this->request->controller() ) . '/'
        . $this->request->action()] : ['id' => $id] )->order( 'pid desc' )->find() ) {
            $breadcrumb = $authRule['name'];
            if ( $authRule['pid'] != 0 ) {
                $breadcrumb .= ',' . $this->getBreadcrumb( $authRule['pid'] );
            }
            return $breadcrumb;
        }
    }
}
