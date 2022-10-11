/* IKEv2 state machine, for libreswan
 *
 * Copyright (C) 2019 Andrew Cagney
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.  See <https://www.gnu.org/licenses/gpl2.txt>.
 *
 * This program is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
 * for more details.
 *
 */

#ifndef IKEV2_STATE_H
#define IKEV2_STATE_H

extern struct finite_state v2_states[STATE_IKEv2_ROOF - STATE_IKEv2_FLOOR];

enum smf2_flags {
	/*
	 * Should whack be released?
	 */
	SMF2_RELEASE_WHACK = LELEM(10),
};

bool sniff_v2_state_transition(struct logger *logger, const struct finite_state *state, struct msg_digest *md);

const struct v2_state_transition *find_v2_state_transition(struct logger *logger,
							   const struct finite_state *state,
							   struct msg_digest *md,
							   bool *secured_payload_failed);

#endif
