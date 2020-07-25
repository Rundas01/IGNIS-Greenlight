--シエスタホールド
--Siesta Hold
local s,id=GetID()
function s.initial_effect(c)
	--Activate
	local e1=Effect.CreateEffect(c)
	e1:SetType(EFFECT_TYPE_ACTIVATE)
	e1:SetCategory(CATEGORY_POSITION)
	e1:SetCondition(s.condition)
	e1:SetTarget(s.target)
	e1:SetOperation(s.operation)
	c:RegisterEffect(e1)
end
function s.condition(e,tp,eg,ep,ev,re,r,rp)
	if #eg~=1 then return false end
	local tc=eg:GetFirst()
	return tc~=e:GetHandler() and tc:IsFaceup() and tc:IsCanTurnSet() and tc:IsSummonPlayer(1-tp)
	and Duel.GetFieldGroupCount(1-tp,LOCATION_MZONE,0)<=1
end
function s.target(e,tp,eg,ep,ev,re,r,rp,chk)
	local tc=eg:GetFirst()
	if chk==0 then return tc~=e:GetHandler() and tc:IsFaceup() and tc:IsCanTurnSet() and tc:IsSummonPlayer(1-tp)
	and Duel.GetFieldGroupCount(1-tp,LOCATION_MZONE,0)<=1 end
	Duel.SetChainLimit(s.chlimit)
end
function s.operation(e,tp,eg,ep,ev,re,r,rp)
	--Requirement
	
	--Effect
	local tc=eg:GetFirst()
	Duel.ChangePosition(tc,POS_FACEDOWN_DEFENSE)
end