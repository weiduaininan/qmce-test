<?php
namespace app\wx\controller;

use cmf\controller\HomeBaseController;

class QyoauthController extends HomeBaseController
{
  
  // 当前用户initial，大写
  protected $_initial;
  
  protected function initialize()
  {
    parent::initialize();
    $initial = mce_cookie('mce_initial');
    if($initial) {
      $this->_initial = $initial;
    } else {
      // 通过企业号接口 获取initial
      $initial = 'NGZ';
      mce_cookie('mce_initial', $initial);
      $this->_initial = $initial;
      // 使用WeCall域名进行跳转认证
      // $backurl = mce_cur_url();
      // $url = 'https://wecall.itangyi.com/oauth/qmce?backurl=' . urlencode($backurl);
      // header('Location: ' . $url);exit;
    }
  }
  
}