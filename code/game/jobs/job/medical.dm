/datum/job/cmo
	title = JOB_TITLE_CMO
	flag = JOB_FLAG_CMO
	department_flag = JOBCAT_MEDSCI
	total_positions = 1
	spawn_positions = 1
	is_medical = 1
	supervisors = "капитаном"
	department_head = list(JOB_TITLE_CAPTAIN)
	selection_color = "#66c6ff"
	req_admin_notify = 1
	access = list(ACCESS_EVA, ACCESS_MEDICAL, ACCESS_MORGUE, ACCESS_GENETICS, ACCESS_HEADS,
			ACCESS_CHEMISTRY, ACCESS_VIROLOGY, ACCESS_CMO, ACCESS_SURGERY, ACCESS_RC_ANNOUNCE,
			ACCESS_KEYCARD_AUTH, ACCESS_SEC_DOORS, ACCESS_PSYCHIATRIST, ACCESS_MAINT_TUNNELS, ACCESS_PARAMEDIC, ACCESS_MINERAL_STOREROOM)
	minimal_access = list(ACCESS_EVA, ACCESS_MEDICAL, ACCESS_MORGUE, ACCESS_GENETICS, ACCESS_HEADS,
			ACCESS_CHEMISTRY, ACCESS_VIROLOGY, ACCESS_CMO, ACCESS_SURGERY, ACCESS_RC_ANNOUNCE,
			ACCESS_KEYCARD_AUTH, ACCESS_SEC_DOORS, ACCESS_PSYCHIATRIST, ACCESS_MAINT_TUNNELS, ACCESS_PARAMEDIC, ACCESS_MINERAL_STOREROOM)
	minimal_player_age = 21
	min_age_allowed = 30
	exp_requirements = 3000
	exp_type = EXP_TYPE_MEDICAL
	money_factor = 7
	outfit = /datum/outfit/job/cmo

/datum/outfit/job/cmo
	name = JOB_TITLE_CMO
	jobtype = /datum/job/cmo

	uniform = /obj/item/clothing/under/rank/chief_medical_officer
	suit = /obj/item/clothing/suit/storage/labcoat/cmo
	shoes = /obj/item/clothing/shoes/brown
	l_ear = /obj/item/radio/headset/heads/cmo
	id = /obj/item/card/id/cmo
	l_pocket = /obj/item/lighter/zippo/cmo
	suit_store = /obj/item/flashlight/pen
	l_hand = /obj/item/storage/firstaid/doctor
	pda = /obj/item/pda/heads/cmo
	backpack_contents = list(
		/obj/item/melee/classic_baton/telescopic = 1
	)

	backpack = /obj/item/storage/backpack/medic
	satchel = /obj/item/storage/backpack/satchel_med
	dufflebag = /obj/item/storage/backpack/duffel/medical


/datum/job/doctor
	title = JOB_TITLE_DOCTOR
	flag = JOB_FLAG_DOCTOR
	department_flag = JOBCAT_MEDSCI
	total_positions = 5
	spawn_positions = 3
	is_medical = 1
	supervisors = "главным врачом"
	department_head = list(JOB_TITLE_CMO)
	selection_color = "#d1eeff"
	access = list(ACCESS_MEDICAL, ACCESS_MORGUE, ACCESS_SURGERY, ACCESS_CHEMISTRY, ACCESS_VIROLOGY, ACCESS_GENETICS, ACCESS_MINERAL_STOREROOM)
	minimal_access = list(ACCESS_MEDICAL, ACCESS_MORGUE, ACCESS_SURGERY)
	alt_titles = list("Хирург","Медсестра")
	minimal_player_age = 3
	exp_requirements = 600
	exp_type = EXP_TYPE_MEDICAL
	money_factor = 3
	outfit = /datum/outfit/job/doctor

/datum/outfit/job/doctor
	name = JOB_TITLE_DOCTOR
	jobtype = /datum/job/doctor

	uniform = /obj/item/clothing/under/rank/medical
	suit = /obj/item/clothing/suit/storage/labcoat
	shoes = /obj/item/clothing/shoes/white
	l_ear = /obj/item/radio/headset/headset_med
	id = /obj/item/card/id/medical
	suit_store = /obj/item/flashlight/pen
	l_hand = /obj/item/storage/firstaid/doctor
	pda = /obj/item/pda/medical

	backpack = /obj/item/storage/backpack/medic
	satchel = /obj/item/storage/backpack/satchel_med
	dufflebag = /obj/item/storage/backpack/duffel/medical


/datum/job/doctor/intern
	title = JOB_TITLE_INTERN
	flag = JOB_FLAG_INTERN
	total_positions = 5
	spawn_positions = 3
	department_head = list(JOB_TITLE_CMO, JOB_TITLE_DOCTOR)
	selection_color = "#d1eeff"
	alt_titles = list("Студент-врач", "Медицинский Ассистент")
	exp_requirements = 180
	exp_type = EXP_TYPE_CREW
	exp_max	= 600
	exp_type_max = EXP_TYPE_MEDICAL
	is_novice = TRUE
	money_factor = 2
	outfit = /datum/outfit/job/doctor/intern

/datum/outfit/job/doctor/intern
	name = JOB_TITLE_INTERN
	jobtype = /datum/job/doctor/intern

	uniform = /obj/item/clothing/under/rank/medical/intern
	l_pocket = /obj/item/paper/deltainfo
	id = /obj/item/card/id/medical/intern
	l_hand = /obj/item/storage/firstaid/o2
	backpack_contents = list(
		/obj/item/clothing/mask/surgical = 1,
		/obj/item/clothing/gloves/color/latex = 1
	)

/datum/outfit/job/doctor/intern/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	. = ..()
	if(H.gender == FEMALE)
		uniform = /obj/item/clothing/under/rank/medical/intern/skirt
	if(H.mind && H.mind.role_alt_title)
		switch(H.mind.role_alt_title)
			if("Medical Assistant")
				uniform = /obj/item/clothing/under/rank/medical/intern/assistant
				if(H.gender == FEMALE)
					uniform = /obj/item/clothing/under/rank/medical/intern/assistant/skirt
			if("Student Medical Doctor")
				head = /obj/item/clothing/head/surgery/lightgreen
				uniform = /obj/item/clothing/under/rank/medical/lightgreen


/datum/job/coroner
	title = JOB_TITLE_CORONER
	flag = JOB_FLAG_CORONER
	department_flag = JOBCAT_MEDSCI
	total_positions = 1
	spawn_positions = 1
	is_medical = 1
	supervisors = "главным врачом"
	department_head = list(JOB_TITLE_CMO)
	selection_color = "#d1eeff"
	access = list(ACCESS_MEDICAL, ACCESS_MORGUE, ACCESS_SURGERY, ACCESS_CHEMISTRY, ACCESS_VIROLOGY, ACCESS_GENETICS, ACCESS_MINERAL_STOREROOM)
	minimal_access = list(ACCESS_MEDICAL, ACCESS_MORGUE)
	minimal_player_age = 3
	exp_requirements = 180
	exp_type = EXP_TYPE_CREW
	money_factor = 3
	outfit = /datum/outfit/job/coroner

/datum/outfit/job/coroner
	name = "Coroner"
	jobtype = /datum/job/coroner

	uniform = /obj/item/clothing/under/rank/medical/mortician
	suit = /obj/item/clothing/suit/storage/labcoat/mortician
	shoes = /obj/item/clothing/shoes/white
	l_ear = /obj/item/radio/headset/headset_med
	id = /obj/item/card/id/medical
	suit_store = /obj/item/flashlight/pen
	l_hand = /obj/item/clipboard
	pda = /obj/item/pda/medical

	backpack = /obj/item/storage/backpack/medic
	satchel = /obj/item/storage/backpack/satchel_med
	dufflebag = /obj/item/storage/backpack/duffel/medical

	backpack_contents = list(
					/obj/item/clothing/head/surgery/black = 1,
					/obj/item/autopsy_scanner = 1,
					/obj/item/reagent_scanner = 1,
					/obj/item/storage/box/bodybags = 1)

/datum/outfit/job/doctor/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	. = ..()
	if(H.mind && H.mind.role_alt_title)
		switch(H.mind.role_alt_title)
			if("Surgeon")
				uniform = /obj/item/clothing/under/rank/medical/blue
				head = /obj/item/clothing/head/surgery/blue
			if(JOB_TITLE_DOCTOR)
				uniform = /obj/item/clothing/under/rank/medical
			if("Nurse")
				if(H.gender == FEMALE)
					if(prob(50))
						uniform = /obj/item/clothing/under/rank/nursesuit
					else
						uniform = /obj/item/clothing/under/rank/nurse
					head = /obj/item/clothing/head/nursehat
				else
					uniform = /obj/item/clothing/under/rank/medical/purple



//Chemist is a medical job damnit	//YEAH FUCK YOU SCIENCE	-Pete	//Guys, behave -Erro
/datum/job/chemist
	title = JOB_TITLE_CHEMIST
	flag = JOB_FLAG_CHEMIST
	department_flag = JOBCAT_MEDSCI
	total_positions = 2
	spawn_positions = 2
	is_medical = 1
	supervisors = "главным врачом"
	department_head = list(JOB_TITLE_CMO)
	selection_color = "#d1eeff"
	access = list(ACCESS_MEDICAL, ACCESS_MORGUE, ACCESS_SURGERY, ACCESS_CHEMISTRY, ACCESS_VIROLOGY, ACCESS_GENETICS, ACCESS_MINERAL_STOREROOM)
	minimal_access = list(ACCESS_MEDICAL, ACCESS_CHEMISTRY, ACCESS_MINERAL_STOREROOM)
	alt_titles = list("Фармацевт","Фармаколог")
	minimal_player_age = 7
	exp_requirements = 600
	exp_type = EXP_TYPE_MEDICAL
	money_factor = 4
	outfit = /datum/outfit/job/chemist

/datum/outfit/job/chemist
	name = "Chemist"
	jobtype = /datum/job/chemist

	uniform = /obj/item/clothing/under/rank/chemist
	suit = /obj/item/clothing/suit/storage/labcoat/chemist
	shoes = /obj/item/clothing/shoes/white
	l_ear = /obj/item/radio/headset/headset_med
	glasses = /obj/item/clothing/glasses/science
	id = /obj/item/card/id/medical
	pda = /obj/item/pda/chemist

	backpack = /obj/item/storage/backpack/chemistry
	satchel = /obj/item/storage/backpack/satchel_chem
	dufflebag = /obj/item/storage/backpack/duffel/chemistry


/datum/job/geneticist
	title = JOB_TITLE_GENETICIST
	flag = JOB_FLAG_GENETICIST
	department_flag = JOBCAT_MEDSCI
	total_positions = 2
	spawn_positions = 2
	is_medical = 1
	supervisors = "главным врачом и директором исследований"
	department_head = list(JOB_TITLE_CMO, JOB_TITLE_RD)
	selection_color = "#d1eeff"
	access = list(ACCESS_MEDICAL, ACCESS_MORGUE, ACCESS_SURGERY, ACCESS_CHEMISTRY, ACCESS_VIROLOGY, ACCESS_GENETICS, ACCESS_RESEARCH, ACCESS_MINERAL_STOREROOM)
	minimal_access = list(ACCESS_MEDICAL, ACCESS_MORGUE, ACCESS_GENETICS, ACCESS_RESEARCH)
	minimal_player_age = 3
	exp_requirements = 900
	exp_type = EXP_TYPE_MEDICAL
	money_factor = 4
	outfit = /datum/outfit/job/geneticist

/datum/outfit/job/geneticist
	name = "Geneticist"
	jobtype = /datum/job/geneticist

	uniform = /obj/item/clothing/under/rank/geneticist
	suit = /obj/item/clothing/suit/storage/labcoat/genetics
	shoes = /obj/item/clothing/shoes/white
	l_ear = /obj/item/radio/headset/headset_medsci
	id = /obj/item/card/id/genetics
	suit_store = /obj/item/flashlight/pen
	pda = /obj/item/pda/geneticist

	backpack = /obj/item/storage/backpack/genetics
	satchel = /obj/item/storage/backpack/satchel_gen
	dufflebag = /obj/item/storage/backpack/duffel/genetics


/datum/job/virologist
	title = JOB_TITLE_VIROLOGIST
	flag = JOB_FLAG_VIROLOGIST
	department_flag = JOBCAT_MEDSCI
	total_positions = 1
	spawn_positions = 1
	is_medical = 1
	supervisors = "главным врачом"
	department_head = list(JOB_TITLE_CMO)
	selection_color = "#d1eeff"
	access = list(ACCESS_MEDICAL, ACCESS_MORGUE, ACCESS_SURGERY, ACCESS_CHEMISTRY, ACCESS_VIROLOGY, ACCESS_GENETICS, ACCESS_MINERAL_STOREROOM)
	minimal_access = list(ACCESS_MEDICAL, ACCESS_VIROLOGY, ACCESS_MINERAL_STOREROOM)
	alt_titles = list("Патолог","Микробиолог")
	minimal_player_age = 7
	exp_requirements = 900
	exp_type = EXP_TYPE_MEDICAL
	money_factor = 4
	outfit = /datum/outfit/job/virologist

/datum/outfit/job/virologist
	name = "Virologist"
	jobtype = /datum/job/virologist

	uniform = /obj/item/clothing/under/rank/virologist
	suit = /obj/item/clothing/suit/storage/labcoat/virologist
	shoes = /obj/item/clothing/shoes/white
	mask = /obj/item/clothing/mask/surgical
	l_ear = /obj/item/radio/headset/headset_med
	id = /obj/item/card/id/medical
	suit_store = /obj/item/flashlight/pen
	pda = /obj/item/pda/viro

	backpack = /obj/item/storage/backpack/virology
	satchel = /obj/item/storage/backpack/satchel_vir
	dufflebag = /obj/item/storage/backpack/duffel/virology


/datum/job/psychiatrist
	title = JOB_TITLE_PSYCHIATRIST
	flag = JOB_FLAG_PSYCHIATRIST
	department_flag = JOBCAT_MEDSCI
	total_positions = 1
	spawn_positions = 1
	is_medical = 1
	supervisors = "главным врачом"
	department_head = list(JOB_TITLE_CMO)
	selection_color = "#d1eeff"
	access = list(ACCESS_MEDICAL, ACCESS_MORGUE, ACCESS_SURGERY, ACCESS_CHEMISTRY, ACCESS_VIROLOGY, ACCESS_GENETICS, ACCESS_PSYCHIATRIST)
	minimal_access = list(ACCESS_MEDICAL, ACCESS_PSYCHIATRIST)
	alt_titles = list("Психолог","Терапевт")
	money_factor = 3
	outfit = /datum/outfit/job/psychiatrist

/datum/outfit/job/psychiatrist
	name = "Psychiatrist"
	jobtype = /datum/job/psychiatrist

	uniform = /obj/item/clothing/under/rank/medical
	suit = /obj/item/clothing/suit/storage/labcoat
	shoes = /obj/item/clothing/shoes/laceup
	l_ear = /obj/item/radio/headset/headset_med
	id = /obj/item/card/id/medical
	suit_store = /obj/item/flashlight/pen
	pda = /obj/item/pda/medical

/datum/outfit/job/psychiatrist/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	. = ..()
	if(H.mind && H.mind.role_alt_title)
		switch(H.mind.role_alt_title)
			if("Psychiatrist")
				uniform = /obj/item/clothing/under/rank/psych
			if("Psychologist")
				uniform = /obj/item/clothing/under/rank/psych/turtleneck
			if("Therapist")
				uniform = /obj/item/clothing/under/rank/medical


/datum/job/paramedic
	title = JOB_TITLE_PARAMEDIC
	flag = JOB_FLAG_PARAMEDIC
	department_flag = JOBCAT_MEDSCI
	total_positions = 1
	spawn_positions = 1
	is_medical = 1
	supervisors = "главным врачом"
	department_head = list(JOB_TITLE_CMO)
	selection_color = "#d1eeff"
	access = list(ACCESS_PARAMEDIC, ACCESS_MEDICAL, ACCESS_MAINT_TUNNELS, ACCESS_EXTERNAL_AIRLOCKS, ACCESS_MORGUE, ACCESS_SURGERY)
	minimal_access=list(ACCESS_PARAMEDIC, ACCESS_MEDICAL, ACCESS_MAINT_TUNNELS, ACCESS_EXTERNAL_AIRLOCKS, ACCESS_MORGUE, ACCESS_SURGERY)
	minimal_player_age = 3
	exp_requirements = 180
	exp_type = EXP_TYPE_CREW
	money_factor = 3
	outfit = /datum/outfit/job/paramedic

/datum/outfit/job/paramedic
	name = "Paramedic"
	jobtype = /datum/job/paramedic

	uniform = /obj/item/clothing/under/rank/medical/paramedic
	shoes = /obj/item/clothing/shoes/black
	head = /obj/item/clothing/head/soft/blue
	mask = /obj/item/clothing/mask/cigarette
	l_ear = /obj/item/radio/headset/headset_med
	id = /obj/item/card/id/medical
	l_pocket = /obj/item/flashlight/pen
	pda = /obj/item/pda/medical
	backpack_contents = list(
		/obj/item/healthanalyzer = 1
	)

	backpack = /obj/item/storage/backpack/medic
	satchel = /obj/item/storage/backpack/satchel_med
	dufflebag = /obj/item/storage/backpack/duffel/medical
	box = /obj/item/storage/box/engineer
