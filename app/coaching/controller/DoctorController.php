<?php

namespace app\coaching\controller;

use app\coaching\controller\BaseController;

// 医生详情页，各角色共用，根据角色区分编辑权限
class IndexController extends BaseController
{
  
  protected function initialize()
  {
    parent::initialize();
  }
  
  // 医生详情首页
  public function index()
  {
    
  }
  
  // 医生汇总页
  public function report()
  {
    
  }
  
  // 医生每日新患者页面
  public function calendar()
  {
    
  }
  
  // 医生每季度计划页面
  public function plan()
  {
    
  }

}
