一、account-management 账户管理库
acc_inf  账号信息表 ------用于存储创建的登录账号信息

二、user-management 用户管理库
user_inf 用户信息表------用于存储用户隐私信息
user_por用户画像表------用于存储用户画像信息
inf_por_ass  用户信息与用户画像关联表-----关联两个表主键，一对一关系

三、marking-activity 营销活动库
pre_inf赠卡活动信息表------用于存储创建的赠卡活动
pre_recording  赠卡领取记录表

act_inf  活动类型表----------活动编号与活动类型一对一/已写死/

cou_inf.优惠券信息表--------用于存储创建的赠卡活动
cou_recording  优惠券记录表

bus_card  公交卡预设表-------存储公交卡信息/已写死/
sup_area  支持地区表  --------存储国、省、市对应关系/已写死/
card_area_ass  公交卡与支持地区关联表   /已写死/
sup_bus_act   公交卡与支持活动关联表--------公交卡活动开关！！

