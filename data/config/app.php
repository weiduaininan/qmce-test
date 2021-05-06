<?php

return [

  'api_baseurl' => 'https://amce.nuohenuode.cn',
  'qrcode_baseurl' => 'https://amce.nuohenuode.cn/qr',
  'mp_baseurl' => 'https://mce.nuohenuode.cn',
  'liveapi_url' => 'http://nn.d1meeting.cn/DataApi2020/create.aspx',//直播申请接口地址
  'live_baseurl' => 'http://newemeeting.gensee.com',//直播页面地址

  //配置 S&D会议账号和项目编号
  'SD_ACCOUNTS' => [
    // 'ktwls086'        => ['value'=>'SD-Normal-20190086','text'=>"SD-Normal-20190086 / 控糖我来说"],
    // 'county075'       => ['value'=>'SD-Normal-20190075','text'=>"SD-Normal-20190075 / Blue county-E名医下基层（病例分享会）"],
    // 'manbing099'      => ['value'=>'SD-Normal-20190099','text'=>"SD-Normal-20190099 / 慢病管理-院级交流研讨培训班"],
    // 'smarte077'       => ['value'=>'SD-Normal-20190077','text'=>"SD-Normal-20190077 / SMART-E专家下基层"],
    // 'tjbltl065'       => ['value'=>'SD-Normal-20190065','text'=>"SD-Normal-20190065 / 天津远程病例讨论会"],
    // 'tjsllt101' => ['value'=>'SD-simple-20200101','text'=>"SD-simple-20200101 / 天津线上系列沙龙论坛"],
    // 'tjccd095'  => ['value'=>'SD-Normal-20190095','text'=>"SD-Normal-20190095 / 天津CCD项目2020"],
    // 'xxgpx038'  => ['value'=>'SD-Normal-20200038','text'=>"SD-Normal-20200038 / 天津心血管代谢疾病诊疗规范培训班"],
    // 'countysl075'  => ['value'=>'SD-Normal-20190075-2','text'=>"SD-Normal-20190075 / 蓝色县域院长沙龙"]
    
    'sd-202101' => ['value' => 'SD-Normal-20190075', 'text' => 'Blue county-E名医下基层（病例分享会）'],
    'sd-202102' => ['value' => 'SD-Normal-20200067', 'text' => '中南糖尿病防治能力提升项目'],
    'sd-202103' => ['value' => 'SD-Normal-20200049', 'text' => '探索佳——中国糖尿病患者全面血糖管理探索计划'],
    'sd-202104' => ['value' => 'SD-Normal-20210022', 'text' => '探索佳2021——中国糖尿病患者全面血糖管理探索计划'],
    'sd-202105' => ['value' => 'SD-Normal-20200085', 'text' => '医家一体化糖尿病强化管理项目（Basal Bouls项目）'],
    'sd-202106' => ['value' => 'SD-Normal-20200086', 'text' => '2021 FPG Control program'],
    'sd-202107' => ['value' => 'SD-Normal-20200087', 'text' => '2021年《健康中国2030——中国2型糖尿病血糖监测与规范管理》'],
    'sd-202108' => ['value' => 'SD-Normal-20210001', 'text' => 'SMART_2型糖尿病患者院内-院外长程管理示范实践项目2021'],
    'sd-202109' => ['value' => 'SD-Normal-20210011', 'text' => 'County Endo Dept Development Acceleration project (Blue County 2021)'],
    'sd-202110' => ['value' => 'SD-Normal-20210012', 'text' => 'C2C - 2 型糖尿病——从指南共识到临床实践'],
    'sd-202111' => ['value' => 'SD-Normal-20210010', 'text' => '京津蒙基层医生远程视频教育培训项目'],
    'sd-202112' => ['value' => 'SD-Normal-20210023', 'text' => '2021 CBA nurse education project'],
  ],

  //meeting表基础字段
  'MEETING_FIELDS' => [
    'meeting_isiwemeeting' => 1,//会议性质 1-内部员工会议 0-NN会议
    'meeting_title' => "",//会议名称
    'meeting_activitycity' => "",//会议城市
    'meeting_activityaddress' => "",//会议地点
    'meeting_planningstartdate' => "",//会议开始时间
    'meeting_planningenddate' => "",//会议结束时间
    'meeting_stime' => "",//二维码有效期开始
    'meeting_etime' => "",//二维码有效期结束
    'meeting_planningnntotalnumber' => 0,//计划NN人数
    'meeting_planningdisnntotalnumber' => 0,//计划非NN人数
    'meeting_ischeck' => 0,//微信签到 1-开启 0-关闭
    'meeting_iswall' => 0,//微上墙 1-开启 0-关闭
    'meeting_inviteimg' => "/Public/imgs/inviteimg.jpg",//活动头图
    'meeting_meetingintro' => "",//会议简介
    'meeting_isagent' => 0,//大会日程状态 1-开启 0-关闭
    'meeting_meetingdata' => "",//大会日程
    'meeting_tplid' => 0,//会议模板id
    'meeting_groupid' => 0,//会议分组id
    'meeting_islottery' => 0,//是否开启抽奖
    'meeting_meetingimg' => "/Public/imgs/meetingimg.jpg",//会议背景图
    'meeting_activitydescription' => '',
    'meeting_attachments' => '',//会议材料
    'meeting_ionumber' => '',
    'emt' => 0,
    'emt_ispublic' => 0,
    'emt_nosign' => 1,
    'isforum' => 0,
    'emt_speaker' => '',
    'emt_hospital' => '',
    'emt_office' => '',
    'emt_jobtitle' => '',
    'emt_speaker_des' => '',
    'sd' => 0,
    'sd_remark' => '',
    'sd_pcode' => '',
    'hj' => 0,
    'hjimg' => '',
    'sd_img' => '',
    'emt_speaker_more' => '',
    'emt_speaker_count' => 0,
    'meeting_level' => 0,
    'meeting_tags' => '',
    'meeting_isAudit' => 1,
    'meeting_requestid' => 0,
    'meeting_businesscode' => "",
    'meeting_categoryid' => "",
    'meeting_categoryname' => "",
    'meeting_surveyids' => "",
    'meeting_lastsyndate' => "",
    'meeting_planningtotalamount' => 0,
    'meeting_joincount' => 0,
    'meeting_meetingcode' => "",
    'meeting_imgqcode' => "",
    'meeting_displaymode' => 1,
    'meeting_sendmails' => "",
    'meeting_checknum'=>1,
    'meeting_activitycategory' => 0,
    'meeting_attendees' => "",
    'meeting_meetingstatus' => "NotCompleted",
    'meeting_invitationid' => "",
    'meeting_closestatus' => 0,
    'meeting_updatetime'=> time(),
    'meeting_updatetime_s' => "",
    'meeting_updateuserid' => 0,//手机版直接给0
    'meeting_updateip' => "",
    'meeting_createinitial' => "",
    'meeting_createddate' => date('Y-m-d H:i:s'),
    'meeting_createtime' => time(),
    'meeting_createtime_s' => "",
    'meeting_createuserid' => 0,//手机版直接给0
    'meeting_createip' => "",
    'meeting_status' => 1,
  ]
];