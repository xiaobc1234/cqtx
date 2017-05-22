require "Mapping"
require "util"




-- --------------------经验BOSS-----------------------
function 经验BOSS()
local pages={
  {"个人boss",{0xf7c284,"-16|5|0x943510,-14|-9|0xefd76b", 95, 990, 10, 1050, 81},{1022,47},"sleep",200},
	{"激战boss界面",{0xffffce,"18|20|0x4a3929,18|39|0xffffc5", 95, 54, 286, 125, 374},{89,333},"sleep",100}
}
if 个人火龙==1 then
	table.insert(pages, {"个人boss界面火龙",{0xefebb5,"12|19|0x844d21,12|30|0xffffc5", 95, 58, 293, 117, 368},nil,个人火龙,"finish",co=true})
elseif 个人魔龙	==1 then
	table.insert(pages, {"个人boss界面魔龙",{0xefebb5,"12|19|0x844d21,12|30|0xffffc5", 95, 58, 293, 117, 368},nil,个人魔龙,"finish",co=true})
elseif 个人牛魔==1 then
	table.insert(pages, {"个人boss界面牛魔",{0xefebb5,"12|19|0x844d21,12|30|0xffffc5", 95, 58, 293, 117, 368},nil,个人牛魔,"finish",co=true})
end
mapping(pages)
end

function 个人火龙()
	local pages={
		{"个人火龙",{0xdedf8c,"-20|8|0xa49e63,-9|-8|0x7b5d21", 95, 241, 451, 312, 499},{278,473},个人火龙详情,'finish'}
	}
	mapping(pages)
end
function 个人火龙详情()
	local pages={
		{"未到5转",{0xf72d00,"12|1|0xd62800,3|8|0xce2800", 95, 556, 610, 603, 643},{1138,43},结束个人火龙,"finish"},
		{"副本卷不够",{0xe62c00,"1|-5|0xf62c00,2|5|0xe62d00", 95, 715, 615, 739, 643},{1138,43},结束个人火龙,"finish"},
		{"挑战个人火龙",{0x734510,"8|-4|0xe6deac,-11|-6|0xd6d2a4", 95, 986, 619, 1093, 660},{1034,639},个人火龙ing,"finish"}
	}
end
function 结束个人火龙()
	个人火龙=0
end
function 个人火龙ing()
	--TODO 个人火龙详情
end

function 个人魔龙()
	local pages={
		{"个人魔龙",{0xded28c,"-24|-2|0xceca8c,-9|-7|0x735921", 95, 239, 380, 331, 426},{276,401},个人魔龙详情,"finish"}
	}
end
function 个人魔龙详情()
	local pages={
		{"未到3转",{0xc52000,"0|5|0xff3500,-7|10|0xff3500", 95, 555, 614, 598, 640},{1138,43},结束个人魔龙,"finish"},
		{"副本卷不够",{0xff3500,"-4|5|0xd62c00,-2|8|0xee2400", 95, 710, 613, 749, 648},{1138,43},结束个人魔龙,"finish"},
		{"挑战个人魔龙",{0xc6c67b,"-23|0|0xe6e394,-8|-7|0xbd9231", 95, 225, 376, 335, 427},{1034,639},个人魔龙ing,"finish"}
	}
end
function 结束个人魔龙()
	个人魔龙=0
end
function 个人魔龙ing()
	--TODO
end


function 个人牛魔()
	local pages={
		{"个人牛魔",{0xa49263,"-21|1|0xdedf94,-11|-7|0x7b6121", 95, 233, 305, 325, 349},{276,326},个人牛魔详情,"finish"}
	}
end
function 个人牛魔详情()
	local pages={
		{"未到80级",{0xce2400,"9|-2|0xff3500,11|7|0xde2d00", 95, 555, 615, 590, 640},{1138,43},结束个人牛魔,"finish"},
		{"副本卷不够",{0xff3500,"-1|0|0xde2000,-1|2|0xde2000", 95, 707, 615, 733, 643},{1138,43},结束个人牛魔,"finish"},
		{"挑战个人牛魔",{0xb5a26b,"-14|-9|0xbd9a29,-26|-1|0xd6d283", 95, 220, 302, 332, 351},{1034,639},个人牛魔ing,"finish"}
	}
end
function 结束个人牛魔()
	个人牛魔=0
end
function 个人牛魔ing()
	--TODO
end







