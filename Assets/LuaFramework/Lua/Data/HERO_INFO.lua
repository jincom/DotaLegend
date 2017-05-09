-- ID                               int                              ID
-- HERO_ID                          int                              HERO_ID
-- HERO_NAME                        string(trim)                     英雄名字
-- HERO_SPRITE                      string(trim)                     英雄Sprite
-- HERO_SEX                         int                              英雄性别
-- HERO_SITE                        int                              英雄位置
-- HERO_ATTRIBUTE                   int                              英雄属性
-- HERO_ABOUT                       string(trim)                     英雄介绍
-- HERO_ANA                         string(trim)                     英雄语录
-- HERO_POWERGROW                   float                            英雄力量成长
-- HERO_BRAINSGROW                  float                            英雄智力成长
-- HERO_AGOLITYGROW                 float                            英雄敏捷成长
-- HERO_SCHOOL                      string(trim)                     英雄流派
-- HERO_SKILLS                      array[int:5]                     英雄技能
--    [1]                           int                              
--    [2]                           int                              
--    [3]                           int                              
--    [4]                           int                              
--    [5]                           int                              

return {
	[1] = {
		HERO_ID = 1,
		HERO_NAME = "船长",
		HERO_SPRITE = "Coco.jpg",
		HERO_SEX = 1,
		HERO_SITE = 1,
		HERO_ATTRIBUTE = 1,
		HERO_ABOUT = "前排坦克，能肉能输出能控场的全能英雄，无可争议的团队领袖",
		HERO_ANA = "“远远地看见我向你打招呼，说明你要飞起来了。”",
		HERO_POWERGROW = 3.3,
		HERO_BRAINSGROW = 2.2,
		HERO_AGOLITYGROW = 1.3,
		HERO_SCHOOL = "1",
		HERO_SKILLS = {
			[1] = 1,
			[2] = 2,
			[3] = 3,
			[4] = 4,
			[5] = 5,
		},
	},
	[2] = {
		HERO_ID = 2,
		HERO_NAME = "小黑",
		HERO_SPRITE = "DR.jpg",
		HERO_SEX = 2,
		HERO_SITE = 3,
		HERO_ATTRIBUTE = 3,
		HERO_ABOUT = "后排物理输出，拥有强大的单体和群体伤害技能，但注意不要被人近身。",
		HERO_ANA = "“不要问我，为什么不放大”",
		HERO_POWERGROW = 2,
		HERO_BRAINSGROW = 1.9,
		HERO_AGOLITYGROW = 2.4,
		HERO_SCHOOL = "3",
		HERO_SKILLS = {
			[1] = 6,
			[2] = 7,
			[3] = 8,
			[4] = 9,
			[5] = 10,
		},
	},
	[3] = {
		HERO_ID = 3,
		HERO_NAME = "火女",
		HERO_SPRITE = "Lina.jpg",
		HERO_SEX = 2,
		HERO_SITE = 2,
		HERO_ATTRIBUTE = 2,
		HERO_ABOUT = "中排爆发型法师，较弱的身体中蕴藏着恐怖的法力，技能很强很暴力。",
		HERO_ANA = "“你要来一发吗？”",
		HERO_POWERGROW = 1.7,
		HERO_BRAINSGROW = 3.2,
		HERO_AGOLITYGROW = 1.5,
		HERO_SCHOOL = "2",
		HERO_SKILLS = {
			[1] = 11,
			[2] = 12,
			[3] = 13,
			[4] = 14,
			[5] = 15,
		},
	},
	[4] = {
		HERO_ID = 4,
		HERO_NAME = "小娜迦",
		HERO_SPRITE = "OD.jpg",
		HERO_SEX = 2,
		HERO_SITE = 1,
		HERO_ATTRIBUTE = 3,
		HERO_ABOUT = "前排物理输出，拥有群体物理伤害以及大范围的控制。",
		HERO_ANA = "\"越挣扎，越紧\"",
		HERO_POWERGROW = 3.75,
		HERO_BRAINSGROW = 2.85,
		HERO_AGOLITYGROW = 4.2,
		HERO_SCHOOL = "1",
		HERO_SKILLS = {
			[1] = 16,
			[2] = 17,
			[3] = 18,
			[4] = 19,
			[5] = 20,
		},
	},
	[5] = {
		HERO_ID = 5,
		HERO_NAME = "宙斯",
		HERO_SPRITE = "Razor.jpg",
		HERO_SEX = 1,
		HERO_SITE = 2,
		HERO_ATTRIBUTE = 2,
		HERO_ABOUT = "中排法师，使用闪电对敌人造成大范围伤害。",
		HERO_ANA = "“我会帮你的，你这打酱油的”",
		HERO_POWERGROW = 2.3,
		HERO_BRAINSGROW = 1.2,
		HERO_AGOLITYGROW = 2.7,
		HERO_SCHOOL = "4",
		HERO_SKILLS = {
			[1] = 21,
			[2] = 22,
			[3] = 23,
			[4] = 24,
			[5] = 25,
		},
	},
	[6] = {
		HERO_ID = 6,
		HERO_NAME = "痛苦女王",
		HERO_SPRITE = "OD.jpg",
		HERO_SEX = 2,
		HERO_SITE = 2,
		HERO_ATTRIBUTE = 2,
		HERO_ABOUT = "中排法师，能闪铄到敌人后排，造成强大的群体伤害。",
		HERO_ANA = "“你越绝望，我就越开心。”",
		HERO_POWERGROW = 3.4,
		HERO_BRAINSGROW = 4,
		HERO_AGOLITYGROW = 5,
		HERO_SCHOOL = "1",
		HERO_SKILLS = {
			[1] = 26,
			[2] = 27,
			[3] = 28,
			[4] = 29,
			[5] = 30,
		},
	},
}
