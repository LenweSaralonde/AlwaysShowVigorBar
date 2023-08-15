AlwaysShowVigorBar = {}

function AlwaysShowVigorBar.IsDragonRiding()
    local _, isDragonRiding = C_PlayerInfo.GetGlidingInfo()
    return isDragonRiding
end

function AlwaysShowVigorBar.OnUISetShown()
    if not AlwaysShowVigorBar.IsDragonRiding() then return end

    local forceVisible = not UIParent:IsVisible()
    local parent = forceVisible and WorldFrame or UIParent
    local scale = forceVisible and UIParent:GetScale() or 1

    UIParentBottomManagedFrameContainer:SetParent(parent)
    UIParentBottomManagedFrameContainer:SetScale(scale)
end

function AlwaysShowVigorBar.Init()
    UIParent:HookScript('OnShow', AlwaysShowVigorBar.OnUISetShown)
    UIParent:HookScript('OnHide', AlwaysShowVigorBar.OnUISetShown)
end

AlwaysShowVigorBar.Init()
