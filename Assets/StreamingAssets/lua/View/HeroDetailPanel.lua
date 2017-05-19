local UE = UnityEngine
local Image = UE.UI.Image
local Text = UE.UI.Text
local ET = LuaFramework.EventTrigger
local RT = UE.RectTransform
local UIEL = LuaFramework.UIEventListener
local Ease = DG.Tweening.Ease

require 'Common/class'
require 'Common/define'
require 'Common/functions'



---@class HeroDetailPanel:BasePanel
local M = class(require 'View/BasePanel')
local data_hero_info = require('Data/HERO_INFO')
local data_hero_skills = require('Data/HERO_SKILLS')
local sprite_proxy = require('Logic.SpriteProxy')
HeroDetailPanel = M
---
--@module M
--@type M

function M:ctor(go)
  --初始化panel属性
  self.baseUIForm.CurrentUIType.UIForms_ShowMode = UIFormShowMode.Normal
  self.baseUIForm.CurrentUIType.UIForms_Type =  UIFormsType.PopUp

  self.hero_detail = Util.Child(go, 'hero_detail')
  self.skill_popup = Util.Child(self.transform, "skill_popup")
  self.ub_btn_close = Util.Child(self.transform, 'hero_detail/btn_close')
  
  self.description = Util.Child(self.skill_popup, "skill_list/viewport/content/skill_1/description")
  self.content = Util.Child(self.skill_popup, "skill_list/viewport/content")
  --获取popup面板的gameObject
  self.popup_list = {property = nil, skill = nil, portrait = nil}
  self.popup_list.property = Util.Child(go, 'property_popup')
  self.popup_list.skill = Util.Child(go, 'skill_popup')
  self.popup_list.portrait = Util.Child(go, 'portrait_popup')

  --获取togglede的gameObject
  self.toggle_parent = Util.Child(go, 'hero_detail/bottom')
  self.toggle_list = {property = nil, skill = nil, portrait = nil}
  self.toggle_list.property = Util.Child(self.toggle_parent, 'toe_property')
  self.toggle_list.portrait = Util.Child(self.toggle_parent, 'toe_portrait')
  self.toggle_list.skill = Util.Child(self.toggle_parent, 'toe_skill')


  --设置技能技能描述面板unMaskAble
  Util.SetMaskableInChild(self.description, false)
  self.UIEL = go:AddComponent(typeof(UIEL))
  self.UIEL.self = self

  self.hero_info = {}
  self.skill_list = {}

end

function M:Awake()
  self:InitDOTween()
  self.BrocastEvent(Protocal.REQ_HERO_INDEX, {name = Protocal.REQ_HERO_INDEX})
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
  --resMgr:LoadSprite('skill', self.skill_spritesname, self.onFinishLoadSprite)
end

function M:InitDOTween()
  if not istable(self.tween_list) then
    self.tween_list =
    {
      portrait = nil,
      property = nil,
      skill = nil,
      herodetail = nil,
    }
  end
  --popup tween
  self.popup_site = false
  local tweens = self.tween_list
  for k, v in pairs(self.popup_list) do
    local rt_popup = v:GetComponent(typeof(RT))
    local tween = rt_popup:DOAnchorPos(Vector2(150, 0), 0.4, false):From()
    tween:OnPlay(function()
      if v.activeSelf == false then
        self.popup_site = true
        v:SetActive(true)
      else
        self.popup_site = false
      end
    end)

    tween:OnRewind(function() v:SetActive(false); end)
    tween:OnComplete(function() v.transform:SetAsFirstSibling() end)
    tween:Pause()
    tween:SetAutoKill(false)
    tween:SetEase(Ease.OutExpo)
    tweens[k] = tween
    --print(k, tweens[k]:GetType():ToString())
  end

  self.hero_detail_site = false
  local rt_detail = self.hero_detail:GetComponent(typeof(RT))
  local detail_tween = rt_detail:DOAnchorPos(Vector2(214, 0), 0.4, false)
  detail_tween:Pause()
  detail_tween:SetAutoKill(false)
  detail_tween:SetEase(Ease.OutExpo)
  tweens.herodetail = detail_tween
end

--事件注册函数
function M:RegistyEvents()

  self.UIEL:AddButtonClick(self.ub_btn_close,
  function()
    uiMgr:CloseUIForms('HeroDetailPanel')
  end)

  self.AddEvent(Protocal.RESP_HERO_INDEX, self.OnMessage)

  for _, v in pairs(self.toggle_list) do
    print('toggleparent', v.name)
    self.UIEL:AddToggleChange(v, self.onToggleChange)
  end
end

--外都调用的方法在这定义
function M:FunctionDefine()

  ----------OnMessage------------------------------
  self.OnMessage = function(message)
    if message == nil then return end
    local name = message.name
    local data = message.data

    if name == Protocal.RESP_HERO_INDEX then
      if not isnumber(data) then return end
      self.i_select_hero_index = data
      print('接收到英雄数据响应', data)
      --self:SetSkillPopup(data)
    end
  end

  -----------onShillItemDown---------------------------
  self.onSkillItemDown = function(go, data)
    --print('onSkillItemDown')
    if not isuserdata(go) then return end
    Util.SetParent(self.description, go)
    local position = Util.GetAnchorsPos(self.description)
    position.y = 0
    Util.SetAnchorsPos(self.description, position)
    self.description:SetActive(true)
    local text1 = Util.Child(self.description, "text1"):GetComponent(typeof(Text))
    local strs = string.split(Util.GetParent(go).name, '_')
    local skill_i = tonumber(strs[2])
    local skill_idx = data_hero_info[self.i_select_hero_index].HERO_SKILLS
    local des_str = data_hero_skills[skill_idx[skill_i]].SKILL_DESCRIPTION
    text1.text = des_str
  end

  ------------onSkillItemUp--------------------------------
  self.onSkillItemUp = function(go, data)
    --print('onSkillItemUp')
    self.description:SetActive(false)
  end

  ------------onToggleChange------------------------------
  self.onToggleChange = function(this, go, isOn)
    if isuserdata(go) then
      local name = go.name
      if name == 'toe_property' then
        self:SetPropertyPopup(self.i_select_hero_index, isOn)
      elseif name == 'toe_skill' then
        self:SetSkillPopup(self.i_select_hero_index, isOn)
      elseif name == 'toe_portrait' then
        self:SetPortraitPopup(self.i_select_hero_index, isOn)
      end
    end
  end

end

function M:Display()
  self.BrocastEvent(Protocal.REQ_HERO_INDEX, {name = Protocal.REQ_HERO_INDEX})
  local toggle_portrait = self.toggle_list.portrait
  toggle_portrait:GetComponent(typeof(UE.UI.Toggle)).isOn = true
  self.gameObject:SetActive(true)
end

--隐藏窗体方法
function M:Hiding()
  if self.current_pop then
    self.toggle_list[self.current_pop]:GetComponent(typeof(UE.UI.Toggle)).isOn = false
    self.current_pop = nil
    self.pre_pop = nil
  end
  self.gameObject:SetActive(false)
end


------------弹出技能面板-------------------------------
function M:SetSkillPopup(index, is_display)

  self:HideOtherPopup('skill', is_display)
  for k, v in pairs(sprite_proxy) do
    print(k, v)
  end
  if not isnumber(index) then return end

  local skill_idx = data_hero_info[index].HERO_SKILLS
  print('SetSkillPopup', index)
  local skillicon = sprite_proxy.skillicon
  for k, v in pairs(skill_idx) do
    if isnumber(k) then
      local skill = data_hero_skills[v]
      --设置技能图标
      local img_icon = self.skill_list[k].img_icon
      --print('img_icon', type(img_icon))
      if isuserdata(img_icon) then
        img_icon.sprite = skillicon[skill.SKILL_SPRITE]
      end
      --设置技能名称
      local txt_name = self.skill_list[k].txt_name
      if isuserdata(txt_name) then
        txt_name.text = skill.SKILL_NAME
      end
    end
  end

end

---------弹出属性面板------------------------------
---@param number index
---@param bool  is_display
function M:SetPropertyPopup(index, is_display)

  self:HideOtherPopup('property', is_display)

end

---------弹出原画面板------------------------------
function M:SetPortraitPopup(index, is_display)

  self:HideOtherPopup('portrait', is_display)

end

-----------隐藏其他popup面板除了name面板------------
function M:HideOtherPopup(name, is_display)

  print('before', is_display, name, self.current_pop, self.pre_pop)
  if is_display then
    if not self.pre_pop or not self.current_pop then
      self.tween_list['herodetail']:PlayForward()
    end
    self.tween_list[name]:PlayForward()
    self.pre_pop = self.current_pop
    self.current_pop = name
  else
    self.tween_list[name]:PlayBackwards()
    self.pre_pop = self.current_pop
    self.current_pop = nil
    local ft = FrameTimer.New(function()
      if not self.current_pop then
        self.tween_list['herodetail']:PlayBackwards()
      end
    end, 1, 1)
    ft:Start()
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


