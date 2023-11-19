-- Variables that are used on both client and server
SWEP.Gun = ("m9k_ump45") -- must be the name of your swep but NO CAPITALS!
if (GetConVar(SWEP.Gun.."_allowed")) ~= nil then
    if not (GetConVar(SWEP.Gun.."_allowed"):GetBool()) then SWEP.Base = "bobs_blacklisted" SWEP.PrintName = SWEP.Gun return end
end
SWEP.Category                = "M9K Submachine Guns"
SWEP.Author                = ""
SWEP.Contact                = ""
SWEP.Purpose                = ""
SWEP.Instructions                = ""
SWEP.MuzzleAttachment            = "1"     -- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment            = "2"     -- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName                = "HK UMP45"        -- Weapon name (Shown on HUD)
SWEP.Slot                = 2                -- Slot in the weapon selection menu
SWEP.SlotPos                = 55            -- Position in the slot
SWEP.DrawAmmo                = true        -- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox            = false        -- Should draw the weapon info box
SWEP.BounceWeaponIcon           =     false    -- Should the weapon icon bounce?
SWEP.DrawCrosshair            = true        -- set false if you want no crosshair
SWEP.Weight                = 30            -- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo            = true        -- Auto switch to if we pick it up
SWEP.AutoSwitchFrom            = true        -- Auto switch from if you pick up a better weapon
SWEP.HoldType                 = "smg"        -- how others view you carrying the weapon
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles

SWEP.ViewModelFOV            = 70
SWEP.ViewModelFlip            = true
SWEP.ViewModel                = "models/weapons/v_hk_ump_45.mdl"    -- Weapon view model
SWEP.WorldModel                = "models/weapons/w_hk_ump45.mdl"    -- Weapon world model
SWEP.Base                = "bobs_gun_base"
SWEP.Spawnable                = true
SWEP.AdminSpawnable            = true
SWEP.FiresUnderwater = false

SWEP.Primary.Sound            = Sound("m9k_hk_ump45.Single")        -- Script that calls the primary fire sound
SWEP.Primary.RPM            = 600            -- This is in Rounds Per Minute
SWEP.Primary.ClipSize            = 25        -- Size of a clip
SWEP.Primary.DefaultClip        = 60        -- Bullets you start with
SWEP.Primary.KickUp                = 0.2        -- Maximum up recoil (rise)
SWEP.Primary.KickDown            = 0.4        -- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal        = 0.45        -- Maximum up recoil (stock)
SWEP.Primary.Automatic            = true        -- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo            = "smg1"            -- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.SelectiveFire        = true

SWEP.Secondary.IronFOV            = 55        -- How much you 'zoom' in. Less is more!

SWEP.data                 = {}                --The starting firemode
SWEP.data.ironsights            = 1

SWEP.Primary.NumShots    = 1        -- How many bullets to shoot per trigger pull
SWEP.Primary.Damage        = 20    -- Base damage per bullet
SWEP.Primary.Spread        = .028    -- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .018 -- Ironsight accuracy, should be the same for shotguns

-- Enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(2.826, -1.601, 1.259)
SWEP.IronSightsAng = Vector(-0.055, 0, 0)
SWEP.SightsPos = Vector(2.826, -1.601, 1.259)
SWEP.SightsAng = Vector(-0.055, 0, 0)
SWEP.RunSightsPos = Vector(-3.386, -4.488, 1.18)
SWEP.RunSightsAng = Vector(-17.362, -48.78, 0)

if GetConVar("M9KDefaultClip") == nil then
    print("M9KDefaultClip is missing! You may have hit the lua limit!")
else
    if GetConVar("M9KDefaultClip"):GetInt() ~= -1 then
        SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize * GetConVar("M9KDefaultClip"):GetInt()
    end
end

if GetConVar("M9KUniqueSlots") ~= nil then
    if not (GetConVar("M9KUniqueSlots"):GetBool()) then
        SWEP.SlotPos = 2
    end
end