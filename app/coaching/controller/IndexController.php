<?php

namespace app\coaching\controller;

use app\coaching\controller\BaseController;

class IndexController extends BaseController
{
  
  protected function initialize()
  {
    parent::initialize();
  }
  
  public function index()
  {
    // echo $this->_role;
    // echo '<br/>';
    // echo $this->_initial;

    // coaching模块入口，进行身份判断并跳转
    $role_index = '/coaching/' . $this->_role;
    header('Location: ' . $role_index);exit;
  }

}
