<?php
$msql->query("INSERT INTO efood_config VALUES (19, '��Ϣ����ʱ����ͼ����֤��', 'YN', '30', 'ImgCodeOnInfo', '0', '����ʱ������Ϣ����дͼ����֤��,������Ϣ������ģ���м���ͼ����֤���ǩ{#ImgCodeInput#}')");
$msql->query("INSERT INTO efood_config VALUES (19, '��ʽ����ʱ����ͼ����֤��', 'YN', '30', 'ImgCodeOnProd', '0', '����ʱ������ʽ����дͼ����֤��,���ڲ�ʽ������ģ���м���ͼ����֤���ǩ{#ImgCodeInput#}')");
$msql->query("INSERT INTO efood_config VALUES (19, '�����ʱ����ͼ����֤��', 'YN', '30', 'ImgCodeOnHd', '0', '����ʱ���������дͼ����֤��,���ڻ������ģ���м���ͼ����֤���ǩ{#ImgCodeInput#}')");
$msql->query("INSERT INTO efood_config VALUES (18, '�͹ݷ���ʱ����ͼ����֤��', 'YN', '30', 'ImgCodeOnComp', '0', '����ʱ�����͹ݽ�������дͼ����֤��,���ڲ͹ݷ�����ģ���м���ͼ����֤���ǩ{#ImgCodeInput#}')");
$msql->query("INSERT INTO efood_config VALUES (17, '�����ύʱ����ͼ����֤��', 'YN', '30', 'ImgCodeOnFeed', '0', '����ʱ��д����������дͼ����֤��,���ڷ�����ģ���м���ͼ����֤���ǩ{#ImgCodeInput#}')");
$msql->query("INSERT INTO efood_config VALUES (16, '��Ա��¼ʱ����ͼ����֤��', 'YN', '30', 'ImgCodeOnLogin', '0', '����ʱ��Ա��¼����дͼ����֤��,���ڻ�Ա��¼��ģ���м���ͼ����֤���ǩ{#ImgCodeInput#}')");
$msql->query("INSERT INTO efood_config VALUES (15, '��Աע��ʱ����ͼ����֤��', 'YN', '30', 'ImgCodeOnReg', '0', '����ʱ��Աע������дͼ����֤��,���ڻ�Աע���ģ���м���ͼ����֤���ǩ{#ImgCodeInput#}')");
$msql->query("INSERT INTO efood_config VALUES (14, '��ҳ����ʱ������ʾҳ��', 'YN', '30', 'ShowPageNunber', '0', '��ҳ����ʱ��ҳ����������ǰҳ��,����������������¼����ҳ')");
$msql->query("INSERT INTO efood_config VALUES (13, '��������ʽ��̬HTML����', 'YN', '30', 'CatchHidden', '1', '����̬HTMLҳ�泬������ʱ��ʱ�������ظ���,������ҳ����ת,��һ�η���ʱ��ҳ����Ч')");
$msql->query("alter table efood_news_con add memo text NOT NULL");
$msql->query("alter table efood_comment add xuhao int(5) NOT NULL DEFAULT '0'");
$msql->query("alter table efood_company add xuhao int(5) NOT NULL DEFAULT '0'");
$msql->query("alter table efood_info add xuhao int(5) NOT NULL DEFAULT '0'");
$msql->query("alter table efood_products add xuhao int(5) NOT NULL DEFAULT '0'");
$msql->query("alter table efood_zs add xuhao int(5) NOT NULL DEFAULT '0'");
$msql->query("alter table efood_job add xuhao int(5) NOT NULL DEFAULT '0'");
$msql->query("alter table efood_play add xuhao int(5) NOT NULL DEFAULT '0'");
?>