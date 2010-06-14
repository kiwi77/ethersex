/*
 * hd44780 driver library
 *
 * (c) by Alexander Neumann <alexander@bumpern.de>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License (either version 2 or
 * version 3) as published by the Free Software Foundation.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
 *
 * For more information on the GPL, please go to:
 * http://www.gnu.org/copyleft/gpl.html
 */

#ifndef _HD44780_H
#define _HD44780_H

#include <stdio.h>
#include "config.h"

#ifdef HD44780_SUPPORT

#define HD44780_ORIGINAL 1
#define HD44780_DISPTECH 2
#define HD44780_KS0067B  3
#define HD44780_KS0066U  4

#define HD44780_DIREKT 16
#define HD44780_SERLCD 17
#define HD44780_I2CSUPPORT 18

/* lcd stream */
extern FILE *lcd;

#define clock_write() clock_rw(0)
#define clock_read() clock_rw(1)

#define noinline __attribute__((noinline))

/* prototypes */
void hd44780_init(void);
void hd44780_config(uint8_t cursor, uint8_t blink);
void hd44780_define_char(uint8_t n_char, uint8_t *data);
void hd44780_backlight(uint8_t state);
void noinline hd44780_clear(void);
void noinline hd44780_home(void);
void noinline hd44780_goto(uint8_t line, uint8_t pos);
void noinline hd44780_shift(uint8_t right);
int noinline hd44780_put(char d, FILE *stream);
void noinline hd44780_hw_init(void);
uint8_t noinline clock_rw(uint8_t read);
void noinline output_nibble(uint8_t rs, uint8_t nibble);
#ifdef HD44780_READBACK
uint8_t noinline input_nibble(uint8_t rs);
#endif

#endif /* HD44780_SUPPORT */

#endif /* _HD44780_H */
