<?php

namespace app\coaching\controller;

use app\wx\controller\QyoauthController;

class BaseController extends QyoauthController
{
  
  // protected $_initial;
  // 来自于QyoauthController，大写
  
  // 当前用户角色，小写
  protected $_role;
  
  protected function initialize()
  {
    parent::initialize();
    $this->_role = $this->get_role($this->_initial);
    if(!($this->_role)) {
      header('Location: /oauth/invalid');exit;
    }
  }
  
  // 根据initial获取用户角色
  // vp, abd, abm, dbm, mr
  // bsm
  private function get_role($initial)
  {
    // 默认无权限
    $role = false;
    
    /*
     * ******
     * ******
     * ******
     * ******
     */

    $role = 'mr';
    return $role;
  }
  
}
