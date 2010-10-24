#define _ATMEGA32

#define _SPMCR SPMCR

/* ATmega32 specific adjustments */
#define USART0_UDRE_vect USART_UDRE_vect
#define USART0_RX_vect USART_RXC_vect
#define USART0_TX_vect USART_TXC_vect
#define UPE PE /* parity error */
#define _IVREG MCUCR
#define _EIMSK GICR
#define _EICRA MCUCR

/* Timer0 - ASK Sense */
#define _TCCR0_PRESCALE TCCR0
#define _VECTOR_OVERFLOW0 TIMER0_OVF_vect
#define _TIMSK_TIMER0 TIMSK
#define _OUTPUT_COMPARE_IE0 OCIE0
#define _OUTPUT_COMPARE_REG0 OCR0
#define _VECTOR_OUTPUT_COMPARE0 TIMER0_COMP_vect
#define _VECTOR_OVERFLOW0 TIMER0_OVF_vect
#define _TIFR_TIMER0 TIFR0
#define _CS00 CS00
#define _CS01 CS01
#define _CS02 CS02
#define _COM00 COM00
#define _COM01 COM01
#define _WGM00 WGM00
#define _WGM01 WGM01
#define _TCNT0 TCNT0

/* Timer1 - Ticks */
#define _TIMSK_TIMER1 TIMSK

/* Timer2 - Stella */
#define _TCCR2_PRESCALE TCCR2
#define _OUTPUT_COMPARE_IE2 OCIE2
#define _OUTPUT_COMPARE_REG2 OCR2
#define _VECTOR_OUTPUT_COMPARE2 TIMER2_COMP_vect
#define _VECTOR_OVERFLOW2 TIMER2_OVF_vect
#define _TIMSK_TIMER2 TIMSK
#define _TIFR_TIMER2 TIFR
#define TCR2BUB TCR2UB
#define _CS20 CS20
#define _CS21 CS21
#define _CS22 CS22
#define _COM20 COM20
#define _COM21 COM21
#define _WGM20 WGM20
#define _WGM21 WGM21
#define _TCNT2 TCNT2

/* Timer2 - PWM Melody */
#define _PWM_MELODY_COMP TIMER2_COMP_vect
#define _PWM_MELODY_OCR OCR2
#define _PWM_MELODY_TRCCRA TCCR2
#define _PWM_MELODY_TRCCRB TCCR2
#define _PWM_MELODY_COM1 COM21
#define _PWM_MELODY_COM0 COM20
#define _PWM_MELODY_WGM0 WGM20
#define _PWM_MELODY_CS0 CS20
#define _PWM_MELODY_TIMSK TIMSK
#define _PWM_MELODY_OCIE OCIE2


/* workaround for avr-libc devs not being able to decide how these registers
 * should be named... */
#ifdef SPCR0
    #define _SPCR0 SPCR0
#else
    #define _SPCR0 SPCR
#endif

#ifdef SPE0
    #define _SPE0 SPE0
#else
    #define _SPE0 SPE
#endif

#ifdef MSTR0
    #define _MSTR0 MSTR0
#else
    #define _MSTR0 MSTR
#endif

#ifdef SPSR0
    #define _SPSR0 SPSR0
#else
    #define _SPSR0 SPSR
#endif

#ifdef SPIF0
    #define _SPIF0 SPIF0
#else
    #define _SPIF0 SPIF
#endif

#ifdef SPDR0
    #define _SPDR0 SPDR0
#else
    #define _SPDR0 SPDR
#endif

#ifdef SPI2X0
    #define _SPI2X0 SPI2X0
#else
    #define _SPI2X0 SPI2X
#endif

#define _TIFR_TIMER1 TIFR

