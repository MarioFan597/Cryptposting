----------------------------------------------
------------MOD CODE -------------------------

SMODS.Atlas {
	key = "jokers",
	path = "atlas_jokers.png",
	px = 71,
	py = 95
}

SMODS.Sound {
	key = "pop",
	path = "pop.ogg",
	loop = false,
	volume = 0.5,
}

SMODS.Sound {
	key = "eat",
	path = "eat.ogg",
	loop = false,
	volume = 0.5,
}

SMODS.Joker {
	key = "bulgoe",
	config = { extra = { a_chips = 2.7 } },
	rarity = 1,
	atlas =  "crp_jokers",
	blueprint_compat = true,
	pos = { x = 0, y = 0 },
	cost = 1,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.a_chips } }
	end,
	calculate = function(self, card, context)
		if context.joker_main or context.forcetrigger then
			return {
				chips = card.ability.extra.a_chips
			}
		end
	end,
	crp_credits = {
		idea = { "Poker The Poker" },
		art = { "Poker The Poker" },
		code = { "Glitchkat10" },
		custom = { key = "everything",text = "Bulgoe" }
	}
}

SMODS.Joker {
	key = "normalis",
	config = { extra = { e_chips = 2.7, e_mult = 2.7 } },
	rarity = "cry_exotic",
	atlas =  "crp_jokers",
	blueprint_compat = true,
	pos = { x = 1, y = 0 },
	soul_pos = { x = 2, y = 0, extra = { x = 3, y = 0 } },
	cost = 50,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.e_chips, card.ability.extra.e_mult } }
	end,
	calculate = function(self, card, context)
		if context.joker_main or context.forcetrigger then
			return {
				Echip_mod = card.ability.extra.e_chips,
				Emult_mod = card.ability.extra.e_mult,
				message = localize({
					type = "variable",
					key = "a_powmultchips",
					vars = { card.ability.extra.e_chips },
				}),
				colour = { 0.8, 0.45, 0.85, 1 },
			}
		end
	end,
	crp_credits = {
		idea = { "Poker The Poker" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = "sprinter",
	config = { extra = { a_chips = 0, a_chips_mod = 75 } },
	rarity = 1,
	atlas = "crp_jokers",
	pos = { x = 4, y = 0 },
	cost = 5,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.a_chips, card.ability.extra.a_chips_mod } }
	end,
	calculate = function(self, card, context)
		if context.joker_main or context.forcetrigger then
			return {
				chips = card.ability.extra.a_chips,
			}
		end
		if context.before and next(context.poker_hands['Straight Flush']) and not context.blueprint then
			card.ability.extra.a_chips = card.ability.extra.a_chips + card.ability.extra.a_chips_mod
			return {
				message = 'Upgraded!',
				colour = G.C.CHIPS,
				card = card
			}
		end
	end,
	crp_credits = {
		idea = { "Poker The Poker" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = "jogger",
	config = { extra = { a_chips = 0, a_chips_mod = 5 } },
	rarity = 1,
	atlas = "crp_jokers",
	pos = { x = 5, y = 0 },
	cost = 5,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.a_chips, card.ability.extra.a_chips_mod } }
	end,
	calculate = function(self, card, context)
		if context.joker_main or context.forcetrigger then
			return {
				chips = card.ability.extra.a_chips,
			}
		end
		if context.before and next(context.poker_hands['High Card']) and not context.blueprint then
			card.ability.extra.a_chips = card.ability.extra.a_chips + card.ability.extra.a_chips_mod
			return {
				message = 'Upgraded!',
				colour = G.C.CHIPS,
				card = card
			}
		end
	end,
	crp_credits = {
		idea = { "Poker The Poker" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = "tetration_timmy",
	config = { extra = { ee_mult = 1.1 } },
	rarity = "cry_exotic",
	atlas = "crp_jokers",
	pos = { x = 2, y = 3 },
	soul_pos = { x = 3, y = 3, extra = { x = 4, y = 3 } },
	cost = 50,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.ee_mult } }
	end,
	calculate = function(self, card, context)
		if context.joker_mainor or context.forcetrigger then
			return {
				message = '^^' .. card.ability.extra.ee_mult .. ' Mult',
				EEmult_mod = card.ability.extra.ee_mult,
				colour = G.C.DARK_EDITION,
				card = card
			}
		end
	end,
	crp_credits = {
		idea = { "Poker The Poker","Glitchkat10" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = "dead_joker",
	config = { extra = {  } },
	rarity = 3,
	atlas = "crp_jokers",
	pos = { x = 6, y = 0 },
	cost = 8,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = {  } }
	end,
	calculate = function(self, card, context)
		if context.joker_mainor or context.forcetrigger then
			return {
				mult = 107
			}
		end
	end,
	crp_credits = {
		idea = { "Poker The Poker" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = "joker_of_all_trades",
	config = { extra = { a_chips = 150, a_mult = 15, a_dollars = 5 } },
	rarity = "crp_rare2",
	atlas = "crp_jokers",
	pos = { x = 3, y = 1 },
	cost = 9,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.a_chips, card.ability.extra.a_mult, card.ability.extra.a_dollars } }
	end,
	calculate = function(self, card, context)
		if context.joker_main or context.forcetrigger then
			return {
				chips = card.ability.extra.a_chips,
				mult = card.ability.extra.a_mult
			}
		end
		if context.forcetrigger then
			ease_dollars(card.ability.extra.a_dollars)
			return { message = "$" .. number_format(card.ability.extra.a_dollars), colour = G.C.MONEY }
		end
	end,
	calc_dollar_bonus = function(self, card)
		return card.ability.extra.a_dollars
	end,
	crp_credits = {
		idea = { "Poker The Poker" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = "millipede",
	config = { extra = { a_chips = 1000 } },
	rarity = 3,
	atlas = "crp_jokers",
	pos = { x = 5, y = 1 },
	cost = 10,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.a_chips } }
	end,
	calculate = function(self, card, context)
		if context.joker_main then
			if #context.full_hand == 1 then
				return {
					chips = card.ability.extra.a_chips
				}
			end
		end
		if context.forcetrigger then
			return {
				chips = card.ability.extra.a_chips
			}
		end
	end,
	crp_credits = {
		idea = { "Poker The Poker" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = "joker_2",
	config = { extra = { a_chips = 4 } },
	rarity = 1,
	atlas = "crp_jokers",
	pos = { x = 7, y = 0 },
	cost = 1,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.a_chips } }
	end,
	calculate = function(self, card, context)
		if context.joker_main or context.forcetrigger then
			return {
				chips = card.ability.extra.a_chips
			}
		end
	end,
	crp_credits = {
		idea = { "borb43" },
		art = { "Poker The Poker", "Glitchkat10" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = "joker_3",
	config = { extra = { x_mult = 4 } },
	rarity = 3,
	atlas = "crp_jokers",
	pos = { x = 8, y = 0 },
	cost = 10,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.x_mult } }
	end,
	calculate = function(self, card, context)
		if context.joker_main or context.forcetrigger then
			return {
				x_mult = card.ability.extra.x_mult
			}
		end
	end,
	crp_credits = {
		idea = { "Poker The Poker" },
		art = { "Glitchkat10" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = "joker_4",
	config = { extra = { e_mult = 4 } },
	rarity = "cry_exotic",
	atlas = "crp_jokers",
	pos = { x = 0, y = 1 },
	soul_pos = { x = 1, y = 1, extra = { x = 2, y = 1 } },
	cost = 50,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.e_mult } }
	end,
	calculate = function(self, card, context)
		if context.joker_main or context.forcetrigger then
			return {
				message = localize({
					type = "variable",
					key = "a_powmult",
					vars = {
						number_format(card.ability.extra.e_mult),
					},
				}),
				Emult_mod = card.ability.extra.e_mult,
				colour = G.C.DARK_EDITION,
			}
		end
	end,
	crp_credits = {
		idea = { "N/A" },
		art = { "Glitchkat10" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = "joker_5",
	config = { extra = { ee_mult = 4 } },
	rarity = "crp_mythic",
	atlas = "crp_jokers",
	pos = { x = 1, y = 2 },
	soul_pos = { x = 2, y = 2, extra = { x = 3, y = 2 } },
	cost = (4^4)/(math.sqrt(4)),
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.ee_mult } }
	end,
	calculate = function(self, card, context)
		if context.joker_main or context.forcetrigger then
			return {
				message = '^^' .. card.ability.extra.ee_mult .. ' Mult',
				EEmult_mod = card.ability.extra.ee_mult,
				colour = G.C.DARK_EDITION,
				card = card
			}
		end
	end,
	crp_credits = {
		idea = { "Poker The Poker" },
		art = { "Glitchkat10" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = "joker_6",
	config = { extra = { a_dollars = 4 } },
	rarity = "crp_uncommon2",
	atlas = "crp_jokers",
	pos = { x = 6, y = 1 },
	cost = 9,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.a_dollars } }
	end,
	calculate = function(self, card, context)
		if context.joker_main or context.forcetrigger then
			ease_dollars(card.ability.extra.a_dollars)
			return { message = "$" .. number_format(card.ability.extra.a_dollars), colour = G.C.MONEY }
		end
	end,
	crp_credits = {
		idea = { "N/A" },
		art = { "Glitchkat10" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = "joker_8",
	config = { extra = { x_chips = 4 } },
	rarity = 3,
	atlas = "crp_jokers",
	pos = { x = 0, y = 3 },
	cost = 10,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.x_chips } }
	end,
	calculate = function(self, card, context)
		if context.joker_main or context.forcetrigger then
			return {
				x_chips = card.ability.extra.x_chips
			}
		end
	end,
	crp_credits = {
		idea = { "Poker The Poker" },
		art = { "Glitchkat10" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = "joker?",
	config = { extra = { mult = 4 } },
	rarity = 1,
	atlas = "crp_jokers",
	pos = { x = 5, y = 4 },
	cost = 44,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { lenient_bignum(card.ability.extra.mult) } }
	end,
	calculate = function(self, card, context)
		if context.joker_main or context.forcetrigger then
			if
				next(SMODS.find_card('j_joker'))
				and next(SMODS.find_card('j_crp_joker_2'))
				and next(SMODS.find_card('j_crp_joker_2.5'))
				and next(SMODS.find_card('j_crp_joker_3'))
				and next(SMODS.find_card('j_crp_joker_4'))
				and next(SMODS.find_card('j_crp_joker_5'))
				and next(SMODS.find_card('j_crp_joker_6'))
				and next(SMODS.find_card('j_crp_joker_8'))
				and next(SMODS.find_card('j_crp_evil_joker'))
				and next(SMODS.find_card('j_crp_joker_0')) 
			then
				return {
					hypermult_mod = {
						4,
						lenient_bignum(card.ability.extra.mult)
					},
					message = "{4}" .. lenient_bignum(card.ability.extra.mult) .. ' Mult',
					colour = G.C.EDITION,
				}
			else
				return {
					mult = lenient_bignum(card.ability.extra.mult)
				}
			end
		end
	end,
	crp_credits = {
		idea = { "N/A", "Glitchkat10" },
		art = { "Glitchkat10" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = "evil_joker",
	config = { extra = { s_mult = 4 } },
	rarity = "cry_cursed",
	atlas = "crp_jokers",
	pos = { x = 8, y = 1 },
	cost = 0,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { lenient_bignum(card.ability.extra.s_mult) } }
	end,
	calculate = function(self, card, context)
		if context.joker_main or context.forcetrigger then
			return {
				message = localize({
					type = "variable",
					key = "a_mult_minus",
					vars = { number_format(card.ability.extra.s_mult) },
				}),
				mult_mod = lenient_bignum(card.ability.extra.s_mult) * -1,
				colour = G.C.MULT,
			}
		end
	end,
	crp_credits = {
		idea = { "N/A" },
		art = { "Glitchkat10" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = "joker_0",
	config = { extra = { create = 4 } },
	rarity = "crp_rare2",
	atlas = "crp_jokers",
	pos = { x = 8, y = 4 },
	cost = 9,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { lenient_bignum(card.ability.extra.create) } }
	end,
	calculate = function(self, card, context)
		local jokers_to_create = lenient_bignum(card.ability.extra.create)
      		G.GAME.joker_buffer = G.GAME.joker_buffer + jokers_to_create
		for i = 1, jokers_to_create do
			if context.joker_main or context.forcetrigger then
				local card = create_card("Joker", G.jokers, nil, nil, nil, nil, "j_joker") -- creates the card in question but puts it in the middle of the screen where it does nothing
				card:add_to_deck() -- puts the card you just created in the metaphorical "deck" of all cards you currently have, consumables and jokers included
				card:start_materialize() -- plays the particle animation when jokers spawn in
				G.jokers:emplace(card) -- puts the card you created in specifically your joker tray so Balatro knows what to do when it gets there
			end
		end
	end,
	crp_credits = {
		idea = { "lord.ruby" },
		art = { "Glitchkat10" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = "joker_2.5",
	config = { extra = { a_chips = 40 } },
	rarity = 1,
	atlas = "crp_jokers",
	pos = { x = 8, y = 2 },
	cost = 1,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { lenient_bignum(card.ability.extra.a_chips) } }
	end,
	calculate = function(self, card, context)
		if context.joker_main or context.forcetrigger then
			return {
				chips = card.ability.extra.a_chips
			}
		end
	end,
	crp_credits = {
		idea = { "Poker The Poker" },
		art = { "Glitchkat10" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = "pi_joker",
	config = { extra = {  } },
	rarity = "crp_rare2",
	atlas = "crp_jokers",
	pos = { x = 1, y = 3 },
	cost = 10,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = {  } }
	end,
	calculate = function(self, card, context)
		if context.joker_main or context.forcetrigger then
			return {
				x_chips = 3.14159265358979323846264338327950,
				x_mult = 3.14159265358979323846264338327950,
			}
		end
	end,
	crp_credits = {
		idea = { "N/A" },
		art = { "Glitchkat10" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = "semicolon",
	config = { extra = {  } },
	rarity = 1,
	atlas = "crp_jokers",
	pos = { x = 0, y = 5 },
	cost = 2,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = {  } }
	end,
	calculate = function(self, card, context)
		if context.joker_main or context.forcetrigger then
			local ind = nil
			for i, v in pairs(G.jokers.cards) do
				if v == card then ind = i+1 end
			end
			if ind and G.jokers.cards[ind] then
				card_eval_status_text(card, "extra", nil, nil, nil, { message = "plz", colour = { 0.8, 0.45, 0.85, 1 }, delay = 5 } )
				return {
					message = "Nope!",
					delay = 1,
					colour = G.C.PURPLE,
					card = G.jokers.cards[ind]
				}
			end
		end
		return nil
	end,
	crp_credits = {
		idea = { "lord.ruby" },
		art = { "Tatteredlurker" },
		code = { "Glitchkat10", "lord.ruby" }
	}
}

SMODS.Joker {
	key = ":3",
	rarity = "crp_:3",
	atlas = "crp_jokers",
	pos = { x = 6, y = 3 },
	cost = 0,
	blueprint_compat = false,
	crp_credits = {
		idea = { "lord.ruby" },
		art = { "Glitchkat10" },
		code = { "Glitchkat10" },
		custom = { key = "colon_3", text = "why are you here; this joker literally does nothing" }
	}
}

SMODS.Joker {
	key = "sigma_man",
	pos = { x = 7, y = 4 },
	pools = { ["Meme"] = true },
	rarity = "crp_cipe",
	cost = 10,
	immutable = true,
	perishable_compat = true,
	atlas = "crp_jokers",
	calculate = function(self, card, context)
		if
			context.selling_card
			and context.card.ability.name == "cry-Chad"
			and not context.retrigger_joker
			and not context.blueprint
		then
			return {}
		elseif
			( -- Compacting all the elseifs into one block for space and readability also maintablity
				context.selling_self
				or context.discard
				or context.reroll_shop --Yes
				or context.buying_card
				or context.skip_blind
				or context.using_consumeable
				or context.selling_card
				or context.setting_blind
				or context.skipping_booster
				or context.open_booster
				or context.forcetrigger
			)
			and #G.jokers.cards + G.GAME.joker_buffer < (context.selling_self and (G.jokers.config.card_limit + 1) or G.jokers.config.card_limit)
			and not context.retrigger_joker
			and not context.blueprint
		then
			local createjoker = math.min(1, G.jokers.config.card_limit - (#G.jokers.cards + G.GAME.joker_buffer))
			G.GAME.joker_buffer = G.GAME.joker_buffer + createjoker
			local card = create_card("Joker", G.jokers, nil, nil, nil, nil, "j_cry_chad")
			card:add_to_deck()
			G.jokers:emplace(card)
			G.GAME.joker_buffer = 0
		end
	end,
	add_to_deck = function(self, card, from_debuff)
		if not from_debuff then
			local card = create_card("Joker", G.jokers, nil, nil, nil, nil, "j_cry_chad")
			card:set_edition("e_negative", true, nil, true)
			card.ability.cry_absolute = true
			card:add_to_deck()
			G.jokers:emplace(card)
		end
	end,
	crp_credits = {
		idea = { "N/A" },
		art = { "Lexi" },
		code = { "Lexi" }
	},
}

SMODS.Joker {
	key = "apple",
	config = { extra = { mult = 1, rounds_remaining = 10 } },
	rarity = 1,
	atlas =  "crp_jokers",
	pos = { x = 3, y = 4 },
	cost = 1,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.mult, card.ability.extra.rounds_remaining } }
	end,
	calculate = function(self, card, context)
		if context.joker_main or context.forcetrigger then
			return {
				mult = lenient_bignum(card.ability.extra.mult)
			}
		end
		if
			context.end_of_round
			and not context.blueprint
			and not context.individual
			and not context.repetition
			and not context.retrigger_joker
		then
			card.ability.extra.rounds_remaining = lenient_bignum(to_big(card.ability.extra.rounds_remaining) - 1)
			if
				to_big(card.ability.extra.rounds_remaining) <= to_big(0)
			then

				G.E_MANAGER:add_event(Event({
					func = function()
						play_sound("crp_eat")
						card.T.r = -0.2
						card:juice_up(0.3, 0.4)
						card.states.drag.is = true
						card.children.center.pinch.x = true
						G.E_MANAGER:add_event(Event({
							trigger = "after",
							delay = 0.3,
							blockable = false,
							func = function()
								G.jokers:remove_card(card)
								card:remove()
								card = nil
								return true
							end,
						}))
						return true
					end,
				}))
				return {
					message = localize("k_eaten"),
					colour = G.C.FILTER,
				}
			end
		end
	end,
	crp_credits = {
		idea = { "N/A" },
		art = { "Lexi" },
		code = { "Lexi" }
	}
}

SMODS.Joker {
	key = "water_bottle",
	config =
		{ extra = { splash = 5 } },
		{ immutable = { max_spawn = 100 } }, -- idk how to fix it lol
	rarity = 2,
	atlas = "crp_jokers",
	pos = { x = 1, y = 4 },
	cost = 7,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { lenient_bignum(card.ability.extra.splash) } }
	end,
	calculate = function(self, card, context)
		if context.selling_self or context.forcetrigger then
			for i = 1, math.floor(lenient_bignum(card.ability.extra.splash)) do
				local card = create_card("Joker", G.jokers, nil, nil, nil, nil, "j_splash")
				card:add_to_deck()
				G.jokers:emplace(card)
			end
		end
	end,
	crp_credits = {
		idea = { "Glitchkat10" },
		code = { "Lexi" }
	}
}

SMODS.Joker {
	key = "playerrkillerr",
	config = { extra = {  } },
	rarity = 3,
	atlas = "crp_jokers",
	pos = { x = 4, y = 1 },
	cost = 9,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		info_queue[#info_queue + 1] = G.P_CENTERS.c_black_hole
		info_queue[#info_queue + 1] = G.P_CENTERS.j_cry_googol_play
		info_queue[#info_queue + 1] = G.P_CENTERS.p_arcana_normal_1
		info_queue[#info_queue + 1] = G.P_CENTERS.p_celestial_normal_1
		info_queue[#info_queue + 1] = G.P_CENTERS.p_spectral_normal_1
		return { vars = { card.ability.extra.a_mult, '{', '}' } }
	end,
	calculate = function(self, card, context)
		if context.joker_main or context.forcetrigger then
			return {
				mult = 284
			}
		end
	end,
	crp_credits = {
		idea = { "Glitchkat10" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
    key = "purist_jolly_joker",
    config = { extra = { a_mult = 15 } },
    rarity = 1,
    atlas = "crp_jokers",
    pos = { x = 5, y = 3 },
    cost = 4,
    blueprint_compat = true,
    loc_vars = function(self, info_queue, card)
        return { vars = { lenient_bignum(card.ability.extra.a_mult) } }
    end,
    calculate = function(self, card, context)
        if context.joker_main and context.scoring_name == "Pair" then
            return {
                mult = lenient_bignum(card.ability.extra.a_mult)
            }
        end
        if context.forcetrigger then
            return {
                mult = lenient_bignum(card.ability.extra.a_mult)
            }
        end
    end,
    crp_credits = {
        idea = { "Poker The Poker" },
        art = { "Glitchkat10" },
        code = { "Glitchkat10" }
    }
}

SMODS.Joker {
	key = "big_joker",
	config = { extra = { a_mult = 15 } },
	rarity = 1,
	atlas = "crp_jokers",
	pos = { x = 7, y = 2 },
	display_size = { w = 2 * 71, h = 2 * 95 },
	cost = 6,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.a_mult } }
	end,
	calculate = function(self, card, context)
		if context.joker_main or context.forcetrigger then
			return {
				mult = card.ability.extra.a_mult
			}
		end
	end,
	crp_credits = {
		idea = { "N/A" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = "bulgoe_prize",
	config = {},
	rarity = 1,
	atlas =  "crp_jokers",
	pos = { x = 4, y = 4 },
	cost = 3,
	blueprint_compat = true,
	demicoloncompat = true,
	loc_vars = function(self, info_queue, center)
		return { vars = {} }
	end,
	calculate = function(self, card, context)
		if context.skipping_booster or context.forcetrigger then
			local card = create_card("Joker", G.jokers, nil, nil, nil, nil, "j_crp_bulgoe") -- creates the card in question but puts it in the middle of the screen where it does nothing
			card:add_to_deck() -- puts the card you just created in the metaphorical "deck" of all cards you currently have, consumables and jokers included
			card:start_materialize() -- plays the particle animation when jokers spawn in
			G.jokers:emplace(card) -- puts the card you created in specifically your joker tray so Balatro knows what to do when it gets there
			card:juice_up(0.3, 0.4) -- plays the particle animation when jokers spawn in
			return {
				message = localize("k_bulgoe_spawn"),
				colour = G.C.CHIPS,
			}
		end
	end,
	crp_credits = {
		idea = { "N/A" },
		art = { "Lexi" },
		code = { "Lexi" }
	}
}

SMODS.Joker {
	key = "chip",
	config = { extra = {  } },
	rarity = 1,
	atlas = "crp_jokers",
	pos = { x = 0, y = 4 },
	cost = 1,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = {  } }
	end,
	calculate = function(self, card, context)
		if context.joker_main or context.forcetrigger then
			return {
				chips = 1
			}
		end
	end,
	crp_credits = {
		idea = { "UTnerd24" },
		art = { "Lexi", "Glitchkat10" },
		code = { "Lexi" }
	}
}

SMODS.Joker {
	key = "centipede",
	config = { extra = { a_chips = 100 } },
	rarity = 2,
	atlas = "crp_jokers",
	pos = { x = 7, y = 3 },
	cost = 6,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.a_chips } }
	end,
	calculate = function(self, card, context)
		if context.joker_main then
			if #context.full_hand == 1 or context.forcetrigger then
				return {
					chips = card.ability.extra.a_chips
				}
			end
		end
	end,
	crp_credits = {
		idea = { "Poker The Poker" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = "decipede",
	config = { extra = { a_chips = 10 } },
	rarity = 1,
	atlas = "crp_jokers",
	pos = { x = 8, y = 3 },
	cost = 1,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.a_chips } }
	end,
	calculate = function(self, card, context)
		if context.joker_main then
			if #context.full_hand == 1 or context.forcetrigger then
				return {
					chips = card.ability.extra.a_chips
				}
			end
		end
	end,
	crp_credits = {
		idea = { "Glitchkat10" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = "pentation_peter",
	config = { extra = { eee_mult = 1.1 } },
	rarity = "crp_mythic",
	atlas = "crp_jokers",
	pos = { x = 1, y = 5 },
	soul_pos = { x = 3, y = 5, extra = { x = 2, y = 5 } },
	cost = 100,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.eee_mult } }
	end,
	calculate = function(self, card, context)
		if context.joker_main or context.forcetrigger then
			return {
				message = '^^^' .. card.ability.extra.eee_mult .. ' Mult',
				EEEmult_mod = card.ability.extra.eee_mult,
				colour = G.C.EDITION,
				card = card
			}
		end
	end,
	crp_credits = {
		idea = { "Glitchkat10" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = "iterum_2",
	config = {
		extra = {
			e_mult = 2,
			repetitions = 10
		},
		immutable = {
			max_repetitions = 400
		},
	},
	rarity = "crp_mythic",
	atlas = "crp_jokers",
	pos = { x = 4, y = 5 },
	soul_pos = { x = 6, y = 5, extra = { x = 5, y = 5 } },
	cost = 100,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { number_format(card.ability.extra.e_mult), math.min(card.ability.immutable.max_repetitions, card.ability.extra.repetitions), card.ability.immutable.max_repetitions } }
	end,
	calculate = function(self, card, context)
		if context.repetition then
			if context.cardarea == G.play then
				return {
					message = localize("k_again_ex"),
					repetitions = to_number(
						math.min(card.ability.immutable.max_repetitions, card.ability.extra.repetitions)
					),
					card = card,
				}
			end
		elseif context.individual then
			if context.cardarea == G.play then
				return {
					message = localize({
						type = "variable",
						key = "a_powmult",
						vars = {
							number_format(card.ability.extra.e_mult),
						},
					}),
					Emult_mod = card.ability.extra.e_mult,
					colour = G.C.DARK_EDITION,
				}
			end
		end
		if context.forcetrigger then
			return {
				e_mult = card.ability.extra.e_mult,
				colour = G.C.DARK_EDITION,
				card = card,
			}
		end
	end,
	crp_credits = {
		idea = { "MarioFan597" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = "underflow",
	config = { extra = { a_mult = 1, mult_mod = 1 } },
	rarity = "crp_mythic",
	atlas = "crp_jokers",
	pos = { x = 7, y = 5 },
	soul_pos = { x = 0, y = 6, extra = { x = 8, y = 5 } },
	cost = 100,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { lenient_bignum(card.ability.extra.a_mult), lenient_bignum(card.ability.extra.mult_mod) } }
	end,
	calculate = function(self, card, context)
		if (context.joker_main or context.forcetrigger) and card.ability.extra.a_mult ~= 0 then
			return {
				mult = card.ability.extra.a_mult
			}
		end
		if context.end_of_round and not context.blueprint and not context.individual and not context.repetition and not context.retrigger_joker and not context.forcetrigger then
			if card.ability.extra.a_mult > -1 then
				card.ability.extra.a_mult = lenient_bignum(card.ability.extra.a_mult) - card.ability.extra.mult_mod
			end
			if card.ability.extra.a_mult <= -1 then
				card.ability.extra.a_mult = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
			end -- the number above is the max value of a double in lua, which is ~1.7976931348623157e308. this number is usually referred to as "naneinf" in balatro. attempting to use the operation (2^1024) - 1 momentarily results in a number too big for lua to process, so i have to use this long-winded integer instead.
		end
	end,
	crp_credits = {
		idea = { "MarioFan597", "Glitchkat10" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = "statically_charged",
	config = { extra = {  } },
	rarity = "crp_exomythic",
	atlas = "crp_jokers",
	pos = { x = 1, y = 6 },
	soul_pos = { x = 3, y = 6, extra = { x = 2, y = 6 } },
	cost = 200,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		info_queue[#info_queue + 1] = G.P_CENTERS.e_crp_overloaded
		return { vars = {  } }
	end,
	add_to_deck = function(self, card, from_debuff)
		if G.GAME.modifiers.cry_force_edition and not G.GAME.modifiers.cry_force_edition_from_deck then
			G.GAME.modifiers.cry_force_edition_from_deck = G.GAME.modifiers.cry_force_edition
		elseif not G.GAME.modifiers.cry_force_edition_from_deck then
			G.GAME.modifiers.cry_force_edition = "crp_overloaded"
		end
	end,
	remove_from_deck = function(self, card, from_debuff)
		if G.GAME.modifiers.cry_force_edition_from_deck ~= "Nope!" then
			G.GAME.modifiers.cry_force_edition = G.GAME.modifiers.cry_force_edition_from_deck
		else
			G.GAME.modifiers.cry_force_edition = nil
		end
	end,
	crp_credits = {
		idea = { "Glitchkat10" },
		code = { "Glitchkat10" }
	}
}
----------------------------------------------
------------MOD CODE END----------------------
