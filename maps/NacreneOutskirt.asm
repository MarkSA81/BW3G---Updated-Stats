	const_def 2 ; object constants
	const NACRENEOUTSKIRT_YOUNGSTER
	const NACRENEOUTSKIRT_FULL_HEAL
	const NACRENEOUTSKIRT_IRON
	const NACRENEOUTSKIRT_NUGGET
	const NACRENEOUTSKIRT_PP_MAX
	const NACRENEOUTSKIRT_SCHOOLBOY
	const NACRENEOUTSKIRT_SCHOOLGIRL
	const NACRENEOUTSKIRT_COOLTRAINER_M
	const NACRENEOUTSKIRT_COOLTRAINER_F

NacreneOutskirt_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerSchoolboyNacrene:
	trainer SCHOOLBOY, SCHOOLBOY_NACRENE_OUTSKIRT, EVENT_BEAT_SCHOOLBOY_NACRENE_OUTSKIRT, SchoolboyNacreneSeenText, SchoolboyNacreneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyNacreneAfterText
	waitbutton
	closetext
	end

TrainerSchoolgirlNacrene:
	trainer SCHOOLGIRL_D, SCHOOLGIRL_NACRENE_OUTSKIRT, EVENT_BEAT_SCHOOLGIRL_NACRENE_OUTSKIRT, SchoolgirlNacreneSeenText, SchoolgirlNacreneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolgirlNacreneAfterText
	waitbutton
	closetext
	end

TrainerCooltrainerMNacrene:
	trainer COOLTRAINERM_D, COOLTRAINERM_NACRENE_OUTSKIRT, EVENT_BEAT_COOLTRAINERM_NACRENE_OUTSKIRT, CooltrainerMNacreneSeenText, CooltrainerMNacreneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerMNacreneAfterText
	waitbutton
	closetext
	end

TrainerCooltrainerFNacrene:
	trainer COOLTRAINERF_D, COOLTRAINERF_NACRENE_OUTSKIRT, EVENT_BEAT_COOLTRAINERF_NACRENE_OUTSKIRT, CooltrainerFNacreneSeenText, CooltrainerFNacreneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerFNacreneAfterText
	waitbutton
	closetext
	end
	
NacreneOutskirtYoungsterScript:
	jumptextfaceplayer NacreneOutskirtYoungsterText
	
NacreneOutskirtFullHeal:
	itemball FULL_HEAL
	
NacreneOutskirtIron:
	itemball IRON
	
NacreneOutskirtNugget:
	itemball NUGGET
	
NacreneOutskirtPPMax:
	itemball PP_MAX
	
NacreneOutskirtSign:
	jumptext NacreneOutskirtSignText
	
NacreneOutskirtYoungsterText:
	text "There are cops in"
	line "the forest. They"
	
	para "wouldn't let me"
	line "through!"
	done
	
SchoolboyNacreneSeenText:
	text "..."
	done

SchoolboyNacreneBeatenText:
	text "..."
	done

SchoolboyNacreneAfterText:
	text "..."
	done
	
SchoolgirlNacreneSeenText:
	text "..."
	done

SchoolgirlNacreneBeatenText:
	text "..."
	done

SchoolgirlNacreneAfterText:
	text "..."
	done
	
CooltrainerMNacreneSeenText:
	text "..."
	done

CooltrainerMNacreneBeatenText:
	text "..."
	done

CooltrainerMNacreneAfterText:
	text "..."
	done
	
CooltrainerFNacreneSeenText:
	text "..."
	done

CooltrainerFNacreneBeatenText:
	text "..."
	done

CooltrainerFNacreneAfterText:
	text "..."
	done
	
NacreneOutskirtSignText:
	text "West to PINWHEEL"
	line "FOREST."
	
	para "Stay on the road!"
	done

NacreneOutskirt_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  3,  8, PINWHEEL_FOREST, 2
	warp_event  3,  9, PINWHEEL_FOREST, 3

	db 0 ; coord events
	
	db 1 ; bg events
	bg_event 15,  4, BGEVENT_READ, NacreneOutskirtSign

	db 9 ; object events
	object_event  9,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, NacreneOutskirtYoungsterScript, -1
	object_event 13, 44, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, NacreneOutskirtFullHeal, EVENT_NACRENE_OUTSKIRT_FULL_HEAL
	object_event 13, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, NacreneOutskirtIron, EVENT_NACRENE_OUTSKIRT_IRON
	object_event  8, 28, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, NacreneOutskirtNugget, EVENT_NACRENE_OUTSKIRT_NUGGET
	object_event 19, 24, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, NacreneOutskirtPPMax, EVENT_NACRENE_OUTSKIRT_PP_MAX
	object_event  6, 10, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSchoolboyNacrene, -1
	object_event 15, 29, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 3, TrainerSchoolgirlNacrene, -1
	object_event  5, 34, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 2, TrainerCooltrainerMNacrene, -1
	object_event 19, 41, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerFNacrene, -1
	