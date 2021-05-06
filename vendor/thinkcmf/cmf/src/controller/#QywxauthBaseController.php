<?php
namespace cmf\controller;

class QywxauthBaseController extends HomeBaseController
{

    protected $_initial;

    protected function initialize()
    {
      parent::initialize();
      $this->init_user();
    }

    private function init_user()
    {
      $initial = cookie('mce_initial');
      if($initial) {
        $this->_initial = cmf_str_decode($initial);
      } else {
        //通过企业号接口 获取initial
        $initial = 'NGZ';
        cookie('mce_initial', cmf_str_encode($initial), 10*86400);
        $this->_initial = $initial;
      }
    }
}