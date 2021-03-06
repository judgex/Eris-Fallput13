/obj/item/gun/projectile/deagle
	name = ".44 Magnum \"Desert Eagle\""
	desc = "An ancient Deasert Eagle pistol, chambered in .44 Magnum. Interest in late 20th century films made this weapon one of the most popular handguns of all times in the States. \
			This gun packs a punch but is a bit clunky to use. Occasional jams or feed issues, high recoil and rare replacement parts."
	icon = 'icons/obj/guns/projectile/avasarala.dmi'
	icon_state = "avasarala"
	item_state = "avasarala"
	force = WEAPON_FORCE_PAINFUL
	caliber = CAL_MAGNUM
	load_method = MAGAZINE
	mag_well = MAG_WELL_PISTOL
	magazine_type = /obj/item/ammo_magazine/magnum
	matter = list(MATERIAL_PLASTEEL = 15, MATERIAL_PLASTIC = 8)
	can_dual = TRUE
	damage_multiplier = 1.45
	penetration_multiplier = 1.35
	recoil_buildup = 5
	fire_sound = 'sound/weapons/guns/fire/hpistol_fire.ogg'
	unload_sound = 'sound/weapons/guns/interact/hpistol_magout.ogg'
	reload_sound = 'sound/weapons/guns/interact/hpistol_magin.ogg'
	cocked_sound = 'sound/weapons/guns/interact/hpistol_cock.ogg'
	price_tag = 800
	spawn_tags = SPAWN_TAG_FS_PROJECTILE

/obj/item/gun/projectile/deagle/on_update_icon()
	..()

	var/iconstring = initial(icon_state)
	var/itemstring = ""

	if (!ammo_magazine || !length(ammo_magazine.stored_ammo))
		iconstring += "_slide"

	icon_state = iconstring
	set_item_state(itemstring)

/obj/item/gun/projectile/deagle/Initialize()
	. = ..()
	update_icon()
