require "Mapping"
require "util"


function 整理包裹()
local pages={
  {'已打开底部菜单',{0xd3b02a,"3|3|0xd5a520,16|2|0xf7f780,19|16|0x9a6313", 95, 311, 617, 373, 687},nil,_打开包裹,"finish"},
  {'打开底部菜单',{0xbfbf8c,"2|1|0xc8c29a,3|1|0xc7c7a5,-1|0|0xbfbf8c", 95, 601, 600, 677, 649},{642,649},_打开包裹,"finish"},
  {'包裹中',{0xf7e781,"12|4|0x885216,7|-2|0xc3b238,7|12|0xaa7722", 95, 135, 574, 168, 611},nil,点击整理,"finish"}
}
mapping(pages)
end
function _打开包裹()
local pages={
  {'打开包裹',{0xd3b02a,"3|3|0xd5a520,16|2|0xf7f780,19|16|0x9a6313", 95, 311, 617, 373, 687},{341,659},"sleep",1000},
  {'包裹中',{0xf7e781,"12|4|0x885216,7|-2|0xc3b238,7|12|0xaa7722", 95, 135, 574, 168, 611},nil,点击整理,"finish"}
}
mapping(pages)
end
function 点击整理()
local pages={
	{'包裹中点击整理',{0xf7e781,"12|4|0x885216,7|-2|0xc3b238,7|12|0xaa7722", 95, 135, 574, 168, 611},{641,585},找到并丢弃,'finish'}
}
mapping(pages)
end
function 找到并丢弃()
local pages={
--  {'找到紫色装备点击2',{0x211410,"-5|39|0x7b498c,-1|39|0x7b4984,-8|14|0x7b458c", 95, 142, 83, 716, 540},nil,a="searchTap"},
	{'找到蓝色装备点击过滤掉整理的时间',{0x191008,"-61|-9|0x29497b,-61|3|0x29497b,-51|8|0x21456b", 95, 142, 83, 716, 540},nil,"sleep",500},
	{'找到蓝色装备点击',{0x191008,"-61|-9|0x29497b,-61|3|0x29497b,-51|8|0x21456b", 95, 142, 83, 716, 540},nil,a="searchTap"},
	{'找到丢弃',{0xfffbc5,"0|5|0xded29c,14|1|0x8c5519,26|7|0xffffce", 95, 136, 228, 1035, 573},nil,关闭包裹,"finish",a="searchTap"},
	{'找到紫色装备点击',{0x211410,"0|-16|0x944d94,-13|-15|0x6b3d7b,-14|1|0x734584", 95, 126, 61, 723, 553},nil,a="searchTap"}
}
mapping(pages,10,关闭包裹)--10次没有找到就关闭包裹
end

function 关闭包裹()
local pages = {
  {'关闭包裹',{0xf7e781,"12|4|0x885216,7|-2|0xc3b238,7|12|0xaa7722", 95, 135, 574, 168, 611},{718,46},"finish"}
}
mapping(pages)
end


function 合成装备()
local pages={
  {'已打开底部菜单',{0xd3b02a,"3|3|0xd5a520,16|2|0xf7f780,19|16|0x9a6313", 95, 311, 617, 373, 687},nil,打开装备合成,"finish"},
  {'打开底部菜单',{0xbfbf8c,"2|1|0xc8c29a,3|1|0xc7c7a5,-1|0|0xbfbf8c", 95, 601, 600, 677, 649},{642,649},打开装备合成,"finish"}
}
mapping(pages)
end
function 打开装备合成()
local pages={
  {'打开装备',{0xd3b02a,"3|3|0xd5a520,16|2|0xf7f780,19|16|0x9a6313", 95, 311, 617, 373, 687},{430,659},"sleep",1000,co=true},
  {'打开合成',{0xf7e363,"12|-20|0xe6d742,-3|12|0xefebd6,13|9|0xf7f3f7", 95, 391, 511, 482, 590},{429,553},'sleep',200},
  {'合成界面',{0xd6ce8c,"4|0|0xdedb94,0|5|0xd6d28c,4|5|0xdee38c", 95, 261, 311, 296, 344},nil,合成60级装备,'finish'},
  {'合成界面不等左侧刷出来',{0x3a2421,"-40|2|0x7b4d8c,-28|-6|0x211810", 95, 740, 177, 823, 264},nil,合成60级装备,'finish'}
}
mapping(pages)
end
function 合成60级装备()
local pages={
  {'开始合成60级项链',{0xd6ce8c,"4|0|0xdedb94,0|5|0xd6d28c,4|5|0xdee38c", 95, 261, 311, 296, 344},{779,226},'sleep',1000},
	{'开始合成60级项链不用等左边刷出来',{0x3a2421,"-40|2|0x7b4d8c,-28|-6|0x211810", 95, 740, 177, 823, 264},{779,226},'sleep',1000,co=true},
  {'合成60级项链',{0xf7f7c5,"-28|4|0xe6e2b4,2|11|0xdedfad,-14|8|0x844d19", 95, 747, 597, 815, 635},{783,624},'sleep',500},
  {'合成60级项链',{0xf7f7c5,"-28|4|0xe6e2b4,2|11|0xdedfad,-14|8|0x844d19", 95, 747, 597, 815, 635},{783,624},'sleep',500},
  {'合成60级项链',{0xf7f7c5,"-28|4|0xe6e2b4,2|11|0xdedfad,-14|8|0x844d19", 95, 747, 597, 815, 635},{783,624},'sleep',500},
  {'合成60级项链',{0xf7f7c5,"-28|4|0xe6e2b4,2|11|0xdedfad,-14|8|0x844d19", 95, 747, 597, 815, 635},{783,624},合成70级装备,'finish'}
}
mapping(pages)
end
function 合成70级装备()
local pages={
  {'进入合成70级界面',{0xd6ce8c,"4|0|0xdedb94,0|5|0xd6d28c,4|5|0xdee38c", 95, 261, 311, 296, 344},{287,185},合成70级装备详情,'finish',co=true}
}
mapping(pages)
end
function 合成70级装备详情()
local pages={
  {'开始合成70级项链',{0xd6ce8c,"4|0|0xdedb94,0|5|0xd6d28c,4|5|0xdee38c", 95, 261, 311, 296, 344},{779,226},'sleep',1000,co=true},
  {'合成70级项链',{0xf7f7c5,"-28|4|0xe6e2b4,2|11|0xdedfad,-14|8|0x844d19", 95, 747, 597, 815, 635},{783,624},'sleep',1000},
  {'合成70级项链',{0xf7f7c5,"-28|4|0xe6e2b4,2|11|0xdedfad,-14|8|0x844d19", 95, 747, 597, 815, 635},{783,624},'sleep',500},
  {'合成70级项链',{0xf7f7c5,"-28|4|0xe6e2b4,2|11|0xdedfad,-14|8|0x844d19", 95, 747, 597, 815, 635},{783,624},'sleep',500},
  {'合成70级项链',{0xf7f7c5,"-28|4|0xe6e2b4,2|11|0xdedfad,-14|8|0x844d19", 95, 747, 597, 815, 635},{783,624},结束合成装备,'finish'}
}
mapping(pages)
end

function 结束合成装备()
local pages={
  {'结束合成装备',{0xd6ce8c,"4|0|0xdedb94,0|5|0xd6d28c,4|5|0xdee38c", 95, 261, 311, 296, 344},{1138,43},'finish',co=true}
}
mapping(pages)
end





