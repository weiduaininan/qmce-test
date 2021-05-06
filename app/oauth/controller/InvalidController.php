<?php
namespace app\oauth\controller;

use cmf\controller\HomeBaseController;

class InvalidController extends HomeBaseController
{
  
  public function initialize()
  {
    parent::initialize();
  }
  
  public function index()
  {
    mce_error('该页面暂未向您开放');
  }
  
}