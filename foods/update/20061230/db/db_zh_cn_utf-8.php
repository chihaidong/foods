<?php
$msql->query("INSERT INTO efood_config VALUES (19, '信息发布时启用图形验证码', 'YN', '30', 'ImgCodeOnInfo', '0', '启用时发布信息需填写图形验证码,需在信息发布表单模版中加入图形验证码标签{#ImgCodeInput#}')");
$msql->query("INSERT INTO efood_config VALUES (19, '菜式发布时启用图形验证码', 'YN', '30', 'ImgCodeOnProd', '0', '启用时发布菜式需填写图形验证码,需在菜式发布表单模版中加入图形验证码标签{#ImgCodeInput#}')");
$msql->query("INSERT INTO efood_config VALUES (19, '活动发布时启用图形验证码', 'YN', '30', 'ImgCodeOnHd', '0', '启用时发布活动需填写图形验证码,需在活动发布表单模版中加入图形验证码标签{#ImgCodeInput#}')");
$msql->query("INSERT INTO efood_config VALUES (18, '餐馆发布时启用图形验证码', 'YN', '30', 'ImgCodeOnComp', '0', '启用时发布餐馆介绍需填写图形验证码,需在餐馆发布表单模版中加入图形验证码标签{#ImgCodeInput#}')");
$msql->query("INSERT INTO efood_config VALUES (17, '反馈提交时启用图形验证码', 'YN', '30', 'ImgCodeOnFeed', '0', '启用时填写反馈表单需填写图形验证码,需在反馈表单模版中加入图形验证码标签{#ImgCodeInput#}')");
$msql->query("INSERT INTO efood_config VALUES (16, '会员登录时启用图形验证码', 'YN', '30', 'ImgCodeOnLogin', '0', '启用时会员登录需填写图形验证码,需在会员登录表单模版中加入图形验证码标签{#ImgCodeInput#}')");
$msql->query("INSERT INTO efood_config VALUES (15, '会员注册时启用图形验证码', 'YN', '30', 'ImgCodeOnReg', '0', '启用时会员注册需填写图形验证码,需在会员注册表单模版中加入图形验证码标签{#ImgCodeInput#}')");
$msql->query("INSERT INTO efood_config VALUES (14, '翻页检索时标题显示页号', 'YN', '30', 'ShowPageNunber', '0', '翻页检索时网页标题后面跟当前页号,有利于搜索引擎收录检索页')");
$msql->query("INSERT INTO efood_config VALUES (13, '启用隐藏式静态HTML更新', 'YN', '30', 'CatchHidden', '1', '当静态HTML页面超过缓存时间时采用隐藏更新,不进行页面跳转,下一次访问时新页面生效')");
$msql->query("alter table efood_news_con add memo text NOT NULL");
$msql->query("alter table efood_comment add xuhao int(5) NOT NULL DEFAULT '0'");
$msql->query("alter table efood_company add xuhao int(5) NOT NULL DEFAULT '0'");
$msql->query("alter table efood_info add xuhao int(5) NOT NULL DEFAULT '0'");
$msql->query("alter table efood_products add xuhao int(5) NOT NULL DEFAULT '0'");
$msql->query("alter table efood_zs add xuhao int(5) NOT NULL DEFAULT '0'");
$msql->query("alter table efood_job add xuhao int(5) NOT NULL DEFAULT '0'");
$msql->query("alter table efood_play add xuhao int(5) NOT NULL DEFAULT '0'");
?>