local UE = UnityEngine
local Image = UE.UI.Image
local Text = UE.UI.Text
local ET = LuaFramework.EventTrigger

require 'Common/class'
require 'Common/define'
require 'Common/functions'

local UIEL = LuaFramework.UIEventListener

local M = class(require 'View/BasePanel')
local data_hero_info = require('Data/HERO_INFO')
local data_hero_skills = require('Data/HERO_SKILLS')
HeroDetailPanel = M
---
--@module M
--@type M

function M:ctor(go)
  self.baseUIForm.CurrentUIType.UIForms_ShowMode = UIFormShowMode.Normal
  self.baseUIForm.CurrentUIType.UIForms_Type =  UIFormsType.PopUp
  self.skill_popup = Util.Child(self.transform, "skill_popup")
  self.ub_btn_close = Util.Child(self.transform, 'hero_detail/btn_close')
  
  self.description = Util.Child(self.skill_popup, "skill_list/viewport/content/skill1/description")
  self.content = Util.Child(self.skill_popup, "skill_list/viewport/content")





  Util.SetMaskableInChild(self.description, false)
  self.UIEL = go:AddComponent(typeof(UIEL))
  self.UIEL.self = self

  self.hero_info = {}
  self.skill_list = {}

end

function M:Awake()
  self:BrocastEvent(Protocal.REQ_HERO_INDEX, {name = Protocal.REQ_HERO_INDEX})
  self.skill_spritesname = self.GetSkillSpriteNames()

  local skill_list = Util.Childs(self.content):ToTable()
  for i, v in ipairs(skill_list) do
    local item = {}
    item.gameObject = v
    --item.listener = ET.Get(Util.Child(v, "trigger"))
    item.listener = Util.Child(v, "trigger"):AddComponent(typeof(ET))
    item.listener.onDown = item.listener.onDown + self.onSkillItemDown
    item.listener.onUp = item.listener.onUp + self.onSkillItemUp
    item.img_icon = Util.Child(v, "img_icon"):GetComponent(typeof(Image))
    item.txt_name = Util.Child(v, "txt_name"):GetComponent(typeof(Text))
    self.skill_list[i] = item
  end

  resMgr:LoadSprite('skill', self.skill_spritesname, self.onFinishLoadSprite)
end

--事件注册函数
function M:RegistyEvents()

  self.UIEL:AddButtonClick(self.ub_btn_close,
  function()
    uiMgr:CloseUIForms('HeroDetailPanel')
  end)

  self:AddEvent(Protocal.RESP_HERO_INDEX, self.OnMessage)
end

--外都调用的方法在这定义
function M:FunctionDefine()
  ----------OnMessage------------------------------
  self.OnMessage = function(message)
    print('hero detail panel on message')
    print("data type:", type(message.data))
    if message == nil then return end
    print(message.name, message.data)
    local name = message.name
    local data = message.data

    if name == Protocal.RESP_HERO_INDEX then
      if not isnumber(data) then return end
      self.i_select_hero_index = data
      print('接收到英雄数据响应', data)
      self:SetSkillPopup(data)
    end
  end
  -----------onFinishLoadSprite-------------------------
  self.onFinishLoadSprite = function(objs)
    logWarn('onFinishLoadSprite')
    print('sprite objs len:', objs.Length)
    local t = objs:ToTable()
    print('sprites len:', #t)
    if(self.skill_sprites == nil) then
      self.skill_sprites = {}
    end
    local sn = self.skill_spritesname
    --for i, v in ipairs(self.skill_spritesname) do
    --  print('sprites name', v)
    --end
    --for i, v in ipairs(t) do
    --  self.skill_sprites[sn[i]] = v
    --end
    for i = 0, objs.Length - 1 do
      self.skill_sprites[sn[i + 1]] = objs[i]
      --print('sprite objs:', objs[i]:GetType():ToString())
    end
    self:SetSkillPopup(self.i_select_hero_index)
  end
  -----------onShillItemDown---------------------------
  self.onSkillItemDown = function(go, data)
    print('onSkillItemDown')
    if not isuserdata(go) then return end
    Util.SetParent(self.description, go)

    local position = self.description.transform.localPosition
    position.y = 0
    self.description.transform.localPosition = position
    self.description:SetActive(true)
  end
  ------------onSkillItemUp--------------------------------
  self.onSkillItemUp = function(go, data)
    print('onSkillItemDown')
    self.description:SetActive(false)
  end

end

function M:Display()
  self:BrocastEvent(Protocal.REQ_HERO_INDEX, {name = Protocal.REQ_HERO_INDEX})
  self.gameObject:SetActive(true)
end

--消息接收函数
--function M:OnMessage(message)
--  print('hero detail panel on message')
--  if message == nil then return end
--  print(message.name, message.data)
--  local name = message.name
--  local data = message.data
--
--  if name == Protocal.RESP_HERO_INDEX then
--    print('接收到英雄数据响应', message.data)
--    self.i_select_hero_index = data
--    self:SetSkillPopup(data)
--  end
--end

function M:SetSkillPopup(index)
  print('index type', type(index))
  print('self type', type(self))
  if not isnumber(index) then return end
  local hi = self.hero_info
  if not istable(hi) then return end

  if not hi[index] or not istable(hi[index]) then
    hi[index] = {}
    hi[index].skills = self.GetHeroSkillData(index)
  end
  local t = hi[index]
  if not istable(t.skills) then return end
  for i, v in ipairs(t.skills) do
    print('ipairs index:'..type(i))


    --设置技能图标
    local img_icon = self.skill_list[i].img_icon
    if isuserdata(img_icon) then
      img_icon.sprite = self.skill_sprites[v.SKILL_SPRITE]
      print('icon', v.SKILL_SPRITE)
    end
    --设置技能名称
    local txt_name = self.skill_list[i].txt_name
    if isuserdata(txt_name) then
      txt_name.text = v.SKILL_NAME
    end

  end

end

function M.GetSkillSpriteNames()
  local sprites = {}
  for i, v in ipairs(data_hero_skills) do
    sprites[i] = data_hero_skills[i].SKILL_SPRITE
  end
  return sprites
end

function M.GetHeroSkillSprite(index)
  if type(index) ~= 'number' or
  type(self.skill_sprites) ~= 'table' then
    return
  end

  local t = {}

  local hero_skill_sprite_name = self.GetHeroSkillSpriteNames(index)
  for i, v in ipairs(hero_skill_sprite_name) do
    t[i] = self.skill_sprites[v]
  end
  return t
end

function M.GetHeroSkillData(index)
  if not isnumber(index) then return end
  local data = {}
  local count = 1
  for i, v in ipairs(data_hero_skills) do
    if v.HERO_ID == index then
      data[count] = v
      count = count + 1
    end
  end
  return data
end


