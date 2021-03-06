-- ID                               int                              ID
-- SKILL_ID                         int                              技能ID
-- HERO_ID                          int                              英雄ID
-- SKILL_NAME                       string(trim)                     技能名称
-- SKILL_SPRITE                     string(trim)                     技能SRPITE
-- SKILL_DESCRIPTION                string                           技能描述

return {
	[1] = {
		SKILL_ID = 1,
		HERO_ID = 1,
		SKILL_NAME = "幽灵船",
		SKILL_SPRITE = "s10",
		SKILL_DESCRIPTION = "召唤幽灵船冲向对方，造成大范围的眩晕和魔法伤害。",
	},
	[2] = {
		SKILL_ID = 2,
		HERO_ID = 1,
		SKILL_NAME = "洪流",
		SKILL_SPRITE = "s13",
		SKILL_DESCRIPTION = "用水流击飞一个随机敌人，造成魔法伤害并附带眩晕效果。",
	},
	[3] = {
		SKILL_ID = 3,
		HERO_ID = 1,
		SKILL_NAME = "水刀",
		SKILL_SPRITE = "s12",
		SKILL_DESCRIPTION = "对自身小范围内的敌人造成物理伤害",
	},
	[4] = {
		SKILL_ID = 4,
		HERO_ID = 1,
		SKILL_NAME = "力量强化",
		SKILL_SPRITE = "s14",
		SKILL_DESCRIPTION = "船长专注地磨练自己的身体，增加力量。",
	},
	[5] = {
		SKILL_ID = 5,
		HERO_ID = 1,
		SKILL_NAME = "新兵团长",
		SKILL_SPRITE = "508",
		SKILL_DESCRIPTION = "拥有标志的新兵团队友可获得生命值增强。",
	},
	[6] = {
		SKILL_ID = 6,
		HERO_ID = 2,
		SKILL_NAME = "箭雨",
		SKILL_SPRITE = "s24",
		SKILL_DESCRIPTION = "对敌人连续射出多只剑失，造成成吨的伤害。技能等级越高，射出的箭失数量越多。",
	},
	[7] = {
		SKILL_ID = 7,
		HERO_ID = 2,
		SKILL_NAME = "冰箭",
		SKILL_SPRITE = "s22",
		SKILL_DESCRIPTION = "射出一只冰箭，对目标造成物理伤害。",
	},
	[8] = {
		SKILL_ID = 8,
		HERO_ID = 2,
		SKILL_NAME = "沉默",
		SKILL_SPRITE = "s23",
		SKILL_DESCRIPTION = "使数个敌人陷入沉默，被沉默的目标只能用于物理手段进行打击。",
	},
	[9] = {
		SKILL_ID = 9,
		HERO_ID = 2,
		SKILL_NAME = "射手天赋",
		SKILL_SPRITE = "s20",
		SKILL_DESCRIPTION = "增加全体队友攻击力。",
	},
	[10] = {
		SKILL_ID = 10,
		HERO_ID = 2,
		SKILL_NAME = "女武神之威",
		SKILL_SPRITE = "508",
		SKILL_DESCRIPTION = "拥有女武神标志的可获得护甲穿透增强",
	},
	[11] = {
		SKILL_ID = 11,
		HERO_ID = 3,
		SKILL_NAME = "神灭斩",
		SKILL_SPRITE = "s30",
		SKILL_DESCRIPTION = "对敌方射出一道闪电，造成巨量的魔法伤害。",
	},
	[12] = {
		SKILL_ID = 12,
		HERO_ID = 3,
		SKILL_NAME = "龙破斩",
		SKILL_SPRITE = "s32",
		SKILL_DESCRIPTION = "用火焰砍击，造成大量魔法伤害。",
	},
	[13] = {
		SKILL_ID = 13,
		HERO_ID = 3,
		SKILL_NAME = "光击阵",
		SKILL_SPRITE = "s33",
		SKILL_DESCRIPTION = "从随机敌人脚下召唤火圈，造成小范围魔法伤害和眩晕。",
	},
	[14] = {
		SKILL_ID = 14,
		HERO_ID = 3,
		SKILL_NAME = "焰魂",
		SKILL_SPRITE = "s34",
		SKILL_DESCRIPTION = "火焰的力量可以让火女凝聚力量，每次普通攻击的时候会额外增加能量。",
	},
	[15] = {
		SKILL_ID = 15,
		HERO_ID = 3,
		SKILL_NAME = "屠龙火焰",
		SKILL_SPRITE = "508",
		SKILL_DESCRIPTION = "火女的火球会燃烧敌人，普通攻击会对敌人造成燃烧伤害。",
	},
	[16] = {
		SKILL_ID = 16,
		HERO_ID = 4,
		SKILL_NAME = "海妖之歌",
		SKILL_SPRITE = "s130",
		SKILL_DESCRIPTION = "自身附近中范围的敌人沉睡，但沉睡中的敌人会更难到下。",
	},
	[17] = {
		SKILL_ID = 17,
		HERO_ID = 4,
		SKILL_NAME = "激流砍击",
		SKILL_SPRITE = "s132",
		SKILL_DESCRIPTION = "对自身附近的敌人造成物理伤害。",
	},
	[18] = {
		SKILL_ID = 18,
		HERO_ID = 4,
		SKILL_NAME = "诱捕",
		SKILL_SPRITE = "s133",
		SKILL_DESCRIPTION = "小娜迦撒出一张网，定身并造成魔法伤害。",
	},
	[19] = {
		SKILL_ID = 19,
		HERO_ID = 4,
		SKILL_NAME = "镜像防御",
		SKILL_SPRITE = "s134",
		SKILL_DESCRIPTION = "增加闪避",
	},
	[20] = {
		SKILL_ID = 20,
		HERO_ID = 4,
		SKILL_NAME = "水月镜花",
		SKILL_SPRITE = "508",
		SKILL_DESCRIPTION = "闪避敌人的攻击后，可召唤出自身的幻想协助战斗。",
	},
	[21] = {
		SKILL_ID = 21,
		HERO_ID = 5,
		SKILL_NAME = "天神之怒",
		SKILL_SPRITE = "s50",
		SKILL_DESCRIPTION = "召唤天雷，对敌方全体造成魔法伤害。",
	},
	[22] = {
		SKILL_ID = 22,
		HERO_ID = 5,
		SKILL_NAME = "闪电链",
		SKILL_SPRITE = "s52",
		SKILL_DESCRIPTION = "释放一道弹跳的闪电，对数个敌人造成魔法伤害。",
	},
	[23] = {
		SKILL_ID = 23,
		HERO_ID = 5,
		SKILL_NAME = "落雪",
		SKILL_SPRITE = "s53",
		SKILL_DESCRIPTION = "召唤闪电劈中一个敌人，造成大量伤害并且打断敌人动作。",
	},
	[24] = {
		SKILL_ID = 24,
		HERO_ID = 5,
		SKILL_NAME = "静电场",
		SKILL_SPRITE = "s54",
		SKILL_DESCRIPTION = "操纵空气中的静电，大幅增加法术强度。",
	},
	[25] = {
		SKILL_ID = 25,
		HERO_ID = 5,
		SKILL_NAME = "电力过载",
		SKILL_SPRITE = "508",
		SKILL_DESCRIPTION = "如果宙斯的技能对敌人造成伤害，宙斯的神力会额外产生当前地方血量一定的百分比伤害。",
	},
	[26] = {
		SKILL_ID = 26,
		HERO_ID = 6,
		SKILL_NAME = "超声波",
		SKILL_SPRITE = "s70",
		SKILL_DESCRIPTION = "女王发出尖叫的超声波",
	},
	[27] = {
		SKILL_ID = 27,
		HERO_ID = 6,
		SKILL_NAME = "毒镖",
		SKILL_SPRITE = "s72",
		SKILL_DESCRIPTION = "丢一个带毒的匕首，对目标造成魔法伤害。",
	},
	[28] = {
		SKILL_ID = 28,
		HERO_ID = 6,
		SKILL_NAME = "尖叫",
		SKILL_SPRITE = "s73",
		SKILL_DESCRIPTION = "跳入敌人之中发出锐利的尖叫，对正前方敌人造成魔法伤害。",
	},
	[29] = {
		SKILL_ID = 29,
		HERO_ID = 6,
		SKILL_NAME = "闪烁",
		SKILL_SPRITE = "s74",
		SKILL_DESCRIPTION = "在战场上灵活移动，躲避敌方攻击",
	},
	[30] = {
		SKILL_ID = 30,
		HERO_ID = 6,
		SKILL_NAME = "母鸡",
		SKILL_SPRITE = "508",
		SKILL_DESCRIPTION = "哈哈哈哈哈哈哈哈呵呵呵呵呵呵",
	},
}
