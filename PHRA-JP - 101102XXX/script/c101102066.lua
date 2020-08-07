--エクシーズ・インポート
--Xyz Import
--Scripted by Naim
local s,id=GetID()
function s.initial_effect(c)
	--Activate
	local e1=Effect.CreateEffect(c)
	e1:SetType(EFFECT_TYPE_ACTIVATE)
	e1:SetCode(EVENT_FREE_CHAIN)
	e1:SetCountLimit(1,id,EFFECT_COUNT_CODE_SINGLE)
	e1:SetTarget(s.target)
	e1:SetOperation(s.activate)
	c:RegisterEffect(e1)
end
function s.atchfilter(c,atk)
	return c:IsFaceup() and c:IsType(TYPE_MONSTER) and c:IsAttackBelow(atk)
end
function s.xyzfilter(c,tp)
	return c:IsFaceup() and c:IsType(TYPE_MONSTER) and c:IsType(TYPE_XYZ)
		and Duel.IsExistingTarget(s.atchfilter,tp,0,LOCATION_MZONE,1,nil)
end
function s.target(e,tp,eg,ep,ev,re,r,rp,chk,chkc)
	if chkc then return false end
	if chk==0 then return Duel.IsExistingTarget(s.xyzfilter,tp,LOCATION_MZONE,0,1,nil,tp) end
	Duel.Hint(HINT_SELECTMSG,tp,HINTMSG_FACEUP)
	local g1=Duel.SelectTarget(tp,s.xyzfilter,tp,LOCATION_MZONE,0,1,1,nil,tp)
	Duel.Hint(HINT_SELECTMSG,tp,HINTMSG_FACEUP)
	local g2=Duel.SelectTarget(tp,s.atchfilter,tp,LOCATION_MZONE,LOCATION_MZONE,1,1,g1:GetFirst(),g1:GetFirst():GetAttack())
	e:SetLabelObject(g1:GetFirst())
end
function s.activate(e,tp,eg,ep,ev,re,r,rp)
	local c1=e:GetLabelObject()
	local g=Duel.GetChainInfo(0,CHAININFO_TARGET_CARDS)
	local tc=g:GetFirst()
	if tc==c1 then tc=g:GetNext() end
	if c1:IsRelateToEffect(e) and tc:IsRelateToEffect(e) and not tc:IsFacedown() then
		Duel.Overlay(c,tc)
	end
end