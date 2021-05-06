<?php

namespace app\coaching\controller;

use app\coaching\controller\BaseController;

class MrController extends BaseController
{
  
  protected function initialize()
  {
    parent::initialize();
    if($this->_role != 'mr') {
      show_error('您不是销售代表，无法进入此页面', '500', '提示');
      exit;
    }
    $this->_vdata['watermarkinitial'] = $this->_initial;
  }
  
  /**
   * mr角色首页，医生列表
   *
   * @return void
   * @Author Liunan naiu@nnit.com
   * @DateTime 2021-05-06
   */
  public function index()
  {
    $visits = $this->visit_model->get_by_initial($this->_initial);
    $listarr = array();
    $listarr = $this->visit_model->get_list($this->_initial);
    //医院名字用 、 隔开 大于15个字用 ... 代替
    foreach($listarr as &$l){
      $l['hospitals'] = str_replace('|', '、', $l['hospitals']);
      if(mb_strlen($l['hospitals'], 'UTF8') > 15 ) {
        $l['hospitals'] = mb_substr($l['hospitals'],0,15) . '...';
      }
      //计算几个医生
      $l['doctornum'] = count(explode('|', $l['doctors']));
    }
    $this->_vdata['list'] = $listarr;
    //--------ZWGU 1116 ---------------------
    $this->_vdata['draft'] = $this->cache->file->get($this->_initial);
    $this->load->view('mr_index', $this->_vdata);
  }

}
