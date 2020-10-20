if modifier_gem_god_hand == nil then
	modifier_gem_god_hand = class({})
end

function modifier_gem_god_hand:DeclareFunctions()
    local funcs = {
        MODIFIER_PROPERTY_DAMAGEOUTGOING_PERCENTAGE,
        MODIFIER_PROPERTY_STATS_STRENGTH_BONUS,
    }
    return funcs
end

function modifier_gem_god_hand:IsHidden()
	return false
end

function modifier_gem_god_hand:OnCreated(params)
    self.suit_damage_add = 30
end

function modifier_gem_god_hand:GetModifierDamageOutgoing_Percentage()
    return self.suit_damage_add
end


function modifier_gem_god_hand:IsPurgable()
    return false -- 无法驱散
end
 
function modifier_gem_god_hand:RemoveOnDeath()
    return false -- 死亡不移除
end

function modifier_gem_god_hand:GetTexture()
    return "baowu/sk4"
end