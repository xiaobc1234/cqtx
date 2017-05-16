require "to60/public"
local t = {}

t["登录界面"] =
{
  {577,163,0x4c3b03},
  {617,176,0xf8b500},
  {680,182,0xdfd200},
  {683,169,0x211e22},
  
  click = function()
    tap(654,378)
  end
}

t["登录确定1"] = --取色列表
{
  {610,565,0x6d2315},
  {626,566,0xece2e1},
  {682,561,0xb23e26},
  {531,570,0x481616},
  
  click = function ()
    tap(640,565)
  end
}

t["登录确定2"] = --取色列表
{
  {583,550,0x89231b},
  {632,553,0x934f27},
  {541,551,0x3a0505},
  {701,550,0x96241f},
  
  click = function ()
    tap(642,546)
  end
}


t["选择第二个角色"] = --取色列表
{
  {1086,275,0x23241f},
  {1158,241,0x282323},
  {1008,236,0x232522},
  {1145,295,0x181916},
  
  click = function ()
    tap(1091,271)
  end
}

t["选择第三个角色"] = --取色列表
{
  {1115,398,0x2d221f},
  {1147,413,0x5b3723},
  {1071,417,0x2a2727},
  {1206,375,0x422a21},
  
  click = function ()
    tap(1121,390)
  end
}

t["选择第四个角色"] = --取色列表
{
  {1116,523,0x0c0a07},
  {1193,493,0x1a110b},
  {1212,533,0x1d1914},
  {1077,511,0x222626},
  
  click = function ()
    tap(1121,522)
  end
}

t["选择第一个角色"] = --取色列表
{
  {1107,156,0x1d2022},
  {1216,126,0x1d1b0e},
  {1088,138,0x1a1f1f},
  {1103,160,0x1f2323},
  
  click = function ()
    tap(1121,148)
  end
}


t["进入游戏"] = --取色列表
{
  {1100,647,0x561e06},
  {1026,633,0x791f0e},
  {1171,637,0x62150d},
  {993,641,0xaf6a37},
  
  click = function ()
    tap(1108,646)
  end
}


--初次进入游戏，主线任务
t["开始游戏"] = --取色列表
{
  {687,507,0x8b281b},
  {735,511,0xc69377},
  {636,523,0x5d150d},
  {776,510,0xa91d1c},
  
  click = function ()
    tap(703,515)
  end
}

-- 自动战斗
t["自动战斗"] = --取色列表
{
  {1225,387,0xc6b593},
  {1246,396,0xa89675},
  {1238,417,0x33231a},
  {1233,435,0x37271f},
  
  click = function ()
    tap(1236,406)
  end
}

t["完成任务"] = --取色列表
{
  {98,310,0xa79354},
  {113,28,0x9e6502},
  {242,308,0x271f27},
  {233,526,0x1d0d0d},
  
  click = function ()
    tap(216,622)
  end
}

t["装备"] = --取色列表
{
  {905,590,0xbfb18a},
  {863,581,0x7d4c1a},
  {952,578,0x6d3b12},
  {898,596,0x4b2e0d},
  
  click = function ()
    tap(906,586)
  end
}

t["主线任务"] = --取色列表
{
  {30,143,0xbfb185},
  {72,142,0x87450b},
  {19,185,0xf3c001},
  {46,157,0x682e0d},
  
  click = function ()
    tap(109,195)
  end
}

t["冲级大礼包"] = --取色列表
{
  {590,442,0x794816},
  {641,452,0xc7bb8e},
  {638,287,0xa58505},
  {492,422,0x312920},
  
  click = function ()
    tap(636,455)
  end
}

t["提示确认"] = --取色列表
{
  {589,198,0x694000},
  {675,288,0x27271f},
  {592,486,0x754412},
  {389,537,0x323232},
  
  click = function ()
    tap(643,488)
  end
}


t["小飞鞋"] = --取色列表
{
  {758,373,0x978653},
  {759,386,0x3a2111},
  {769,369,0x793a13},
  {750,400,0x63301f},
  
  click = function ()
    tap(752,390)
  end
}


t["回收"] = --取色列表
{
  {432,50,0x543603},
  {677,591,0x68360d},
  {1050,596,0x8d7c56},
  {152,588,0x84703f},
--  回收装备
  click = function ()
    tap(1047,590)
  end,
--	关闭
	clickClose = function ()
    tap(718,45)
  end,
-- 回收矿石
clickStock = function()
    tap(856,588)
  end
}



t["除魔任务"] = --取色列表
{
  {291,46,0x8e5c0a},
  {301,160,0x2e262e},
  {251,465,0xaf7d38},
  {272,616,0xa77d23},
--  刷新
  click = function ()
    tap(216,467)
  end,
--	接受任务
	clickTask = function ()
    tap(221,618)
  end

}

t["完成除魔任务"] = --取色列表
{
  {315,275,0x3e2e2e},
  {270,289,0x282017},
  {359,299,0x2c1c1c},
  {246,289,0x775635},

  click = function ()
    tap(116,209)
  end,
--  可能是第二行
	click2 = function ()
    tap(116,296)
  end

}


t["除魔任务领奖"] = --取色列表
{
  {298,21,0xc68418},
  {286,425,0x9f2c24},
  {437,363,0x8e5c07},
  {101,246,0x93740c},

  click = function ()
    tap(217,430)
  end
}

t["打开战神55"] = --取色列表
{
  {882,28,0x3e2e2e},
  {835,39,0x37271f},
  {888,53,0x2c1c1c},
  {1021,37,0x5b1d00},

  click = function ()
    tap(1027,49)
		mSleep(2000)
		tap(662,606)
  end
	
}

t["打开战神552"] = --取色列表
{
  {824,37,0x3a2821},
  {825,48,0x291c19},
  {1016,53,0xf7d794},
  {1023,52,0x523500},

  click = function ()
    tap(1027,49)
		mSleep(2000)
		tap(662,606)
  end
	
}

t["59打开背包"] = --取色列表
{
  {367,580,0x2c1c13},
  {346,651,0xfef283},
  {287,561,0x3b2b23},
  {358,572,0x483939},

  click = function ()
    tap(642,661)
		mSleep(500)
		tap(125,196)
  end
	
}


--可以每日任务，退出换个账号
t["可以每日任务"] = --取色列表
{
  {935,40,0xe9a741},
  {950,54,0x491609},
  {927,46,0xdfbd68},
  {942,65,0x4e350c},
	
	click=function()
		tap(637,668)
		mSleep(1000)
		tap(1018,663)
		mSleep(1000)
		tap(111,348)
		mSleep(1000)
		tap(478,625)
		mSleep(500)
		tap(518,495)
	end
}







t["领取离线奖励"] =
{
  {666,635,0x492b0c},
  {632,553,0x883311},
  {323,341,0x1a120a},
  {774,236,0x27271f},
  
  click = function()
    tap(1178,47)
  end
}
t["领取离线奖励2"] =
{
  {915,173,0x732701},
  {1164,47,0x5c320f},
  {700,641,0x572e0d},
  {399,576,0x1a120a},
  
  click = function()
    tap(1178,47)
  end
}

t["关闭邮箱"] =
{
  {1134,50,0x996111},
  {546,285,0x2e2a1f},
  {370,637,0x633110},
  {188,637,0x6b3910},
   {137,53,0x0c0a02},
  {528,626,0x1a1a12},
  
  click = function()
    tap(1140,49)
  end
}

--t["到了66级"] =
--{
--  {12,12,0xeae8e6},
--  {10,19,0x2b1202},
--  {22,22,0xcbc5c2},
--  {21,12,0xf4f3f2},
--   {24,16,0x584438},
--  {12,13,0x3c2517}
--}


t["小飞鞋"] = --取色列表
{
  {758,373,0x978653},
  {759,386,0x3a2111},
  {769,369,0x793a13},
  {750,400,0x63301f},
  
  click = function ()
    tap(752,390)
  end
}


t["关闭提示窗"] = --取色列表
{
  {790,365,0x27271f},
  {443,460,0x27271f},
  {687,498,0x653312},
  {817,490,0x27271f},
  
  click = function ()
    tap(641,495)
  end
}


t["关闭提示窗2"] = --取色列表
{
  {440,391,0x27271f},
  {392,537,0x1c1c1b},
  {559,494,0x714016},
  {811,498,0x69370e},
  
  click = function ()
    tap(530,495)
  end
}

t["左侧完成任务"] = --取色列表
{
  {280,611,0xa97f25},
  {316,625,0xaf5334},
  {148,630,0x845815},
  {102,630,0x622109},
  
  click = function ()
    tap(222,620)
  end
}

--淡点的那个
t["左侧完成任务2"] = --取色列表
{
  {281,605,0xaf862b},
  {132,626,0x88561c},
  {291,636,0x6b4214},
  {101,622,0x4c231a},
  {208,526,0x120a0a},
  {109,308,0xfbf06c},
  
  click = function ()
    tap(222,620)
  end
}

t["左侧完成任务3"] = --取色列表
{
  {263,612,0xb48328},
  {150,620,0xa07624},
  {107,619,0x7c3120},
  {208,648,0x271f0f},
  
  click = function ()
    tap(222,620)
  end
}


t["除魔任务领奖"] = --取色列表
{
  {271,657,0x97661c},
  {131,650,0x9a691f},
  {182,637,0xc59b28},
  {209,670,0x814f15},
  
  click = function ()
    tap(222,655)
    mSleep(200)
  end
}

t["除魔任务"] = --取色列表
{
  {291,46,0x8e5c0a},
  {301,160,0x2e262e},
  {251,465,0xaf7d38},
  {272,616,0xa77d23},
  --  刷新
  click = function ()
    tap(216,467)
  end,
  --	接受任务
  clickTask = function ()
    tap(221,618)
  end
  
}


t["强化装备"] = --取色列表
{
  {1059,217,0x170f07},
  {412,219,0x1a120a},
  {117,142,0x89470f},
  {395,630,0x6d3b12},
  {422,219,0x3d220b},
  
  click = function ()
    tap(1088,194)
    mSleep(100)
    local go =0
    for i=1,10 do
      if cmpColorEx(t["强化装备第二步"]) then
        go =1
        break
      else
        mSleep(100)
      end
    end
    if go==1 then 
      t["强化装备第二步"].click()
      mSleep(500)
      -- 关闭界面
      tap(1138,45)
    end
    
  end
}

t["强化装备第二步"] = --取色列表
{
  {579,276,0x2a2216},
  {486,629,0x69370e},
  {416,227,0x1a120a},
  {551,221,0x3b230a},
  
  click = function ()
    tap(445,626)
  end
}

t["激活权限"] = --取色列表
{
  {626,410,0x24241c},
  {703,411,0x1f1f16},
  {570,393,0x111109},
  {667,422,0x0d0705},
  {747,377,0x7c0000},
  
  click = function ()
    tap(664,364)
  end
}

t["激战boss"] = --取色列表
{
  {917,31,0x3e2e2e},
  {922,53,0x2c1c13},
  {907,30,0x3e2e2e},
  {819,44,0x2f1f1f},
  
  click = function ()
    tap(1025,42)
  end
}

t["激战boss第二步"] = --取色列表
{
  {229,321,0x3e2e2e},
  {216,345,0x2c1c1c},
  {178,339,0x261d15},
  {272,322,0x3e2e2e},
  {63,375,0x484037},
  {64,292,0x3d2d1c},
  {715,652,0x312920},
  {1136,48,0x74410b},
  
  click = function ()
    tap(95,331)
  end
}

t["激战boss第三步"] = --取色列表
{
  {869,626,0x3e2e2e},
  {786,643,0x2f1f1f},
  {848,659,0x442819},
  {902,633,0x302820},
  {1025,636,0xdfdcaa},
  {494,651,0xeeeebb},
  {56,293,0x8e5425},
  
  click = function ()
    tap(1036,641)
  end
}


t["退出副本"] = --取色列表
{
  {85,351,0x6c3a11},
  {123,352,0xfafac7},
  {109,370,0x5c2b10},
  {151,350,0x867657},
  
  click = function ()
    tap(129,355)
  end
}



t["除魔任务接任务"] = --取色列表
{
  {281,605,0xaf862b},
  {132,626,0x88561c},
  {291,636,0x6b4214},
  {101,622,0x4c231a},
  {242,474,0xa67432},
  
  click = function ()
    tap(227,471)
    mSleep(200)
    tap(210,621)
  end
}


t["关闭聊天窗口"] = --取色列表
{
  {498,653,0x332b23},
  {105,119,0x492817},
  {47,543,0xb69242},
  {562,367,0xd09f0a},
  
  click = function ()
    tap(563,364)
  end
}

t["被人杀了"] = --取色列表
{
  {525,422,0xb28a31},
  {731,434,0x72281d},
  {752,227,0x664117},
  {634,440,0x150d0d},
  
  click = function ()
    tap(727,435)
  end
}
t["被人杀了2"] = --取色列表
{
  {702,240,0x583716},
  {529,241,0x4e3517},
  {595,442,0x926127},
  {785,435,0x8f2424},
  
  click = function ()
    tap(727,435)
  end
}

t["到66级了退出换号"] = --取色列表
{
  {200,618,0xfffbf7},
  {200,611,0xf7f7ef},
  {221,612,0xf7fbf7},
  {244,617,0xf7f7f7},
	  {268,618,0xffffff},
		  {188,611,0xb59221},
  
  click = function ()
    tap(637,668)
    mSleep(1500)
    if cmpColorEx(t["退出第二步"]) then
      t["退出第二步"].click()
      mSleep(1500)
      if cmpColorEx(t["退出第三步"]) then
        t["退出第三步"].click()
        mSleep(1500)
        tap(478,625)
        mSleep(1500)
        tap(518,495)
      end
    end
  end
}

t["退出第二步"] = --取色列表
{
  {1020,660,0x5f0e0b},
  {1034,657,0xce9d3e},
  {1003,665,0x5d1c13},
  {1033,690,0xb7a662},
  
  click = function ()
    tap(1018,663)
  end
}

t["退出第三步"] = --取色列表
{
  {1138,45,0xfbb311},
  {896,54,0x2e220b},
  {115,241,0x3b2b1a},
  {144,670,0x1a1a12},
  
  click = function ()
    tap(111,348)
  end
}



t["登录-进入游戏"] = --取色列表
{
  {622,213,0xfcea4b},
  {697,159,0x981101},
  {637,560,0x861a12},
  {747,551,0x4f3e2d},
  
  click = function ()
    tap(643,548)
  end
}


t["选择角色界面"] = --取色列表
{
  {457,59,0x8a9a9a},
  {286,362,0xfcca56},
  {119,278,0x4a4a4a},
  {823,103,0x203131},
  {292,646,0x2f4040},
  {1033,650,0x69270e},
  
  click1 = function ()
    tap(1121,148)
  end,
  
  click2 = function ()
    tap(1091,271)
  end,
  
  click3 = function ()
    tap(1121,390)
  end,
  click4 = function ()
    tap(1121,522)
  end
}

t["选择第二个角色"] = --取色列表
{
  {1086,275,0x23241f},
  {1158,241,0x282323},
  {1008,236,0x232522},
  {1145,295,0x181916},
  {130,98,0x3c453c},
  {254,47,0x4d5e5e},
  
  click = function ()
    tap(1091,271)
  end
}

t["选择第三个角色"] = --取色列表
{
  {1115,398,0x2d221f},
  {1147,413,0x5b3723},
  {1071,417,0x2a2727},
  {1206,375,0x422a21},
  
  click = function ()
    tap(1121,390)
  end
}

t["选择第四个角色"] = --取色列表
{
  {1116,523,0x0c0a07},
  {1193,493,0x1a110b},
  {1212,533,0x1d1914},
  {1077,511,0x222626},
  
  click = function ()
    tap(1121,522)
  end
}

t["选择第一个角色"] = --取色列表
{
  {1107,156,0x1d2022},
  {1216,126,0x1d1b0e},
  {1088,138,0x1a1f1f},
  {1103,160,0x1f2323},
  
  click = function ()
    tap(1121,148)
  end
}


t["进入游戏"] = --取色列表
{
  {1100,647,0x561e06},
  {1026,633,0x791f0e},
  {1171,637,0x62150d},
  {993,641,0xaf6a37},
  
  click = function ()
    tap(1108,646)
  end
}

t["登录-网络问题"] = --取色列表
{
  {542,210,0xf7e06e},
  {631,258,0xe29110},
  {152,498,0x000000},
  {943,573,0x1a0a0a}
}


t["领取奖励退出副本"] = --取色列表
{
  {165,141,0x0e0600},
  {40,343,0xdfdcac},
  {189,346,0x623a0f},
  {225,145,0xdecdbc},
  
  click = function ()
    tap(108,350)
    mSleep(1000)
    tap(108,350)
    mSleep(100)
  end
}


t["在比奇"] = --取色列表
{
  {1193,26,0xb7b78c},
  {1212,21,0xdbdba8},
  {1219,34,0xbebe92},
  {1200,35,0x231001},
  {1186,36,0x1d0e02},
  {1179,28,0x4c2302}
}

t["在盟重"] = --取色列表
{
  {1196,25,0x8a7967},
  {1188,28,0x626249},
  {1187,35,0xbfbf96},
  {1213,28,0xb5b58a},
  {1208,33,0x898967},
  {1222,20,0x2a2918}
}

t["在沙巴克"] = --取色列表
{
  {1200,31,0x4c2302},
  {1179,24,0x221b15},
  {1227,27,0x030100},
  {1202,38,0x4a2202},
  {1177,37,0x575745},
  {1227,20,0xc9c997}
}


t["打开战神"] =
{
  {930,49,0x683508},
  {960,55,0xc53020},
  {938,64,0xe0be7a},
  {928,38,0x512f0e},
  
  click = function()
    tap(947,45)
    mSleep(3000)
    tap(666,603)
    mSleep(2000)
    tap(1148,93)
  end
}

--靠左位置
t["打开战神2"] =
{
  {1005,42,0xb54b0a},
  {978,34,0x725419},
  {991,20,0xe8b931},
  {992,53,0x9c642c},
  
  click = function()
    tap(993,37)
    mSleep(3000)
    tap(666,603)
    mSleep(2000)
    tap(1148,93)
  end
}

t["已经登录"] = --取色列表
{
  {34,12,0xa3a265},
  {22,33,0x524110},
  {220,14,0x901600},
  {101,13,0x3a1109}
}

t["已经登录2"] = --取色列表
{
  {259,156,0x3e4f4f},
  {67,82,0x5f4e23},
  {297,416,0x94612e},
  {427,134,0x617169}
}







return t









