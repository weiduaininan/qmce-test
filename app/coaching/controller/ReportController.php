<?php

namespace app\coaching\controller;

use app\coaching\controller\BaseController;

// 各种汇总页，根据角色区分查看权限
class ReportController extends BaseController
{
  
  protected function initialize()
  {
    parent::initialize();
  }
  
  // abm名下所有dbm汇总页
  public function abm()
  {
    
  }
  
  // dbm名下所有mr汇总页
  public function dbm()
  {
    
  }
  
  // mr名下所有医生汇总页
  public function mr()
  {
    
  }
  
  // 医生汇总在DoctorController中
  
}
