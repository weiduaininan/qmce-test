<?php

namespace app\coaching\controller;

use app\coaching\controller\BaseController;

class IndexController extends BaseController
{
  
  protected function initialize()
  {
    parent::initialize();
  }
  /**
   * 入口控制器
   *
   * @return void
   * @Author Liunan naiu@nnit.com
   * @DateTime 2021-05-06
   */
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
