<?php
// ========================================================
// MCE ====================================================
// ========================================================

function mce_log($content, $log = false, $logtime = true)
{
	$path_log = $_SERVER['DOCUMENT_ROOT'] . '/data/log/';
  $file_log = date('Ymd') . '.log';
  if($log) {
    $file_log = $log . '.log';
  }
  $path_log .= $file_log;
  $log_file = fopen($path_log, 'a+');
  $time = date('Y-m-d H:i:s');
  if($logtime) {
    $content = "[ " . $time . " ] -- " . $content;
  }
  fwrite($log_file, $content . "\n");
  fclose($log_file);
}

function mce_get($url, $data = null)
{
  $curl = curl_init();
  curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
  curl_setopt($curl, CURLOPT_TIMEOUT, 500);
  curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
  curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
  curl_setopt($curl, CURLOPT_URL, $url);
  $res = curl_exec($curl);
  curl_close($curl);
  return $res;
}

function mce_post($url, $data = null)
{
  $curl = curl_init();
  curl_setopt($curl, CURLOPT_URL, $url);
  curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, FALSE);
  curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, FALSE);
  if (!empty($data)){
    curl_setopt($curl, CURLOPT_POST, 1);
    curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
  }
  curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
  $output = curl_exec($curl);
  curl_close($curl);
  return $output;
}
  
function mce_post2($url = '', $param = '')
{
  if(empty($url) || empty($param)) return false;
  $postUrl = $url;
  $curlPost = $param;
  $ch = curl_init();
  curl_setopt($ch, CURLOPT_URL,$postUrl);
  curl_setopt($ch, CURLOPT_HEADER, 0);
  curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
  curl_setopt($ch, CURLOPT_POST, 1);
  curl_setopt($ch, CURLOPT_POSTFIELDS, $curlPost);
  $data = curl_exec($ch);
  curl_close($ch);
  return $data;
}

function mce_unescape($str)
{
  $str = rawurldecode($str);
  preg_match_all("/(?:%u.{4})|&#x.{4};|&#\d+;|.+/U", $str, $r);
  $ar = $r[0];
  foreach($ar as $k=>$v) {
    if(substr($v,0,2) == "%u"){
      $ar[$k] = iconv("UCS-2BE","UTF-8",pack("H4",substr($v,-4)));
    }
    elseif(substr($v,0,3) == "&#x"){
      $ar[$k] = iconv("UCS-2BE","UTF-8",pack("H4",substr($v,3,-1)));
    }
    elseif(substr($v,0,2) == "&#") {

      $ar[$k] = iconv("UCS-2BE","UTF-8",pack("n",substr($v,2,-1)));
    }
  }
  return join("", $ar);
}

function mce_cookie($key, $val = false, $expire = 60 * 60 * 24 * 30)
{
  if($val) {
    cookie($key, cmf_str_encode($val), $expire);
    // cookie($key, $val, $expire);
  } else {
    return cmf_str_decode(cookie($key));
    // return cookie($key);
  }
}

function mce_redirect($url, $time = 0, $msg = '')
{
  $url = str_replace(array("\n", "\r"), '', $url);
  if (empty($msg))
    $msg = '系统将在' . $time . '秒之后自动跳转到' . $url . '！';
  if (!headers_sent()) {
    if (0 === $time) {
      header('Location: ' . $url);
    } else {
      header("refresh:{$time};url={$url}");
      echo($msg);
    }
    exit();
  } else {
    $str = "<meta http-equiv='Refresh' content='{$time};URL={$url}'>";
    if ($time != 0)
      $str .= $msg;
    exit($str);
  }
}

function mce_cur_url()
{
  $url = 'http://';
  if (isset ( $_SERVER ['HTTPS'] ) && $_SERVER ['HTTPS'] == 'on') {
    $url = 'https://';
  }
  if ($_SERVER ['SERVER_PORT'] != '80' && $_SERVER ['SERVER_PORT'] != '443') {
    $url .= $_SERVER ['HTTP_HOST'] . ':' . $_SERVER ['SERVER_PORT'] . $_SERVER ['REQUEST_URI'];
  } else {
    $url .= $_SERVER ['HTTP_HOST'] . $_SERVER ['REQUEST_URI'];
  }
  return $url;
}

function mce_error($msg)
{
  echo '<!DOCTYPE html><html><head><meta charset="utf-8"><title>提示</title>' .
      '<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no"/>' .
      '</head><body style="background-color:#f6f8fa;text-align:center;">' .
      '<p style="padding-top:50px;color:#fa5151;"><img src="data:image/svg+xml,%3Csvg%20width%3D%2224%22%20height%3D%2224%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Cpath%20fill%3D%22%23fa5151%22%20d%3D%22M12%2022C6.477%2022%202%2017.523%202%2012S6.477%202%2012%202s10%204.477%2010%2010-4.477%2010-10%2010zm-.763-15.864l.11%207.596h1.305l.11-7.596h-1.525zm.759%2010.967c.512%200%20.902-.383.902-.882%200-.5-.39-.882-.902-.882a.878.878%200%2000-.896.882c0%20.499.396.882.896.882z%22%2F%3E%3C%2Fsvg%3E" style="width:100px;height:100px;"/></p>' .
      '<h1 style="text-align:center;padding-top:20px;font-size:18px;color:#444;">' . $msg . '</h1>' .
      '</body></html>';
  exit;
}

//获取二维码场景值防止到10万无法使用
function mce_mpqrcode($mid) {
  if($mid > 360000) {
    $scene = $mid - 340000;
  } else if($mid > 280000) {
    $scene = $mid - 260000;
  } else if($mid > 200000) {
    $scene = $mid - 180000;
  } else {
    $scene = $mid - 100000;
  }
  return $scene;
}

// emeeting
function mce_emeeting_nn_cdn_banner($url)
{
  if(strpos($url, 'thumb') || $url == 'http://iwe.nncp.cn:8088/v2/Public/imgs/inviteimg.jpg') {
    // $url = str_replace('http://iwe.nncp.cn:8088/v2', config('url_cdn2'), $url);
    $url = 'http://iwe.nncp.cn:8088/v2' . $url;
  } else {
    $url = str_replace('http://iwe.nncp.cn:8088/v2', config('url_amce'), $url);
  }
  return $url;
}