<?php
namespace app\oauth\controller;

use cmf\controller\HomeBaseController;

class WecallController extends HomeBaseController
{
  
  public function __construct()
  {
    parent::__construct();
  }
  
  public function index()
  {
    $backurl = $this->request->param('backurl');
    $initial = $this->request->param('initial');
    
    // echo $initial;exit;
    
    if(in_array($initial, ['PC'])) {
      // $initial = 'XTO';
      // mce_error('该页面暂未向您开放');
      header('Location: /oauth/invalid');exit;
    }
    if(in_array($initial, ['NGZ'])) {
      // $initial = 'XTO';
    }
    
    mce_cookie('mce_initial', $initial);
    if(!$backurl) $backurl = '/';
    // echo $backurl;exit;
    header('Location: ' . $backurl);exit;
  }
  
}