;Irfan Danish [CIIT/FA15-BEL-012/ISB]
;Hammad Munir [CIIT/FA15-BEL-034/ISB]
;Bilal Naeem [CIIT/FA15-BEL-007/ISB]

;Smester Project : Electronics-I [EEE231]
;Water Level Controller of Overhead Tanks Using Water Level Sense.


00000000 <__vectors>:
       0:       0c 94 63 00     jmp     0xc6    ; 0xc6 <__ctors_end>
       4:       0c 94 8b 00     jmp     0x116   ; 0x116 <__bad_interrupt>
       8:       0c 94 8b 00     jmp     0x116   ; 0x116 <__bad_interrupt>
       c:       0c 94 8b 00     jmp     0x116   ; 0x116 <__bad_interrupt>
      10:       0c 94 8b 00     jmp     0x116   ; 0x116 <__bad_interrupt>
      14:       0c 94 8b 00     jmp     0x116   ; 0x116 <__bad_interrupt>
      18:       0c 94 8b 00     jmp     0x116   ; 0x116 <__bad_interrupt>
      1c:       0c 94 74 04     jmp     0x8e8   ; 0x8e8 <__vector_7>
      20:       0c 94 8b 00     jmp     0x116   ; 0x116 <__bad_interrupt>
      24:       0c 94 8b 00     jmp     0x116   ; 0x116 <__bad_interrupt>
      28:       0c 94 8b 00     jmp     0x116   ; 0x116 <__bad_interrupt>
      2c:       0c 94 8b 00     jmp     0x116   ; 0x116 <__bad_interrupt>
      30:       0c 94 8b 00     jmp     0x116   ; 0x116 <__bad_interrupt>
      34:       0c 94 8b 00     jmp     0x116   ; 0x116 <__bad_interrupt>
      38:       0c 94 8b 00     jmp     0x116   ; 0x116 <__bad_interrupt>
      3c:       0c 94 8b 00     jmp     0x116   ; 0x116 <__bad_interrupt>
      40:       0c 94 28 05     jmp     0xa50   ; 0xa50 <__vector_16>
      44:       0c 94 8b 00     jmp     0x116   ; 0x116 <__bad_interrupt>
      48:       0c 94 f6 04     jmp     0x9ec   ; 0x9ec <__vector_18>
      4c:       0c 94 d0 04     jmp     0x9a0   ; 0x9a0 <__vector_19>
      50:       0c 94 8b 00     jmp     0x116   ; 0x116 <__bad_interrupt>
      54:       0c 94 8b 00     jmp     0x116   ; 0x116 <__bad_interrupt>
      58:       0c 94 8b 00     jmp     0x116   ; 0x116 <__bad_interrupt>
      5c:       0c 94 8b 00     jmp     0x116   ; 0x116 <__bad_interrupt>
      60:       0c 94 8b 00     jmp     0x116   ; 0x116 <__bad_interrupt>
      64:       0c 94 8b 00     jmp     0x116   ; 0x116 <__bad_interrupt>

00000068 <__trampolines_end>:
      68:       00 00           nop
      6a:       00 00           nop
      6c:       24 00           .word   0x0024  ; ????
      6e:       27 00           .word   0x0027  ; ????
      70:       2a 00           .word   0x002a  ; ????

00000072 <digital_pin_to_timer_PGM>:
      72:       00 00 00 08 00 02 01 00 00 03 04 07 00 00 00 00     ................
      82:       00 00 00 00                                         ....

00000086 <port_to_input_PGM>:
      86:       00 00 00 00 23 00 26 00 29 00                       ....#.&.).

00000090 <digital_pin_to_bit_mask_PGM>:
      90:       01 02 04 08 10 20 40 80 01 02 04 08 10 20 01 02     ..... @...... ..
      a0:       04 08 10 20                                         ...

000000a4 <port_to_output_PGM>:
      a4:       00 00 00 00 25 00 28 00 2b 00                       ....%.(.+.

000000ae <digital_pin_to_port_PGM>:
      ae:       04 04 04 04 04 04 04 04 02 02 02 02 02 02 03 03     ................
      be:       03 03 03 03                                         ....

000000c2 <tone_pin_to_timer_PGM>:
      c2:       02 00                                               ..

000000c4 <__ctors_start>:
      c4:       b7 05           cpc     r27, r7

000000c6 <__ctors_end>:
      c6:       11 24           eor     r1, r1
      c8:       1f be           out     0x3f, r1        ; 63
      ca:       cf ef           ldi     r28, 0xFF       ; 255
      cc:       d8 e0           ldi     r29, 0x08       ; 8
      ce:       de bf           out     0x3e, r29       ; 62
      d0:       cd bf           out     0x3d, r28       ; 61

000000d2 <__do_copy_data>:
      d2:       11 e0           ldi     r17, 0x01       ; 1
      d4:       a0 e0           ldi     r26, 0x00       ; 0
      d6:       b1 e0           ldi     r27, 0x01       ; 1
      d8:       ec e9           ldi     r30, 0x9C       ; 156
      da:       f3 e1           ldi     r31, 0x13       ; 19
      dc:       02 c0           rjmp    .+4             ; 0xe2 <__do_copy_data+0x10>
      de:       05 90           lpm     r0, Z+
      e0:       0d 92           st      X+, r0
      e2:       a0 34           cpi     r26, 0x40       ; 64
      e4:       b1 07           cpc     r27, r17
      e6:       d9 f7           brne    .-10            ; 0xde <__do_copy_data+0xc>

000000e8 <__do_clear_bss>:
      e8:       22 e0           ldi     r18, 0x02       ; 2
      ea:       a0 e4           ldi     r26, 0x40       ; 64
      ec:       b1 e0           ldi     r27, 0x01       ; 1
      ee:       01 c0           rjmp    .+2             ; 0xf2 <.do_clear_bss_start>

000000f0 <.do_clear_bss_loop>:
      f0:       1d 92           st      X+, r1

000000f2 <.do_clear_bss_start>:
      f2:       ab 31           cpi     r26, 0x1B       ; 27
      f4:       b2 07           cpc     r27, r18
      f6:       e1 f7           brne    .-8             ; 0xf0 <.do_clear_bss_loop>

000000f8 <__do_global_ctors>:
      f8:       10 e0           ldi     r17, 0x00       ; 0
      fa:       c3 e6           ldi     r28, 0x63       ; 99
      fc:       d0 e0           ldi     r29, 0x00       ; 0
      fe:       04 c0           rjmp    .+8             ; 0x108 <__do_global_ctors+0x10>
     100:       21 97           sbiw    r28, 0x01       ; 1
     102:       fe 01           movw    r30, r28
     104:       0e 94 c1 09     call    0x1382  ; 0x1382 <__tablejump2__>
     108:       c2 36           cpi     r28, 0x62       ; 98
     10a:       d1 07           cpc     r29, r17
     10c:       c9 f7           brne    .-14            ; 0x100 <__do_global_ctors+0x8>
     10e:       0e 94 01 06     call    0xc02   ; 0xc02 <main>
     112:       0c 94 cc 09     jmp     0x1398  ; 0x1398 <_exit>

00000116 <__bad_interrupt>:
     116:       0c 94 00 00     jmp     0       ; 0x0 <__vectors>

0000011a <HardwareSerial::availableForWrite()>:
     11a:       fc 01           movw    r30, r24
     11c:       53 8d           ldd     r21, Z+27       ; 0x1b
     11e:       44 8d           ldd     r20, Z+28       ; 0x1c
     120:       25 2f           mov     r18, r21
     122:       30 e0           ldi     r19, 0x00       ; 0
     124:       84 2f           mov     r24, r20
     126:       90 e0           ldi     r25, 0x00       ; 0
     128:       82 1b           sub     r24, r18
     12a:       93 0b           sbc     r25, r19
     12c:       54 17           cp      r21, r20
     12e:       10 f0           brcs    .+4             ; 0x134 <HardwareSerial::availableForWrite()+0x1a>
     130:       cf 96           adiw    r24, 0x3f       ; 63
     132:       08 95           ret
     134:       01 97           sbiw    r24, 0x01       ; 1
     136:       08 95           ret

00000138 <HardwareSerial::read()>:
     138:       fc 01           movw    r30, r24
     13a:       91 8d           ldd     r25, Z+25       ; 0x19
     13c:       82 8d           ldd     r24, Z+26       ; 0x1a
     13e:       98 17           cp      r25, r24
     140:       61 f0           breq    .+24            ; 0x15a <HardwareSerial::read()+0x22>
     142:       82 8d           ldd     r24, Z+26       ; 0x1a
     144:       df 01           movw    r26, r30
     146:       a8 0f           add     r26, r24
     148:       b1 1d           adc     r27, r1
     14a:       5d 96           adiw    r26, 0x1d       ; 29
     14c:       8c 91           ld      r24, X
     14e:       92 8d           ldd     r25, Z+26       ; 0x1a
     150:       9f 5f           subi    r25, 0xFF       ; 255
     152:       9f 73           andi    r25, 0x3F       ; 63
     154:       92 8f           std     Z+26, r25       ; 0x1a
     156:       90 e0           ldi     r25, 0x00       ; 0
     158:       08 95           ret
     15a:       8f ef           ldi     r24, 0xFF       ; 255
     15c:       9f ef           ldi     r25, 0xFF       ; 255
     15e:       08 95           ret

00000160 <HardwareSerial::peek()>:
     160:       fc 01           movw    r30, r24
     162:       91 8d           ldd     r25, Z+25       ; 0x19
     164:       82 8d           ldd     r24, Z+26       ; 0x1a
     166:       98 17           cp      r25, r24
     168:       31 f0           breq    .+12            ; 0x176 <HardwareSerial::peek()+0x16>
     16a:       82 8d           ldd     r24, Z+26       ; 0x1a
     16c:       e8 0f           add     r30, r24
     16e:       f1 1d           adc     r31, r1
     170:       85 8d           ldd     r24, Z+29       ; 0x1d
     172:       90 e0           ldi     r25, 0x00       ; 0
     174:       08 95           ret
     176:       8f ef           ldi     r24, 0xFF       ; 255
     178:       9f ef           ldi     r25, 0xFF       ; 255
     17a:       08 95           ret

0000017c <HardwareSerial::available()>:
     17c:       fc 01           movw    r30, r24
     17e:       91 8d           ldd     r25, Z+25       ; 0x19
     180:       22 8d           ldd     r18, Z+26       ; 0x1a
     182:       89 2f           mov     r24, r25
     184:       90 e0           ldi     r25, 0x00       ; 0
     186:       80 5c           subi    r24, 0xC0       ; 192
     188:       9f 4f           sbci    r25, 0xFF       ; 255
     18a:       82 1b           sub     r24, r18
     18c:       91 09           sbc     r25, r1
     18e:       8f 73           andi    r24, 0x3F       ; 63
     190:       99 27           eor     r25, r25
     192:       08 95           ret

00000194 <HardwareSerial::_tx_udr_empty_irq()>:
     194:       fc 01           movw    r30, r24
     196:       84 8d           ldd     r24, Z+28       ; 0x1c
     198:       df 01           movw    r26, r30
     19a:       a8 0f           add     r26, r24
     19c:       b1 1d           adc     r27, r1
     19e:       a3 5a           subi    r26, 0xA3       ; 163
     1a0:       bf 4f           sbci    r27, 0xFF       ; 255
     1a2:       2c 91           ld      r18, X
     1a4:       84 8d           ldd     r24, Z+28       ; 0x1c
     1a6:       90 e0           ldi     r25, 0x00       ; 0
     1a8:       01 96           adiw    r24, 0x01       ; 1
     1aa:       8f 73           andi    r24, 0x3F       ; 63
     1ac:       99 27           eor     r25, r25
     1ae:       84 8f           std     Z+28, r24       ; 0x1c
     1b0:       a6 89           ldd     r26, Z+22       ; 0x16
     1b2:       b7 89           ldd     r27, Z+23       ; 0x17
     1b4:       2c 93           st      X, r18
     1b6:       a0 89           ldd     r26, Z+16       ; 0x10
     1b8:       b1 89           ldd     r27, Z+17       ; 0x11
     1ba:       8c 91           ld      r24, X
     1bc:       80 64           ori     r24, 0x40       ; 64
     1be:       8c 93           st      X, r24
     1c0:       93 8d           ldd     r25, Z+27       ; 0x1b
     1c2:       84 8d           ldd     r24, Z+28       ; 0x1c
     1c4:       98 13           cpse    r25, r24
     1c6:       06 c0           rjmp    .+12            ; 0x1d4 <HardwareSerial::_tx_udr_empty_irq()+0x40>
     1c8:       02 88           ldd     r0, Z+18        ; 0x12
     1ca:       f3 89           ldd     r31, Z+19       ; 0x13
     1cc:       e0 2d           mov     r30, r0
     1ce:       80 81           ld      r24, Z
     1d0:       8f 7d           andi    r24, 0xDF       ; 223
     1d2:       80 83           st      Z, r24
     1d4:       08 95           ret

000001d6 <HardwareSerial::write(unsigned char)>:
     1d6:       ef 92           push    r14
     1d8:       ff 92           push    r15
     1da:       0f 93           push    r16
     1dc:       1f 93           push    r17
     1de:       cf 93           push    r28
     1e0:       df 93           push    r29
     1e2:       ec 01           movw    r28, r24
     1e4:       81 e0           ldi     r24, 0x01       ; 1
     1e6:       88 8f           std     Y+24, r24       ; 0x18
     1e8:       9b 8d           ldd     r25, Y+27       ; 0x1b
     1ea:       8c 8d           ldd     r24, Y+28       ; 0x1c
     1ec:       98 13           cpse    r25, r24
     1ee:       05 c0           rjmp    .+10            ; 0x1fa <HardwareSerial::write(unsigned char)+0x24>
     1f0:       e8 89           ldd     r30, Y+16       ; 0x10
     1f2:       f9 89           ldd     r31, Y+17       ; 0x11
     1f4:       80 81           ld      r24, Z
     1f6:       85 fd           sbrc    r24, 5
     1f8:       24 c0           rjmp    .+72            ; 0x242 <HardwareSerial::write(unsigned char)+0x6c>
     1fa:       f6 2e           mov     r15, r22
     1fc:       0b 8d           ldd     r16, Y+27       ; 0x1b
     1fe:       10 e0           ldi     r17, 0x00       ; 0
     200:       0f 5f           subi    r16, 0xFF       ; 255
     202:       1f 4f           sbci    r17, 0xFF       ; 255
     204:       0f 73           andi    r16, 0x3F       ; 63
     206:       11 27           eor     r17, r17
     208:       e0 2e           mov     r14, r16
     20a:       8c 8d           ldd     r24, Y+28       ; 0x1c
     20c:       e8 12           cpse    r14, r24
     20e:       0c c0           rjmp    .+24            ; 0x228 <HardwareSerial::write(unsigned char)+0x52>
     210:       0f b6           in      r0, 0x3f        ; 63
     212:       07 fc           sbrc    r0, 7
     214:       fa cf           rjmp    .-12            ; 0x20a <HardwareSerial::write(unsigned char)+0x34>
     216:       e8 89           ldd     r30, Y+16       ; 0x10
     218:       f9 89           ldd     r31, Y+17       ; 0x11
     21a:       80 81           ld      r24, Z
     21c:       85 ff           sbrs    r24, 5
     21e:       f5 cf           rjmp    .-22            ; 0x20a <HardwareSerial::write(unsigned char)+0x34>
     220:       ce 01           movw    r24, r28
     222:       0e 94 ca 00     call    0x194   ; 0x194 <HardwareSerial::_tx_udr_empty_irq()>
     226:       f1 cf           rjmp    .-30            ; 0x20a <HardwareSerial::write(unsigned char)+0x34>
     228:       8b 8d           ldd     r24, Y+27       ; 0x1b
     22a:       fe 01           movw    r30, r28
     22c:       e8 0f           add     r30, r24
     22e:       f1 1d           adc     r31, r1
     230:       e3 5a           subi    r30, 0xA3       ; 163
     232:       ff 4f           sbci    r31, 0xFF       ; 255
     234:       f0 82           st      Z, r15
     236:       0b 8f           std     Y+27, r16       ; 0x1b
     238:       ea 89           ldd     r30, Y+18       ; 0x12
     23a:       fb 89           ldd     r31, Y+19       ; 0x13
     23c:       80 81           ld      r24, Z
     23e:       80 62           ori     r24, 0x20       ; 32
     240:       07 c0           rjmp    .+14            ; 0x250 <HardwareSerial::write(unsigned char)+0x7a>
     242:       ee 89           ldd     r30, Y+22       ; 0x16
     244:       ff 89           ldd     r31, Y+23       ; 0x17
     246:       60 83           st      Z, r22
     248:       e8 89           ldd     r30, Y+16       ; 0x10
     24a:       f9 89           ldd     r31, Y+17       ; 0x11
     24c:       80 81           ld      r24, Z
     24e:       80 64           ori     r24, 0x40       ; 64
     250:       80 83           st      Z, r24
     252:       81 e0           ldi     r24, 0x01       ; 1
     254:       90 e0           ldi     r25, 0x00       ; 0
     256:       df 91           pop     r29
     258:       cf 91           pop     r28
     25a:       1f 91           pop     r17
     25c:       0f 91           pop     r16
     25e:       ff 90           pop     r15
     260:       ef 90           pop     r14
     262:       08 95           ret

00000264 <HardwareSerial::flush()>:
     264:       cf 93           push    r28
     266:       df 93           push    r29
     268:       ec 01           movw    r28, r24
     26a:       88 8d           ldd     r24, Y+24       ; 0x18
     26c:       88 23           and     r24, r24
     26e:       c9 f0           breq    .+50            ; 0x2a2 <HardwareSerial::flush()+0x3e>
     270:       ea 89           ldd     r30, Y+18       ; 0x12
     272:       fb 89           ldd     r31, Y+19       ; 0x13
     274:       80 81           ld      r24, Z
     276:       85 fd           sbrc    r24, 5
     278:       05 c0           rjmp    .+10            ; 0x284 <HardwareSerial::flush()+0x20>
     27a:       a8 89           ldd     r26, Y+16       ; 0x10
     27c:       b9 89           ldd     r27, Y+17       ; 0x11
     27e:       8c 91           ld      r24, X
     280:       86 fd           sbrc    r24, 6
     282:       0f c0           rjmp    .+30            ; 0x2a2 <HardwareSerial::flush()+0x3e>
     284:       0f b6           in      r0, 0x3f        ; 63
     286:       07 fc           sbrc    r0, 7
     288:       f5 cf           rjmp    .-22            ; 0x274 <HardwareSerial::flush()+0x10>
     28a:       80 81           ld      r24, Z
     28c:       85 ff           sbrs    r24, 5
     28e:       f2 cf           rjmp    .-28            ; 0x274 <HardwareSerial::flush()+0x10>
     290:       a8 89           ldd     r26, Y+16       ; 0x10
     292:       b9 89           ldd     r27, Y+17       ; 0x11
     294:       8c 91           ld      r24, X
     296:       85 ff           sbrs    r24, 5
     298:       ed cf           rjmp    .-38            ; 0x274 <HardwareSerial::flush()+0x10>
     29a:       ce 01           movw    r24, r28
     29c:       0e 94 ca 00     call    0x194   ; 0x194 <HardwareSerial::_tx_udr_empty_irq()>
     2a0:       e7 cf           rjmp    .-50            ; 0x270 <HardwareSerial::flush()+0xc>
     2a2:       df 91           pop     r29
     2a4:       cf 91           pop     r28
     2a6:       08 95           ret

000002a8 <Serial0_available()>:
     2a8:       86 e6           ldi     r24, 0x66       ; 102
     2aa:       91 e0           ldi     r25, 0x01       ; 1
     2ac:       0e 94 be 00     call    0x17c   ; 0x17c <HardwareSerial::available()>
     2b0:       21 e0           ldi     r18, 0x01       ; 1
     2b2:       89 2b           or      r24, r25
     2b4:       09 f4           brne    .+2             ; 0x2b8 <Serial0_available()+0x10>
     2b6:       20 e0           ldi     r18, 0x00       ; 0
     2b8:       82 2f           mov     r24, r18
     2ba:       08 95           ret

000002bc <serialEventRun()>:
     2bc:       80 e0           ldi     r24, 0x00       ; 0
     2be:       90 e0           ldi     r25, 0x00       ; 0
     2c0:       89 2b           or      r24, r25
     2c2:       29 f0           breq    .+10            ; 0x2ce <serialEventRun()+0x12>
     2c4:       0e 94 54 01     call    0x2a8   ; 0x2a8 <Serial0_available()>
     2c8:       81 11           cpse    r24, r1
     2ca:       0c 94 00 00     jmp     0       ; 0x0 <__vectors>
     2ce:       08 95           ret

000002d0 <Print::write(unsigned char const*, unsigned int)>:
     2d0:       cf 92           push    r12
     2d2:       df 92           push    r13
     2d4:       ef 92           push    r14
     2d6:       ff 92           push    r15
     2d8:       0f 93           push    r16
     2da:       1f 93           push    r17
     2dc:       cf 93           push    r28
     2de:       df 93           push    r29
     2e0:       6c 01           movw    r12, r24
     2e2:       7a 01           movw    r14, r20
     2e4:       8b 01           movw    r16, r22
     2e6:       c0 e0           ldi     r28, 0x00       ; 0
     2e8:       d0 e0           ldi     r29, 0x00       ; 0
     2ea:       ce 15           cp      r28, r14
     2ec:       df 05           cpc     r29, r15
     2ee:       89 f0           breq    .+34            ; 0x312 <Print::write(unsigned char const*, unsigned int)+0x42>
     2f0:       d8 01           movw    r26, r16
     2f2:       6d 91           ld      r22, X+
     2f4:       8d 01           movw    r16, r26
     2f6:       d6 01           movw    r26, r12
     2f8:       ed 91           ld      r30, X+
     2fa:       fc 91           ld      r31, X
     2fc:       01 90           ld      r0, Z+
     2fe:       f0 81           ld      r31, Z
     300:       e0 2d           mov     r30, r0
     302:       c6 01           movw    r24, r12
     304:       09 95           icall
     306:       89 2b           or      r24, r25
     308:       11 f4           brne    .+4             ; 0x30e <Print::write(unsigned char const*, unsigned int)+0x3e>
     30a:       7e 01           movw    r14, r28
     30c:       02 c0           rjmp    .+4             ; 0x312 <Print::write(unsigned char const*, unsigned int)+0x42>
     30e:       21 96           adiw    r28, 0x01       ; 1
     310:       ec cf           rjmp    .-40            ; 0x2ea <Print::write(unsigned char const*, unsigned int)+0x1a>
     312:       c7 01           movw    r24, r14
     314:       df 91           pop     r29
     316:       cf 91           pop     r28
     318:       1f 91           pop     r17
     31a:       0f 91           pop     r16
     31c:       ff 90           pop     r15
     31e:       ef 90           pop     r14
     320:       df 90           pop     r13
     322:       cf 90           pop     r12
     324:       08 95           ret

00000326 <digitalWrite>:
     326:       90 e0           ldi     r25, 0x00       ; 0
     328:       fc 01           movw    r30, r24
     32a:       ee 58           subi    r30, 0x8E       ; 142
     32c:       ff 4f           sbci    r31, 0xFF       ; 255
     32e:       34 91           lpm     r19, Z
     330:       fc 01           movw    r30, r24
     332:       e0 57           subi    r30, 0x70       ; 112
     334:       ff 4f           sbci    r31, 0xFF       ; 255
     336:       24 91           lpm     r18, Z
     338:       fc 01           movw    r30, r24
     33a:       e2 55           subi    r30, 0x52       ; 82
     33c:       ff 4f           sbci    r31, 0xFF       ; 255
     33e:       e4 91           lpm     r30, Z
     340:       ee 23           and     r30, r30
     342:       09 f4           brne    .+2             ; 0x346 <digitalWrite+0x20>
     344:       3b c0           rjmp    .+118           ; 0x3bc <digitalWrite+0x96>
     346:       33 23           and     r19, r19
     348:       39 f1           breq    .+78            ; 0x398 <digitalWrite+0x72>
     34a:       33 30           cpi     r19, 0x03       ; 3
     34c:       91 f0           breq    .+36            ; 0x372 <digitalWrite+0x4c>
     34e:       38 f4           brcc    .+14            ; 0x35e <digitalWrite+0x38>
     350:       31 30           cpi     r19, 0x01       ; 1
     352:       a9 f0           breq    .+42            ; 0x37e <digitalWrite+0x58>
     354:       32 30           cpi     r19, 0x02       ; 2
     356:       01 f5           brne    .+64            ; 0x398 <digitalWrite+0x72>
     358:       84 b5           in      r24, 0x24       ; 36
     35a:       8f 7d           andi    r24, 0xDF       ; 223
     35c:       12 c0           rjmp    .+36            ; 0x382 <digitalWrite+0x5c>
     35e:       37 30           cpi     r19, 0x07       ; 7
     360:       91 f0           breq    .+36            ; 0x386 <digitalWrite+0x60>
     362:       38 30           cpi     r19, 0x08       ; 8
     364:       a1 f0           breq    .+40            ; 0x38e <digitalWrite+0x68>
     366:       34 30           cpi     r19, 0x04       ; 4
     368:       b9 f4           brne    .+46            ; 0x398 <digitalWrite+0x72>
     36a:       80 91 80 00     lds     r24, 0x0080     ; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     36e:       8f 7d           andi    r24, 0xDF       ; 223
     370:       03 c0           rjmp    .+6             ; 0x378 <digitalWrite+0x52>
     372:       80 91 80 00     lds     r24, 0x0080     ; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     376:       8f 77           andi    r24, 0x7F       ; 127
     378:       80 93 80 00     sts     0x0080, r24     ; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     37c:       0d c0           rjmp    .+26            ; 0x398 <digitalWrite+0x72>
     37e:       84 b5           in      r24, 0x24       ; 36
     380:       8f 77           andi    r24, 0x7F       ; 127
     382:       84 bd           out     0x24, r24       ; 36
     384:       09 c0           rjmp    .+18            ; 0x398 <digitalWrite+0x72>
     386:       80 91 b0 00     lds     r24, 0x00B0     ; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     38a:       8f 77           andi    r24, 0x7F       ; 127
     38c:       03 c0           rjmp    .+6             ; 0x394 <digitalWrite+0x6e>
     38e:       80 91 b0 00     lds     r24, 0x00B0     ; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     392:       8f 7d           andi    r24, 0xDF       ; 223
     394:       80 93 b0 00     sts     0x00B0, r24     ; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     398:       f0 e0           ldi     r31, 0x00       ; 0
     39a:       ee 0f           add     r30, r30
     39c:       ff 1f           adc     r31, r31
     39e:       ec 55           subi    r30, 0x5C       ; 92
     3a0:       ff 4f           sbci    r31, 0xFF       ; 255
     3a2:       a5 91           lpm     r26, Z+
     3a4:       b4 91           lpm     r27, Z
     3a6:       8f b7           in      r24, 0x3f       ; 63
     3a8:       f8 94           cli
     3aa:       ec 91           ld      r30, X
     3ac:       61 11           cpse    r22, r1
     3ae:       03 c0           rjmp    .+6             ; 0x3b6 <digitalWrite+0x90>
     3b0:       20 95           com     r18
     3b2:       2e 23           and     r18, r30
     3b4:       01 c0           rjmp    .+2             ; 0x3b8 <digitalWrite+0x92>
     3b6:       2e 2b           or      r18, r30
     3b8:       2c 93           st      X, r18
     3ba:       8f bf           out     0x3f, r24       ; 63
     3bc:       08 95           ret

000003be <noTone(unsigned char)>:
     3be:       90 91 00 01     lds     r25, 0x0100     ; 0x800100 <__data_start>
     3c2:       98 13           cpse    r25, r24
     3c4:       24 c0           rjmp    .+72            ; 0x40e <__LOCK_REGION_LENGTH__+0xe>
     3c6:       e2 ec           ldi     r30, 0xC2       ; 194
     3c8:       f0 e0           ldi     r31, 0x00       ; 0
     3ca:       e4 91           lpm     r30, Z
     3cc:       9f ef           ldi     r25, 0xFF       ; 255
     3ce:       90 93 00 01     sts     0x0100, r25     ; 0x800100 <__data_start>
     3d2:       e1 30           cpi     r30, 0x01       ; 1
     3d4:       b9 f0           breq    .+46            ; 0x404 <__LOCK_REGION_LENGTH__+0x4>
     3d6:       98 f0           brcs    .+38            ; 0x3fe <noTone(unsigned char)+0x40>
     3d8:       e2 30           cpi     r30, 0x02       ; 2
     3da:       c9 f4           brne    .+50            ; 0x40e <__LOCK_REGION_LENGTH__+0xe>
     3dc:       90 91 70 00     lds     r25, 0x0070     ; 0x800070 <__TEXT_REGION_LENGTH__+0x7e0070>
     3e0:       9d 7f           andi    r25, 0xFD       ; 253
     3e2:       90 93 70 00     sts     0x0070, r25     ; 0x800070 <__TEXT_REGION_LENGTH__+0x7e0070>
     3e6:       91 e0           ldi     r25, 0x01       ; 1
     3e8:       90 93 b0 00     sts     0x00B0, r25     ; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     3ec:       90 91 b1 00     lds     r25, 0x00B1     ; 0x8000b1 <__TEXT_REGION_LENGTH__+0x7e00b1>
     3f0:       98 7f           andi    r25, 0xF8       ; 248
     3f2:       94 60           ori     r25, 0x04       ; 4
     3f4:       90 93 b1 00     sts     0x00B1, r25     ; 0x8000b1 <__TEXT_REGION_LENGTH__+0x7e00b1>
     3f8:       10 92 b3 00     sts     0x00B3, r1      ; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
     3fc:       08 c0           rjmp    .+16            ; 0x40e <__LOCK_REGION_LENGTH__+0xe>
     3fe:       10 92 6e 00     sts     0x006E, r1      ; 0x80006e <__TEXT_REGION_LENGTH__+0x7e006e>
     402:       05 c0           rjmp    .+10            ; 0x40e <__LOCK_REGION_LENGTH__+0xe>
     404:       90 91 6f 00     lds     r25, 0x006F     ; 0x80006f <__TEXT_REGION_LENGTH__+0x7e006f>
     408:       9d 7f           andi    r25, 0xFD       ; 253
     40a:       90 93 6f 00     sts     0x006F, r25     ; 0x80006f <__TEXT_REGION_LENGTH__+0x7e006f>
     40e:       60 e0           ldi     r22, 0x00       ; 0
     410:       0c 94 93 01     jmp     0x326   ; 0x326 <digitalWrite>

00000414 <pinMode>:
     414:       cf 93           push    r28
     416:       df 93           push    r29
     418:       90 e0           ldi     r25, 0x00       ; 0
     41a:       fc 01           movw    r30, r24
     41c:       e0 57           subi    r30, 0x70       ; 112
     41e:       ff 4f           sbci    r31, 0xFF       ; 255
     420:       24 91           lpm     r18, Z
     422:       fc 01           movw    r30, r24
     424:       e2 55           subi    r30, 0x52       ; 82
     426:       ff 4f           sbci    r31, 0xFF       ; 255
     428:       84 91           lpm     r24, Z
     42a:       88 23           and     r24, r24
     42c:       61 f1           breq    .+88            ; 0x486 <pinMode+0x72>
     42e:       90 e0           ldi     r25, 0x00       ; 0
     430:       88 0f           add     r24, r24
     432:       99 1f           adc     r25, r25
     434:       fc 01           movw    r30, r24
     436:       e8 59           subi    r30, 0x98       ; 152
     438:       ff 4f           sbci    r31, 0xFF       ; 255
     43a:       c5 91           lpm     r28, Z+
     43c:       d4 91           lpm     r29, Z
     43e:       fc 01           movw    r30, r24
     440:       ec 55           subi    r30, 0x5C       ; 92
     442:       ff 4f           sbci    r31, 0xFF       ; 255
     444:       a5 91           lpm     r26, Z+
     446:       b4 91           lpm     r27, Z
     448:       61 11           cpse    r22, r1
     44a:       09 c0           rjmp    .+18            ; 0x45e <pinMode+0x4a>
     44c:       9f b7           in      r25, 0x3f       ; 63
     44e:       f8 94           cli
     450:       88 81           ld      r24, Y
     452:       20 95           com     r18
     454:       82 23           and     r24, r18
     456:       88 83           st      Y, r24
     458:       ec 91           ld      r30, X
     45a:       2e 23           and     r18, r30
     45c:       0b c0           rjmp    .+22            ; 0x474 <pinMode+0x60>
     45e:       62 30           cpi     r22, 0x02       ; 2
     460:       61 f4           brne    .+24            ; 0x47a <pinMode+0x66>
     462:       9f b7           in      r25, 0x3f       ; 63
     464:       f8 94           cli
     466:       38 81           ld      r19, Y
     468:       82 2f           mov     r24, r18
     46a:       80 95           com     r24
     46c:       83 23           and     r24, r19
     46e:       88 83           st      Y, r24
     470:       ec 91           ld      r30, X
     472:       2e 2b           or      r18, r30
     474:       2c 93           st      X, r18
     476:       9f bf           out     0x3f, r25       ; 63
     478:       06 c0           rjmp    .+12            ; 0x486 <pinMode+0x72>
     47a:       8f b7           in      r24, 0x3f       ; 63
     47c:       f8 94           cli
     47e:       e8 81           ld      r30, Y
     480:       2e 2b           or      r18, r30
     482:       28 83           st      Y, r18
     484:       8f bf           out     0x3f, r24       ; 63
     486:       df 91           pop     r29
     488:       cf 91           pop     r28
     48a:       08 95           ret

0000048c <micros>:
     48c:       3f b7           in      r19, 0x3f       ; 63
     48e:       f8 94           cli
     490:       80 91 45 01     lds     r24, 0x0145     ; 0x800145 <timer0_overflow_count>
     494:       90 91 46 01     lds     r25, 0x0146     ; 0x800146 <timer0_overflow_count+0x1>
     498:       a0 91 47 01     lds     r26, 0x0147     ; 0x800147 <timer0_overflow_count+0x2>
     49c:       b0 91 48 01     lds     r27, 0x0148     ; 0x800148 <timer0_overflow_count+0x3>
     4a0:       26 b5           in      r18, 0x26       ; 38
     4a2:       a8 9b           sbis    0x15, 0 ; 21
     4a4:       05 c0           rjmp    .+10            ; 0x4b0 <micros+0x24>
     4a6:       2f 3f           cpi     r18, 0xFF       ; 255
     4a8:       19 f0           breq    .+6             ; 0x4b0 <micros+0x24>
     4aa:       01 96           adiw    r24, 0x01       ; 1
     4ac:       a1 1d           adc     r26, r1
     4ae:       b1 1d           adc     r27, r1
     4b0:       3f bf           out     0x3f, r19       ; 63
     4b2:       ba 2f           mov     r27, r26
     4b4:       a9 2f           mov     r26, r25
     4b6:       98 2f           mov     r25, r24
     4b8:       88 27           eor     r24, r24
     4ba:       82 0f           add     r24, r18
     4bc:       91 1d           adc     r25, r1
     4be:       a1 1d           adc     r26, r1
     4c0:       b1 1d           adc     r27, r1
     4c2:       bc 01           movw    r22, r24
     4c4:       cd 01           movw    r24, r26
     4c6:       42 e0           ldi     r20, 0x02       ; 2
     4c8:       66 0f           add     r22, r22
     4ca:       77 1f           adc     r23, r23
     4cc:       88 1f           adc     r24, r24
     4ce:       99 1f           adc     r25, r25
     4d0:       4a 95           dec     r20
     4d2:       d1 f7           brne    .-12            ; 0x4c8 <micros+0x3c>
     4d4:       08 95           ret

000004d6 <delay>:
     4d6:       8f 92           push    r8
     4d8:       9f 92           push    r9
     4da:       af 92           push    r10
     4dc:       bf 92           push    r11
     4de:       cf 92           push    r12
     4e0:       df 92           push    r13
     4e2:       ef 92           push    r14
     4e4:       ff 92           push    r15
     4e6:       6b 01           movw    r12, r22
     4e8:       7c 01           movw    r14, r24
     4ea:       0e 94 46 02     call    0x48c   ; 0x48c <micros>
     4ee:       4b 01           movw    r8, r22
     4f0:       5c 01           movw    r10, r24
     4f2:       c1 14           cp      r12, r1
     4f4:       d1 04           cpc     r13, r1
     4f6:       e1 04           cpc     r14, r1
     4f8:       f1 04           cpc     r15, r1
     4fa:       f1 f0           breq    .+60            ; 0x538 <delay+0x62>
     4fc:       0e 94 46 02     call    0x48c   ; 0x48c <micros>
     500:       dc 01           movw    r26, r24
     502:       cb 01           movw    r24, r22
     504:       88 19           sub     r24, r8
     506:       99 09           sbc     r25, r9
     508:       aa 09           sbc     r26, r10
     50a:       bb 09           sbc     r27, r11
     50c:       88 3e           cpi     r24, 0xE8       ; 232
     50e:       93 40           sbci    r25, 0x03       ; 3
     510:       a1 05           cpc     r26, r1
     512:       b1 05           cpc     r27, r1
     514:       70 f3           brcs    .-36            ; 0x4f2 <delay+0x1c>
     516:       21 e0           ldi     r18, 0x01       ; 1
     518:       c2 1a           sub     r12, r18
     51a:       d1 08           sbc     r13, r1
     51c:       e1 08           sbc     r14, r1
     51e:       f1 08           sbc     r15, r1
     520:       88 ee           ldi     r24, 0xE8       ; 232
     522:       88 0e           add     r8, r24
     524:       83 e0           ldi     r24, 0x03       ; 3
     526:       98 1e           adc     r9, r24
     528:       a1 1c           adc     r10, r1
     52a:       b1 1c           adc     r11, r1
     52c:       c1 14           cp      r12, r1
     52e:       d1 04           cpc     r13, r1
     530:       e1 04           cpc     r14, r1
     532:       f1 04           cpc     r15, r1
     534:       19 f7           brne    .-58            ; 0x4fc <delay+0x26>
     536:       dd cf           rjmp    .-70            ; 0x4f2 <delay+0x1c>
     538:       ff 90           pop     r15
     53a:       ef 90           pop     r14
     53c:       df 90           pop     r13
     53e:       cf 90           pop     r12
     540:       bf 90           pop     r11
     542:       af 90           pop     r10
     544:       9f 90           pop     r9
     546:       8f 90           pop     r8
     548:       08 95           ret

0000054a <LiquidCrystal::pulseEnable()>:
     54a:       cf 93           push    r28
     54c:       df 93           push    r29
     54e:       ec 01           movw    r28, r24
     550:       60 e0           ldi     r22, 0x00       ; 0
     552:       8e 81           ldd     r24, Y+6        ; 0x06
     554:       0e 94 93 01     call    0x326   ; 0x326 <digitalWrite>
     558:       61 e0           ldi     r22, 0x01       ; 1
     55a:       8e 81           ldd     r24, Y+6        ; 0x06
     55c:       0e 94 93 01     call    0x326   ; 0x326 <digitalWrite>
     560:       60 e0           ldi     r22, 0x00       ; 0
     562:       8e 81           ldd     r24, Y+6        ; 0x06
     564:       0e 94 93 01     call    0x326   ; 0x326 <digitalWrite>
     568:       8b e8           ldi     r24, 0x8B       ; 139
     56a:       91 e0           ldi     r25, 0x01       ; 1
     56c:       01 97           sbiw    r24, 0x01       ; 1
     56e:       f1 f7           brne    .-4             ; 0x56c <LiquidCrystal::pulseEnable()+0x22>
     570:       df 91           pop     r29
     572:       cf 91           pop     r28
     574:       08 95           ret

00000576 <LiquidCrystal::write4bits(unsigned char)>:
     576:       cf 92           push    r12
     578:       df 92           push    r13
     57a:       ef 92           push    r14
     57c:       ff 92           push    r15
     57e:       0f 93           push    r16
     580:       1f 93           push    r17
     582:       cf 93           push    r28
     584:       df 93           push    r29
     586:       7c 01           movw    r14, r24
     588:       6c 01           movw    r12, r24
     58a:       87 e0           ldi     r24, 0x07       ; 7
     58c:       c8 0e           add     r12, r24
     58e:       d1 1c           adc     r13, r1
     590:       c0 e0           ldi     r28, 0x00       ; 0
     592:       d0 e0           ldi     r29, 0x00       ; 0
     594:       06 2f           mov     r16, r22
     596:       10 e0           ldi     r17, 0x00       ; 0
     598:       b8 01           movw    r22, r16
     59a:       0c 2e           mov     r0, r28
     59c:       02 c0           rjmp    .+4             ; 0x5a2 <LiquidCrystal::write4bits(unsigned char)+0x2c>
     59e:       75 95           asr     r23
     5a0:       67 95           ror     r22
     5a2:       0a 94           dec     r0
     5a4:       e2 f7           brpl    .-8             ; 0x59e <LiquidCrystal::write4bits(unsigned char)+0x28>
     5a6:       61 70           andi    r22, 0x01       ; 1
     5a8:       f6 01           movw    r30, r12
     5aa:       81 91           ld      r24, Z+
     5ac:       6f 01           movw    r12, r30
     5ae:       0e 94 93 01     call    0x326   ; 0x326 <digitalWrite>
     5b2:       21 96           adiw    r28, 0x01       ; 1
     5b4:       c4 30           cpi     r28, 0x04       ; 4
     5b6:       d1 05           cpc     r29, r1
     5b8:       79 f7           brne    .-34            ; 0x598 <LiquidCrystal::write4bits(unsigned char)+0x22>
     5ba:       c7 01           movw    r24, r14
     5bc:       df 91           pop     r29
     5be:       cf 91           pop     r28
     5c0:       1f 91           pop     r17
     5c2:       0f 91           pop     r16
     5c4:       ff 90           pop     r15
     5c6:       ef 90           pop     r14
     5c8:       df 90           pop     r13
     5ca:       cf 90           pop     r12
     5cc:       0c 94 a5 02     jmp     0x54a   ; 0x54a <LiquidCrystal::pulseEnable()>

000005d0 <LiquidCrystal::send(unsigned char, unsigned char)>:
     5d0:       cf 92           push    r12
     5d2:       df 92           push    r13
     5d4:       ef 92           push    r14
     5d6:       ff 92           push    r15
     5d8:       0f 93           push    r16
     5da:       1f 93           push    r17
     5dc:       cf 93           push    r28
     5de:       df 93           push    r29
     5e0:       ec 01           movw    r28, r24
     5e2:       f6 2e           mov     r15, r22
     5e4:       64 2f           mov     r22, r20
     5e6:       8c 81           ldd     r24, Y+4        ; 0x04
     5e8:       0e 94 93 01     call    0x326   ; 0x326 <digitalWrite>
     5ec:       8d 81           ldd     r24, Y+5        ; 0x05
     5ee:       8f 3f           cpi     r24, 0xFF       ; 255
     5f0:       19 f0           breq    .+6             ; 0x5f8 <LiquidCrystal::send(unsigned char, unsigned char)+0x28>
     5f2:       60 e0           ldi     r22, 0x00       ; 0
     5f4:       0e 94 93 01     call    0x326   ; 0x326 <digitalWrite>
     5f8:       8f 85           ldd     r24, Y+15       ; 0x0f
     5fa:       0f 2d           mov     r16, r15
     5fc:       10 e0           ldi     r17, 0x00       ; 0
     5fe:       84 ff           sbrs    r24, 4
     600:       25 c0           rjmp    .+74            ; 0x64c <LiquidCrystal::send(unsigned char, unsigned char)+0x7c>
     602:       6e 01           movw    r12, r28
     604:       87 e0           ldi     r24, 0x07       ; 7
     606:       c8 0e           add     r12, r24
     608:       d1 1c           adc     r13, r1
     60a:       e1 2c           mov     r14, r1
     60c:       f1 2c           mov     r15, r1
     60e:       b8 01           movw    r22, r16
     610:       0e 2c           mov     r0, r14
     612:       02 c0           rjmp    .+4             ; 0x618 <LiquidCrystal::send(unsigned char, unsigned char)+0x48>
     614:       75 95           asr     r23
     616:       67 95           ror     r22
     618:       0a 94           dec     r0
     61a:       e2 f7           brpl    .-8             ; 0x614 <LiquidCrystal::send(unsigned char, unsigned char)+0x44>
     61c:       61 70           andi    r22, 0x01       ; 1
     61e:       f6 01           movw    r30, r12
     620:       81 91           ld      r24, Z+
     622:       6f 01           movw    r12, r30
     624:       0e 94 93 01     call    0x326   ; 0x326 <digitalWrite>
     628:       ff ef           ldi     r31, 0xFF       ; 255
     62a:       ef 1a           sub     r14, r31
     62c:       ff 0a           sbc     r15, r31
     62e:       88 e0           ldi     r24, 0x08       ; 8
     630:       e8 16           cp      r14, r24
     632:       f1 04           cpc     r15, r1
     634:       61 f7           brne    .-40            ; 0x60e <LiquidCrystal::send(unsigned char, unsigned char)+0x3e>
     636:       ce 01           movw    r24, r28
     638:       df 91           pop     r29
     63a:       cf 91           pop     r28
     63c:       1f 91           pop     r17
     63e:       0f 91           pop     r16
     640:       ff 90           pop     r15
     642:       ef 90           pop     r14
     644:       df 90           pop     r13
     646:       cf 90           pop     r12
     648:       0c 94 a5 02     jmp     0x54a   ; 0x54a <LiquidCrystal::pulseEnable()>
     64c:       b8 01           movw    r22, r16
     64e:       84 e0           ldi     r24, 0x04       ; 4
     650:       75 95           asr     r23
     652:       67 95           ror     r22
     654:       8a 95           dec     r24
     656:       e1 f7           brne    .-8             ; 0x650 <LiquidCrystal::send(unsigned char, unsigned char)+0x80>
     658:       ce 01           movw    r24, r28
     65a:       0e 94 bb 02     call    0x576   ; 0x576 <LiquidCrystal::write4bits(unsigned char)>
     65e:       6f 2d           mov     r22, r15
     660:       ce 01           movw    r24, r28
     662:       df 91           pop     r29
     664:       cf 91           pop     r28
     666:       1f 91           pop     r17
     668:       0f 91           pop     r16
     66a:       ff 90           pop     r15
     66c:       ef 90           pop     r14
     66e:       df 90           pop     r13
     670:       cf 90           pop     r12
     672:       0c 94 bb 02     jmp     0x576   ; 0x576 <LiquidCrystal::write4bits(unsigned char)>

00000676 <LiquidCrystal::write(unsigned char)>:
     676:       41 e0           ldi     r20, 0x01       ; 1
     678:       0e 94 e8 02     call    0x5d0   ; 0x5d0 <LiquidCrystal::send(unsigned char, unsigned char)>
     67c:       81 e0           ldi     r24, 0x01       ; 1
     67e:       90 e0           ldi     r25, 0x00       ; 0
     680:       08 95           ret

00000682 <LiquidCrystal::command(unsigned char)>:
     682:       40 e0           ldi     r20, 0x00       ; 0
     684:       0c 94 e8 02     jmp     0x5d0   ; 0x5d0 <LiquidCrystal::send(unsigned char, unsigned char)>

00000688 <LiquidCrystal::begin(unsigned char, unsigned char, unsigned char) [clone .constprop.13]>:
     688:       ef 92           push    r14
     68a:       ff 92           push    r15
     68c:       0f 93           push    r16
     68e:       1f 93           push    r17
     690:       cf 93           push    r28
     692:       df 93           push    r29
     694:       ec 01           movw    r28, r24
     696:       62 30           cpi     r22, 0x02       ; 2
     698:       18 f0           brcs    .+6             ; 0x6a0 <LiquidCrystal::begin(unsigned char, unsigned char, unsigned char) [clone .constprop.13]+0x18>
     69a:       8f 85           ldd     r24, Y+15       ; 0x0f
     69c:       88 60           ori     r24, 0x08       ; 8
     69e:       8f 87           std     Y+15, r24       ; 0x0f
     6a0:       6b 8b           std     Y+19, r22       ; 0x13
     6a2:       1c 8a           std     Y+20, r1        ; 0x14
     6a4:       80 e4           ldi     r24, 0x40       ; 64
     6a6:       8d 8b           std     Y+21, r24       ; 0x15
     6a8:       80 e1           ldi     r24, 0x10       ; 16
     6aa:       8e 8b           std     Y+22, r24       ; 0x16
     6ac:       80 e5           ldi     r24, 0x50       ; 80
     6ae:       8f 8b           std     Y+23, r24       ; 0x17
     6b0:       61 e0           ldi     r22, 0x01       ; 1
     6b2:       8c 81           ldd     r24, Y+4        ; 0x04
     6b4:       0e 94 0a 02     call    0x414   ; 0x414 <pinMode>
     6b8:       8d 81           ldd     r24, Y+5        ; 0x05
     6ba:       8f 3f           cpi     r24, 0xFF       ; 255
     6bc:       19 f0           breq    .+6             ; 0x6c4 <LiquidCrystal::begin(unsigned char, unsigned char, unsigned char) [clone .constprop.13]+0x3c>
     6be:       61 e0           ldi     r22, 0x01       ; 1
     6c0:       0e 94 0a 02     call    0x414   ; 0x414 <pinMode>
     6c4:       61 e0           ldi     r22, 0x01       ; 1
     6c6:       8e 81           ldd     r24, Y+6        ; 0x06
     6c8:       0e 94 0a 02     call    0x414   ; 0x414 <pinMode>
     6cc:       7e 01           movw    r14, r28
     6ce:       87 e0           ldi     r24, 0x07       ; 7
     6d0:       e8 0e           add     r14, r24
     6d2:       f1 1c           adc     r15, r1
     6d4:       00 e0           ldi     r16, 0x00       ; 0
     6d6:       10 e0           ldi     r17, 0x00       ; 0
     6d8:       8f 85           ldd     r24, Y+15       ; 0x0f
     6da:       84 fd           sbrc    r24, 4
     6dc:       03 c0           rjmp    .+6             ; 0x6e4 <LiquidCrystal::begin(unsigned char, unsigned char, unsigned char) [clone .constprop.13]+0x5c>
     6de:       84 e0           ldi     r24, 0x04       ; 4
     6e0:       90 e0           ldi     r25, 0x00       ; 0
     6e2:       02 c0           rjmp    .+4             ; 0x6e8 <LiquidCrystal::begin(unsigned char, unsigned char, unsigned char) [clone .constprop.13]+0x60>
     6e4:       88 e0           ldi     r24, 0x08       ; 8
     6e6:       90 e0           ldi     r25, 0x00       ; 0
     6e8:       08 17           cp      r16, r24
     6ea:       19 07           cpc     r17, r25
     6ec:       4c f4           brge    .+18            ; 0x700 <LiquidCrystal::begin(unsigned char, unsigned char, unsigned char) [clone .constprop.13]+0x78>
     6ee:       61 e0           ldi     r22, 0x01       ; 1
     6f0:       f7 01           movw    r30, r14
     6f2:       81 91           ld      r24, Z+
     6f4:       7f 01           movw    r14, r30
     6f6:       0e 94 0a 02     call    0x414   ; 0x414 <pinMode>
     6fa:       0f 5f           subi    r16, 0xFF       ; 255
     6fc:       1f 4f           sbci    r17, 0xFF       ; 255
     6fe:       ec cf           rjmp    .-40            ; 0x6d8 <LiquidCrystal::begin(unsigned char, unsigned char, unsigned char) [clone .constprop.13]+0x50>
     700:       8b e3           ldi     r24, 0x3B       ; 59
     702:       9d e0           ldi     r25, 0x0D       ; 13
     704:       01 97           sbiw    r24, 0x01       ; 1
     706:       f1 f7           brne    .-4             ; 0x704 <LiquidCrystal::begin(unsigned char, unsigned char, unsigned char) [clone .constprop.13]+0x7c>
     708:       60 e0           ldi     r22, 0x00       ; 0
     70a:       8c 81           ldd     r24, Y+4        ; 0x04
     70c:       0e 94 93 01     call    0x326   ; 0x326 <digitalWrite>
     710:       60 e0           ldi     r22, 0x00       ; 0
     712:       8e 81           ldd     r24, Y+6        ; 0x06
     714:       0e 94 93 01     call    0x326   ; 0x326 <digitalWrite>
     718:       8d 81           ldd     r24, Y+5        ; 0x05
     71a:       8f 3f           cpi     r24, 0xFF       ; 255
     71c:       19 f0           breq    .+6             ; 0x724 <LiquidCrystal::begin(unsigned char, unsigned char, unsigned char) [clone .constprop.13]+0x9c>
     71e:       60 e0           ldi     r22, 0x00       ; 0
     720:       0e 94 93 01     call    0x326   ; 0x326 <digitalWrite>
     724:       6f 85           ldd     r22, Y+15       ; 0x0f
     726:       64 fd           sbrc    r22, 4
     728:       1d c0           rjmp    .+58            ; 0x764 <LiquidCrystal::begin(unsigned char, unsigned char, unsigned char) [clone .constprop.13]+0xdc>
     72a:       63 e0           ldi     r22, 0x03       ; 3
     72c:       ce 01           movw    r24, r28
     72e:       0e 94 bb 02     call    0x576   ; 0x576 <LiquidCrystal::write4bits(unsigned char)>
     732:       0b e4           ldi     r16, 0x4B       ; 75
     734:       16 e4           ldi     r17, 0x46       ; 70
     736:       c8 01           movw    r24, r16
     738:       01 97           sbiw    r24, 0x01       ; 1
     73a:       f1 f7           brne    .-4             ; 0x738 <LiquidCrystal::begin(unsigned char, unsigned char, unsigned char) [clone .constprop.13]+0xb0>
     73c:       63 e0           ldi     r22, 0x03       ; 3
     73e:       ce 01           movw    r24, r28
     740:       0e 94 bb 02     call    0x576   ; 0x576 <LiquidCrystal::write4bits(unsigned char)>
     744:       c8 01           movw    r24, r16
     746:       01 97           sbiw    r24, 0x01       ; 1
     748:       f1 f7           brne    .-4             ; 0x746 <LiquidCrystal::begin(unsigned char, unsigned char, unsigned char) [clone .constprop.13]+0xbe>
     74a:       63 e0           ldi     r22, 0x03       ; 3
     74c:       ce 01           movw    r24, r28
     74e:       0e 94 bb 02     call    0x576   ; 0x576 <LiquidCrystal::write4bits(unsigned char)>
     752:       83 e5           ldi     r24, 0x53       ; 83
     754:       92 e0           ldi     r25, 0x02       ; 2
     756:       01 97           sbiw    r24, 0x01       ; 1
     758:       f1 f7           brne    .-4             ; 0x756 <LiquidCrystal::begin(unsigned char, unsigned char, unsigned char) [clone .constprop.13]+0xce>
     75a:       62 e0           ldi     r22, 0x02       ; 2
     75c:       ce 01           movw    r24, r28
     75e:       0e 94 bb 02     call    0x576   ; 0x576 <LiquidCrystal::write4bits(unsigned char)>
     762:       16 c0           rjmp    .+44            ; 0x790 <LiquidCrystal::begin(unsigned char, unsigned char, unsigned char) [clone .constprop.13]+0x108>
     764:       60 62           ori     r22, 0x20       ; 32
     766:       ce 01           movw    r24, r28
     768:       0e 94 41 03     call    0x682   ; 0x682 <LiquidCrystal::command(unsigned char)>
     76c:       8b e4           ldi     r24, 0x4B       ; 75
     76e:       96 e4           ldi     r25, 0x46       ; 70
     770:       01 97           sbiw    r24, 0x01       ; 1
     772:       f1 f7           brne    .-4             ; 0x770 <LiquidCrystal::begin(unsigned char, unsigned char, unsigned char) [clone .constprop.13]+0xe8>
     774:       6f 85           ldd     r22, Y+15       ; 0x0f
     776:       60 62           ori     r22, 0x20       ; 32
     778:       ce 01           movw    r24, r28
     77a:       0e 94 41 03     call    0x682   ; 0x682 <LiquidCrystal::command(unsigned char)>
     77e:       83 e5           ldi     r24, 0x53       ; 83
     780:       92 e0           ldi     r25, 0x02       ; 2
     782:       01 97           sbiw    r24, 0x01       ; 1
     784:       f1 f7           brne    .-4             ; 0x782 <LiquidCrystal::begin(unsigned char, unsigned char, unsigned char) [clone .constprop.13]+0xfa>
     786:       6f 85           ldd     r22, Y+15       ; 0x0f
     788:       60 62           ori     r22, 0x20       ; 32
     78a:       ce 01           movw    r24, r28
     78c:       0e 94 41 03     call    0x682   ; 0x682 <LiquidCrystal::command(unsigned char)>
     790:       6f 85           ldd     r22, Y+15       ; 0x0f
     792:       60 62           ori     r22, 0x20       ; 32
     794:       ce 01           movw    r24, r28
     796:       0e 94 41 03     call    0x682   ; 0x682 <LiquidCrystal::command(unsigned char)>
     79a:       84 e0           ldi     r24, 0x04       ; 4
     79c:       88 8b           std     Y+16, r24       ; 0x10
     79e:       6c e0           ldi     r22, 0x0C       ; 12
     7a0:       ce 01           movw    r24, r28
     7a2:       0e 94 41 03     call    0x682   ; 0x682 <LiquidCrystal::command(unsigned char)>
     7a6:       61 e0           ldi     r22, 0x01       ; 1
     7a8:       ce 01           movw    r24, r28
     7aa:       0e 94 41 03     call    0x682   ; 0x682 <LiquidCrystal::command(unsigned char)>
     7ae:       8b e3           ldi     r24, 0x3B       ; 59
     7b0:       9f e1           ldi     r25, 0x1F       ; 31
     7b2:       01 97           sbiw    r24, 0x01       ; 1
     7b4:       f1 f7           brne    .-4             ; 0x7b2 <LiquidCrystal::begin(unsigned char, unsigned char, unsigned char) [clone .constprop.13]+0x12a>
     7b6:       82 e0           ldi     r24, 0x02       ; 2
     7b8:       89 8b           std     Y+17, r24       ; 0x11
     7ba:       66 e0           ldi     r22, 0x06       ; 6
     7bc:       ce 01           movw    r24, r28
     7be:       df 91           pop     r29
     7c0:       cf 91           pop     r28
     7c2:       1f 91           pop     r17
     7c4:       0f 91           pop     r16
     7c6:       ff 90           pop     r15
     7c8:       ef 90           pop     r14
     7ca:       0c 94 41 03     jmp     0x682   ; 0x682 <LiquidCrystal::command(unsigned char)>

000007ce <Print::flush()>:
     7ce:       08 95           ret

000007d0 <Print::availableForWrite()>:
     7d0:       80 e0           ldi     r24, 0x00       ; 0
     7d2:       90 e0           ldi     r25, 0x00       ; 0
     7d4:       08 95           ret

000007d6 <__cxa_pure_virtual>:
     7d6:       0e 94 c7 09     call    0x138e  ; 0x138e <abort>

000007da <Print::write(char const*)>:
     7da:       61 15           cp      r22, r1
     7dc:       71 05           cpc     r23, r1
     7de:       79 f0           breq    .+30            ; 0x7fe <Print::write(char const*)+0x24>
     7e0:       fb 01           movw    r30, r22
     7e2:       01 90           ld      r0, Z+
     7e4:       00 20           and     r0, r0
     7e6:       e9 f7           brne    .-6             ; 0x7e2 <Print::write(char const*)+0x8>
     7e8:       31 97           sbiw    r30, 0x01       ; 1
     7ea:       af 01           movw    r20, r30
     7ec:       46 1b           sub     r20, r22
     7ee:       57 0b           sbc     r21, r23
     7f0:       dc 01           movw    r26, r24
     7f2:       ed 91           ld      r30, X+
     7f4:       fc 91           ld      r31, X
     7f6:       02 80           ldd     r0, Z+2 ; 0x02
     7f8:       f3 81           ldd     r31, Z+3        ; 0x03
     7fa:       e0 2d           mov     r30, r0
     7fc:       09 94           ijmp
     7fe:       80 e0           ldi     r24, 0x00       ; 0
     800:       90 e0           ldi     r25, 0x00       ; 0
     802:       08 95           ret

00000804 <Print::printNumber(unsigned long, unsigned char)>:
     804:       4f 92           push    r4
     806:       5f 92           push    r5
     808:       6f 92           push    r6
     80a:       7f 92           push    r7
     80c:       ef 92           push    r14
     80e:       ff 92           push    r15
     810:       0f 93           push    r16
     812:       1f 93           push    r17
     814:       cf 93           push    r28
     816:       df 93           push    r29
     818:       cd b7           in      r28, 0x3d       ; 61
     81a:       de b7           in      r29, 0x3e       ; 62
     81c:       a1 97           sbiw    r28, 0x21       ; 33
     81e:       0f b6           in      r0, 0x3f        ; 63
     820:       f8 94           cli
     822:       de bf           out     0x3e, r29       ; 62
     824:       0f be           out     0x3f, r0        ; 63
     826:       cd bf           out     0x3d, r28       ; 61
     828:       7c 01           movw    r14, r24
     82a:       fa 01           movw    r30, r20
     82c:       cb 01           movw    r24, r22
     82e:       19 a2           std     Y+33, r1        ; 0x21
     830:       22 30           cpi     r18, 0x02       ; 2
     832:       08 f4           brcc    .+2             ; 0x836 <Print::printNumber(unsigned long, unsigned char)+0x32>
     834:       2a e0           ldi     r18, 0x0A       ; 10
     836:       8e 01           movw    r16, r28
     838:       0f 5d           subi    r16, 0xDF       ; 223
     83a:       1f 4f           sbci    r17, 0xFF       ; 255
     83c:       42 2e           mov     r4, r18
     83e:       51 2c           mov     r5, r1
     840:       61 2c           mov     r6, r1
     842:       71 2c           mov     r7, r1
     844:       bf 01           movw    r22, r30
     846:       a3 01           movw    r20, r6
     848:       92 01           movw    r18, r4
     84a:       0e 94 9f 09     call    0x133e  ; 0x133e <__udivmodsi4>
     84e:       f9 01           movw    r30, r18
     850:       ca 01           movw    r24, r20
     852:       01 50           subi    r16, 0x01       ; 1
     854:       11 09           sbc     r17, r1
     856:       6a 30           cpi     r22, 0x0A       ; 10
     858:       14 f4           brge    .+4             ; 0x85e <Print::printNumber(unsigned long, unsigned char)+0x5a>
     85a:       60 5d           subi    r22, 0xD0       ; 208
     85c:       01 c0           rjmp    .+2             ; 0x860 <Print::printNumber(unsigned long, unsigned char)+0x5c>
     85e:       69 5c           subi    r22, 0xC9       ; 201
     860:       d8 01           movw    r26, r16
     862:       6c 93           st      X, r22
     864:       23 2b           or      r18, r19
     866:       24 2b           or      r18, r20
     868:       25 2b           or      r18, r21
     86a:       61 f7           brne    .-40            ; 0x844 <Print::printNumber(unsigned long, unsigned char)+0x40>
     86c:       b8 01           movw    r22, r16
     86e:       c7 01           movw    r24, r14
     870:       0e 94 ed 03     call    0x7da   ; 0x7da <Print::write(char const*)>
     874:       a1 96           adiw    r28, 0x21       ; 33
     876:       0f b6           in      r0, 0x3f        ; 63
     878:       f8 94           cli
     87a:       de bf           out     0x3e, r29       ; 62
     87c:       0f be           out     0x3f, r0        ; 63
     87e:       cd bf           out     0x3d, r28       ; 61
     880:       df 91           pop     r29
     882:       cf 91           pop     r28
     884:       1f 91           pop     r17
     886:       0f 91           pop     r16
     888:       ff 90           pop     r15
     88a:       ef 90           pop     r14
     88c:       7f 90           pop     r7
     88e:       6f 90           pop     r6
     890:       5f 90           pop     r5
     892:       4f 90           pop     r4
     894:       08 95           ret

00000896 <Print::print(long, int) [clone .part.2]>:
     896:       cf 92           push    r12
     898:       df 92           push    r13
     89a:       ef 92           push    r14
     89c:       ff 92           push    r15
     89e:       0f 93           push    r16
     8a0:       1f 93           push    r17
     8a2:       cf 93           push    r28
     8a4:       df 93           push    r29
     8a6:       ec 01           movw    r28, r24
     8a8:       6a 01           movw    r12, r20
     8aa:       7b 01           movw    r14, r22
     8ac:       e8 81           ld      r30, Y
     8ae:       f9 81           ldd     r31, Y+1        ; 0x01
     8b0:       01 90           ld      r0, Z+
     8b2:       f0 81           ld      r31, Z
     8b4:       e0 2d           mov     r30, r0
     8b6:       6d e2           ldi     r22, 0x2D       ; 45
     8b8:       09 95           icall
     8ba:       8c 01           movw    r16, r24
     8bc:       44 27           eor     r20, r20
     8be:       55 27           eor     r21, r21
     8c0:       ba 01           movw    r22, r20
     8c2:       4c 19           sub     r20, r12
     8c4:       5d 09           sbc     r21, r13
     8c6:       6e 09           sbc     r22, r14
     8c8:       7f 09           sbc     r23, r15
     8ca:       2a e0           ldi     r18, 0x0A       ; 10
     8cc:       ce 01           movw    r24, r28
     8ce:       0e 94 02 04     call    0x804   ; 0x804 <Print::printNumber(unsigned long, unsigned char)>
     8d2:       80 0f           add     r24, r16
     8d4:       91 1f           adc     r25, r17
     8d6:       df 91           pop     r29
     8d8:       cf 91           pop     r28
     8da:       1f 91           pop     r17
     8dc:       0f 91           pop     r16
     8de:       ff 90           pop     r15
     8e0:       ef 90           pop     r14
     8e2:       df 90           pop     r13
     8e4:       cf 90           pop     r12
     8e6:       08 95           ret

000008e8 <__vector_7>:
     8e8:       1f 92           push    r1
     8ea:       0f 92           push    r0
     8ec:       0f b6           in      r0, 0x3f        ; 63
     8ee:       0f 92           push    r0
     8f0:       11 24           eor     r1, r1
     8f2:       2f 93           push    r18
     8f4:       3f 93           push    r19
     8f6:       4f 93           push    r20
     8f8:       5f 93           push    r21
     8fa:       6f 93           push    r22
     8fc:       7f 93           push    r23
     8fe:       8f 93           push    r24
     900:       9f 93           push    r25
     902:       af 93           push    r26
     904:       bf 93           push    r27
     906:       ef 93           push    r30
     908:       ff 93           push    r31
     90a:       80 91 52 01     lds     r24, 0x0152     ; 0x800152 <timer2_toggle_count>
     90e:       90 91 53 01     lds     r25, 0x0153     ; 0x800153 <timer2_toggle_count+0x1>
     912:       a0 91 54 01     lds     r26, 0x0154     ; 0x800154 <timer2_toggle_count+0x2>
     916:       b0 91 55 01     lds     r27, 0x0155     ; 0x800155 <timer2_toggle_count+0x3>
     91a:       89 2b           or      r24, r25
     91c:       8a 2b           or      r24, r26
     91e:       8b 2b           or      r24, r27
     920:       51 f1           breq    .+84            ; 0x976 <__stack+0x77>
     922:       80 91 49 01     lds     r24, 0x0149     ; 0x800149 <timer2_pin_mask>
     926:       e0 91 4a 01     lds     r30, 0x014A     ; 0x80014a <timer2_pin_port>
     92a:       f0 91 4b 01     lds     r31, 0x014B     ; 0x80014b <timer2_pin_port+0x1>
     92e:       90 81           ld      r25, Z
     930:       89 27           eor     r24, r25
     932:       80 83           st      Z, r24
     934:       80 91 52 01     lds     r24, 0x0152     ; 0x800152 <timer2_toggle_count>
     938:       90 91 53 01     lds     r25, 0x0153     ; 0x800153 <timer2_toggle_count+0x1>
     93c:       a0 91 54 01     lds     r26, 0x0154     ; 0x800154 <timer2_toggle_count+0x2>
     940:       b0 91 55 01     lds     r27, 0x0155     ; 0x800155 <timer2_toggle_count+0x3>
     944:       18 16           cp      r1, r24
     946:       19 06           cpc     r1, r25
     948:       1a 06           cpc     r1, r26
     94a:       1b 06           cpc     r1, r27
     94c:       c4 f4           brge    .+48            ; 0x97e <__stack+0x7f>
     94e:       80 91 52 01     lds     r24, 0x0152     ; 0x800152 <timer2_toggle_count>
     952:       90 91 53 01     lds     r25, 0x0153     ; 0x800153 <timer2_toggle_count+0x1>
     956:       a0 91 54 01     lds     r26, 0x0154     ; 0x800154 <timer2_toggle_count+0x2>
     95a:       b0 91 55 01     lds     r27, 0x0155     ; 0x800155 <timer2_toggle_count+0x3>
     95e:       01 97           sbiw    r24, 0x01       ; 1
     960:       a1 09           sbc     r26, r1
     962:       b1 09           sbc     r27, r1
     964:       80 93 52 01     sts     0x0152, r24     ; 0x800152 <timer2_toggle_count>
     968:       90 93 53 01     sts     0x0153, r25     ; 0x800153 <timer2_toggle_count+0x1>
     96c:       a0 93 54 01     sts     0x0154, r26     ; 0x800154 <timer2_toggle_count+0x2>
     970:       b0 93 55 01     sts     0x0155, r27     ; 0x800155 <timer2_toggle_count+0x3>
     974:       04 c0           rjmp    .+8             ; 0x97e <__stack+0x7f>
     976:       80 91 00 01     lds     r24, 0x0100     ; 0x800100 <__data_start>
     97a:       0e 94 df 01     call    0x3be   ; 0x3be <noTone(unsigned char)>
     97e:       ff 91           pop     r31
     980:       ef 91           pop     r30
     982:       bf 91           pop     r27
     984:       af 91           pop     r26
     986:       9f 91           pop     r25
     988:       8f 91           pop     r24
     98a:       7f 91           pop     r23
     98c:       6f 91           pop     r22
     98e:       5f 91           pop     r21
     990:       4f 91           pop     r20
     992:       3f 91           pop     r19
     994:       2f 91           pop     r18
     996:       0f 90           pop     r0
     998:       0f be           out     0x3f, r0        ; 63
     99a:       0f 90           pop     r0
     99c:       1f 90           pop     r1
     99e:       18 95           reti

000009a0 <__vector_19>:
     9a0:       1f 92           push    r1
     9a2:       0f 92           push    r0
     9a4:       0f b6           in      r0, 0x3f        ; 63
     9a6:       0f 92           push    r0
     9a8:       11 24           eor     r1, r1
     9aa:       2f 93           push    r18
     9ac:       3f 93           push    r19
     9ae:       4f 93           push    r20
     9b0:       5f 93           push    r21
     9b2:       6f 93           push    r22
     9b4:       7f 93           push    r23
     9b6:       8f 93           push    r24
     9b8:       9f 93           push    r25
     9ba:       af 93           push    r26
     9bc:       bf 93           push    r27
     9be:       ef 93           push    r30
     9c0:       ff 93           push    r31
     9c2:       86 e6           ldi     r24, 0x66       ; 102
     9c4:       91 e0           ldi     r25, 0x01       ; 1
     9c6:       0e 94 ca 00     call    0x194   ; 0x194 <HardwareSerial::_tx_udr_empty_irq()>
     9ca:       ff 91           pop     r31
     9cc:       ef 91           pop     r30
     9ce:       bf 91           pop     r27
     9d0:       af 91           pop     r26
     9d2:       9f 91           pop     r25
     9d4:       8f 91           pop     r24
     9d6:       7f 91           pop     r23
     9d8:       6f 91           pop     r22
     9da:       5f 91           pop     r21
     9dc:       4f 91           pop     r20
     9de:       3f 91           pop     r19
     9e0:       2f 91           pop     r18
     9e2:       0f 90           pop     r0
     9e4:       0f be           out     0x3f, r0        ; 63
     9e6:       0f 90           pop     r0
     9e8:       1f 90           pop     r1
     9ea:       18 95           reti

000009ec <__vector_18>:
     9ec:       1f 92           push    r1
     9ee:       0f 92           push    r0
     9f0:       0f b6           in      r0, 0x3f        ; 63
     9f2:       0f 92           push    r0
     9f4:       11 24           eor     r1, r1
     9f6:       2f 93           push    r18
     9f8:       8f 93           push    r24
     9fa:       9f 93           push    r25
     9fc:       ef 93           push    r30
     9fe:       ff 93           push    r31
     a00:       e0 91 76 01     lds     r30, 0x0176     ; 0x800176 <Serial+0x10>
     a04:       f0 91 77 01     lds     r31, 0x0177     ; 0x800177 <Serial+0x11>
     a08:       80 81           ld      r24, Z
     a0a:       e0 91 7c 01     lds     r30, 0x017C     ; 0x80017c <Serial+0x16>
     a0e:       f0 91 7d 01     lds     r31, 0x017D     ; 0x80017d <Serial+0x17>
     a12:       82 fd           sbrc    r24, 2
     a14:       12 c0           rjmp    .+36            ; 0xa3a <__vector_18+0x4e>
     a16:       90 81           ld      r25, Z
     a18:       80 91 7f 01     lds     r24, 0x017F     ; 0x80017f <Serial+0x19>
     a1c:       8f 5f           subi    r24, 0xFF       ; 255
     a1e:       8f 73           andi    r24, 0x3F       ; 63
     a20:       20 91 80 01     lds     r18, 0x0180     ; 0x800180 <Serial+0x1a>
     a24:       82 17           cp      r24, r18
     a26:       51 f0           breq    .+20            ; 0xa3c <__vector_18+0x50>
     a28:       e0 91 7f 01     lds     r30, 0x017F     ; 0x80017f <Serial+0x19>
     a2c:       f0 e0           ldi     r31, 0x00       ; 0
     a2e:       ea 59           subi    r30, 0x9A       ; 154
     a30:       fe 4f           sbci    r31, 0xFE       ; 254
     a32:       95 8f           std     Z+29, r25       ; 0x1d
     a34:       80 93 7f 01     sts     0x017F, r24     ; 0x80017f <Serial+0x19>
     a38:       01 c0           rjmp    .+2             ; 0xa3c <__vector_18+0x50>
     a3a:       80 81           ld      r24, Z
     a3c:       ff 91           pop     r31
     a3e:       ef 91           pop     r30
     a40:       9f 91           pop     r25
     a42:       8f 91           pop     r24
     a44:       2f 91           pop     r18
     a46:       0f 90           pop     r0
     a48:       0f be           out     0x3f, r0        ; 63
     a4a:       0f 90           pop     r0
     a4c:       1f 90           pop     r1
     a4e:       18 95           reti

00000a50 <__vector_16>:
     a50:       1f 92           push    r1
     a52:       0f 92           push    r0
     a54:       0f b6           in      r0, 0x3f        ; 63
     a56:       0f 92           push    r0
     a58:       11 24           eor     r1, r1
     a5a:       2f 93           push    r18
     a5c:       3f 93           push    r19
     a5e:       8f 93           push    r24
     a60:       9f 93           push    r25
     a62:       af 93           push    r26
     a64:       bf 93           push    r27
     a66:       80 91 41 01     lds     r24, 0x0141     ; 0x800141 <timer0_millis>
     a6a:       90 91 42 01     lds     r25, 0x0142     ; 0x800142 <timer0_millis+0x1>
     a6e:       a0 91 43 01     lds     r26, 0x0143     ; 0x800143 <timer0_millis+0x2>
     a72:       b0 91 44 01     lds     r27, 0x0144     ; 0x800144 <timer0_millis+0x3>
     a76:       30 91 40 01     lds     r19, 0x0140     ; 0x800140 <__data_end>
     a7a:       23 e0           ldi     r18, 0x03       ; 3
     a7c:       23 0f           add     r18, r19
     a7e:       2d 37           cpi     r18, 0x7D       ; 125
     a80:       20 f4           brcc    .+8             ; 0xa8a <__vector_16+0x3a>
     a82:       01 96           adiw    r24, 0x01       ; 1
     a84:       a1 1d           adc     r26, r1
     a86:       b1 1d           adc     r27, r1
     a88:       05 c0           rjmp    .+10            ; 0xa94 <__vector_16+0x44>
     a8a:       26 e8           ldi     r18, 0x86       ; 134
     a8c:       23 0f           add     r18, r19
     a8e:       02 96           adiw    r24, 0x02       ; 2
     a90:       a1 1d           adc     r26, r1
     a92:       b1 1d           adc     r27, r1
     a94:       20 93 40 01     sts     0x0140, r18     ; 0x800140 <__data_end>
     a98:       80 93 41 01     sts     0x0141, r24     ; 0x800141 <timer0_millis>
     a9c:       90 93 42 01     sts     0x0142, r25     ; 0x800142 <timer0_millis+0x1>
     aa0:       a0 93 43 01     sts     0x0143, r26     ; 0x800143 <timer0_millis+0x2>
     aa4:       b0 93 44 01     sts     0x0144, r27     ; 0x800144 <timer0_millis+0x3>
     aa8:       80 91 45 01     lds     r24, 0x0145     ; 0x800145 <timer0_overflow_count>
     aac:       90 91 46 01     lds     r25, 0x0146     ; 0x800146 <timer0_overflow_count+0x1>
     ab0:       a0 91 47 01     lds     r26, 0x0147     ; 0x800147 <timer0_overflow_count+0x2>
     ab4:       b0 91 48 01     lds     r27, 0x0148     ; 0x800148 <timer0_overflow_count+0x3>
     ab8:       01 96           adiw    r24, 0x01       ; 1
     aba:       a1 1d           adc     r26, r1
     abc:       b1 1d           adc     r27, r1
     abe:       80 93 45 01     sts     0x0145, r24     ; 0x800145 <timer0_overflow_count>
     ac2:       90 93 46 01     sts     0x0146, r25     ; 0x800146 <timer0_overflow_count+0x1>
     ac6:       a0 93 47 01     sts     0x0147, r26     ; 0x800147 <timer0_overflow_count+0x2>
     aca:       b0 93 48 01     sts     0x0148, r27     ; 0x800148 <timer0_overflow_count+0x3>
     ace:       bf 91           pop     r27
     ad0:       af 91           pop     r26
     ad2:       9f 91           pop     r25
     ad4:       8f 91           pop     r24
     ad6:       3f 91           pop     r19
     ad8:       2f 91           pop     r18
     ada:       0f 90           pop     r0
     adc:       0f be           out     0x3f, r0        ; 63
     ade:       0f 90           pop     r0
     ae0:       1f 90           pop     r1
     ae2:       18 95           reti

00000ae4 <countPulseASM>:
     ae4:       cf 92           push    r12
     ae6:       df 92           push    r13
     ae8:       ef 92           push    r14
     aea:       ff 92           push    r15
     aec:       0f 93           push    r16
     aee:       1f 93           push    r17
     af0:       e8 2f           mov     r30, r24
     af2:       f9 2f           mov     r31, r25
     af4:       05 c0           rjmp    .+10            ; 0xb00 <countPulseASM+0x1c>
     af6:       01 50           subi    r16, 0x01       ; 1
     af8:       11 09           sbc     r17, r1
     afa:       21 09           sbc     r18, r1
     afc:       31 09           sbc     r19, r1
     afe:       61 f1           breq    .+88            ; 0xb58 <countPulseASM+0x74>
     b00:       90 81           ld      r25, Z
     b02:       96 23           and     r25, r22
     b04:       94 17           cp      r25, r20
     b06:       b9 f3           breq    .-18            ; 0xaf6 <countPulseASM+0x12>
     b08:       05 c0           rjmp    .+10            ; 0xb14 <countPulseASM+0x30>
     b0a:       01 50           subi    r16, 0x01       ; 1
     b0c:       11 09           sbc     r17, r1
     b0e:       21 09           sbc     r18, r1
     b10:       31 09           sbc     r19, r1
     b12:       11 f1           breq    .+68            ; 0xb58 <countPulseASM+0x74>
     b14:       90 81           ld      r25, Z
     b16:       96 23           and     r25, r22
     b18:       94 13           cpse    r25, r20
     b1a:       f7 cf           rjmp    .-18            ; 0xb0a <countPulseASM+0x26>
     b1c:       c1 2c           mov     r12, r1
     b1e:       d1 2c           mov     r13, r1
     b20:       e1 2c           mov     r14, r1
     b22:       f1 2c           mov     r15, r1
     b24:       0a c0           rjmp    .+20            ; 0xb3a <countPulseASM+0x56>
     b26:       8f ef           ldi     r24, 0xFF       ; 255
     b28:       c8 1a           sub     r12, r24
     b2a:       d8 0a           sbc     r13, r24
     b2c:       e8 0a           sbc     r14, r24
     b2e:       f8 0a           sbc     r15, r24
     b30:       0c 15           cp      r16, r12
     b32:       1d 05           cpc     r17, r13
     b34:       2e 05           cpc     r18, r14
     b36:       3f 05           cpc     r19, r15
     b38:       79 f0           breq    .+30            ; 0xb58 <countPulseASM+0x74>
     b3a:       80 81           ld      r24, Z
     b3c:       86 23           and     r24, r22
     b3e:       84 17           cp      r24, r20
     b40:       91 f3           breq    .-28            ; 0xb26 <countPulseASM+0x42>
     b42:       6c 2d           mov     r22, r12
     b44:       7d 2d           mov     r23, r13
     b46:       8e 2d           mov     r24, r14
     b48:       9f 2d           mov     r25, r15
     b4a:       1f 91           pop     r17
     b4c:       0f 91           pop     r16
     b4e:       ff 90           pop     r15
     b50:       ef 90           pop     r14
     b52:       df 90           pop     r13
     b54:       cf 90           pop     r12
     b56:       08 95           ret
     b58:       60 e0           ldi     r22, 0x00       ; 0
     b5a:       70 e0           ldi     r23, 0x00       ; 0
     b5c:       80 e0           ldi     r24, 0x00       ; 0
     b5e:       90 e0           ldi     r25, 0x00       ; 0
     b60:       1f 91           pop     r17
     b62:       0f 91           pop     r16
     b64:       ff 90           pop     r15
     b66:       ef 90           pop     r14
     b68:       df 90           pop     r13
     b6a:       cf 90           pop     r12
     b6c:       08 95           ret

00000b6e <global constructors keyed to 65535_0_AC_Pump_Controller_Water_Level_Sensing.ino.cpp.o.1889>:
     b6e:       e6 e6           ldi     r30, 0x66       ; 102
     b70:       f1 e0           ldi     r31, 0x01       ; 1
     b72:       13 82           std     Z+3, r1 ; 0x03
     b74:       12 82           std     Z+2, r1 ; 0x02
     b76:       88 ee           ldi     r24, 0xE8       ; 232
     b78:       93 e0           ldi     r25, 0x03       ; 3
     b7a:       a0 e0           ldi     r26, 0x00       ; 0
     b7c:       b0 e0           ldi     r27, 0x00       ; 0
     b7e:       84 83           std     Z+4, r24        ; 0x04
     b80:       95 83           std     Z+5, r25        ; 0x05
     b82:       a6 83           std     Z+6, r26        ; 0x06
     b84:       b7 83           std     Z+7, r27        ; 0x07
     b86:       85 e0           ldi     r24, 0x05       ; 5
     b88:       91 e0           ldi     r25, 0x01       ; 1
     b8a:       91 83           std     Z+1, r25        ; 0x01
     b8c:       80 83           st      Z, r24
     b8e:       85 ec           ldi     r24, 0xC5       ; 197
     b90:       90 e0           ldi     r25, 0x00       ; 0
     b92:       95 87           std     Z+13, r25       ; 0x0d
     b94:       84 87           std     Z+12, r24       ; 0x0c
     b96:       84 ec           ldi     r24, 0xC4       ; 196
     b98:       90 e0           ldi     r25, 0x00       ; 0
     b9a:       97 87           std     Z+15, r25       ; 0x0f
     b9c:       86 87           std     Z+14, r24       ; 0x0e
     b9e:       80 ec           ldi     r24, 0xC0       ; 192
     ba0:       90 e0           ldi     r25, 0x00       ; 0
     ba2:       91 8b           std     Z+17, r25       ; 0x11
     ba4:       80 8b           std     Z+16, r24       ; 0x10
     ba6:       81 ec           ldi     r24, 0xC1       ; 193
     ba8:       90 e0           ldi     r25, 0x00       ; 0
     baa:       93 8b           std     Z+19, r25       ; 0x13
     bac:       82 8b           std     Z+18, r24       ; 0x12
     bae:       82 ec           ldi     r24, 0xC2       ; 194
     bb0:       90 e0           ldi     r25, 0x00       ; 0
     bb2:       95 8b           std     Z+21, r25       ; 0x15
     bb4:       84 8b           std     Z+20, r24       ; 0x14
     bb6:       86 ec           ldi     r24, 0xC6       ; 198
     bb8:       90 e0           ldi     r25, 0x00       ; 0
     bba:       97 8b           std     Z+23, r25       ; 0x17
     bbc:       86 8b           std     Z+22, r24       ; 0x16
     bbe:       11 8e           std     Z+25, r1        ; 0x19
     bc0:       12 8e           std     Z+26, r1        ; 0x1a
     bc2:       13 8e           std     Z+27, r1        ; 0x1b
     bc4:       14 8e           std     Z+28, r1        ; 0x1c
     bc6:       e3 e0           ldi     r30, 0x03       ; 3
     bc8:       f2 e0           ldi     r31, 0x02       ; 2
     bca:       13 82           std     Z+3, r1 ; 0x03
     bcc:       12 82           std     Z+2, r1 ; 0x02
     bce:       87 e1           ldi     r24, 0x17       ; 23
     bd0:       91 e0           ldi     r25, 0x01       ; 1
     bd2:       91 83           std     Z+1, r25        ; 0x01
     bd4:       80 83           st      Z, r24
     bd6:       14 82           std     Z+4, r1 ; 0x04
     bd8:       8f ef           ldi     r24, 0xFF       ; 255
     bda:       85 83           std     Z+5, r24        ; 0x05
     bdc:       81 e0           ldi     r24, 0x01       ; 1
     bde:       86 83           std     Z+6, r24        ; 0x06
     be0:       82 e0           ldi     r24, 0x02       ; 2
     be2:       87 83           std     Z+7, r24        ; 0x07
     be4:       83 e0           ldi     r24, 0x03       ; 3
     be6:       80 87           std     Z+8, r24        ; 0x08
     be8:       84 e0           ldi     r24, 0x04       ; 4
     bea:       81 87           std     Z+9, r24        ; 0x09
     bec:       85 e0           ldi     r24, 0x05       ; 5
     bee:       82 87           std     Z+10, r24       ; 0x0a
     bf0:       13 86           std     Z+11, r1        ; 0x0b
     bf2:       14 86           std     Z+12, r1        ; 0x0c
     bf4:       15 86           std     Z+13, r1        ; 0x0d
     bf6:       16 86           std     Z+14, r1        ; 0x0e
     bf8:       17 86           std     Z+15, r1        ; 0x0f
     bfa:       61 e0           ldi     r22, 0x01       ; 1
     bfc:       cf 01           movw    r24, r30
     bfe:       0c 94 44 03     jmp     0x688   ; 0x688 <LiquidCrystal::begin(unsigned char, unsigned char, unsigned char) [clone .constprop.13]>

00000c02 <main>:
     c02:       78 94           sei
     c04:       84 b5           in      r24, 0x24       ; 36
     c06:       82 60           ori     r24, 0x02       ; 2
     c08:       84 bd           out     0x24, r24       ; 36
     c0a:       84 b5           in      r24, 0x24       ; 36
     c0c:       81 60           ori     r24, 0x01       ; 1
     c0e:       84 bd           out     0x24, r24       ; 36
     c10:       85 b5           in      r24, 0x25       ; 37
     c12:       82 60           ori     r24, 0x02       ; 2
     c14:       85 bd           out     0x25, r24       ; 37
     c16:       85 b5           in      r24, 0x25       ; 37
     c18:       81 60           ori     r24, 0x01       ; 1
     c1a:       85 bd           out     0x25, r24       ; 37
     c1c:       80 91 6e 00     lds     r24, 0x006E     ; 0x80006e <__TEXT_REGION_LENGTH__+0x7e006e>
     c20:       81 60           ori     r24, 0x01       ; 1
     c22:       80 93 6e 00     sts     0x006E, r24     ; 0x80006e <__TEXT_REGION_LENGTH__+0x7e006e>
     c26:       10 92 81 00     sts     0x0081, r1      ; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
     c2a:       80 91 81 00     lds     r24, 0x0081     ; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
     c2e:       82 60           ori     r24, 0x02       ; 2
     c30:       80 93 81 00     sts     0x0081, r24     ; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
     c34:       80 91 81 00     lds     r24, 0x0081     ; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
     c38:       81 60           ori     r24, 0x01       ; 1
     c3a:       80 93 81 00     sts     0x0081, r24     ; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
     c3e:       80 91 80 00     lds     r24, 0x0080     ; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     c42:       81 60           ori     r24, 0x01       ; 1
     c44:       80 93 80 00     sts     0x0080, r24     ; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     c48:       80 91 b1 00     lds     r24, 0x00B1     ; 0x8000b1 <__TEXT_REGION_LENGTH__+0x7e00b1>
     c4c:       84 60           ori     r24, 0x04       ; 4
     c4e:       80 93 b1 00     sts     0x00B1, r24     ; 0x8000b1 <__TEXT_REGION_LENGTH__+0x7e00b1>
     c52:       80 91 b0 00     lds     r24, 0x00B0     ; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     c56:       81 60           ori     r24, 0x01       ; 1
     c58:       80 93 b0 00     sts     0x00B0, r24     ; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     c5c:       80 91 7a 00     lds     r24, 0x007A     ; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     c60:       84 60           ori     r24, 0x04       ; 4
     c62:       80 93 7a 00     sts     0x007A, r24     ; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     c66:       80 91 7a 00     lds     r24, 0x007A     ; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     c6a:       82 60           ori     r24, 0x02       ; 2
     c6c:       80 93 7a 00     sts     0x007A, r24     ; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     c70:       80 91 7a 00     lds     r24, 0x007A     ; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     c74:       81 60           ori     r24, 0x01       ; 1
     c76:       80 93 7a 00     sts     0x007A, r24     ; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     c7a:       80 91 7a 00     lds     r24, 0x007A     ; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     c7e:       80 68           ori     r24, 0x80       ; 128
     c80:       80 93 7a 00     sts     0x007A, r24     ; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     c84:       10 92 c1 00     sts     0x00C1, r1      ; 0x8000c1 <__TEXT_REGION_LENGTH__+0x7e00c1>
     c88:       61 e0           ldi     r22, 0x01       ; 1
     c8a:       86 e0           ldi     r24, 0x06       ; 6
     c8c:       0e 94 0a 02     call    0x414   ; 0x414 <pinMode>
     c90:       60 e0           ldi     r22, 0x00       ; 0
     c92:       87 e0           ldi     r24, 0x07       ; 7
     c94:       0e 94 0a 02     call    0x414   ; 0x414 <pinMode>
     c98:       61 e0           ldi     r22, 0x01       ; 1
     c9a:       88 e0           ldi     r24, 0x08       ; 8
     c9c:       0e 94 0a 02     call    0x414   ; 0x414 <pinMode>
     ca0:       61 e0           ldi     r22, 0x01       ; 1
     ca2:       89 e0           ldi     r24, 0x09       ; 9
     ca4:       0e 94 0a 02     call    0x414   ; 0x414 <pinMode>
     ca8:       61 e0           ldi     r22, 0x01       ; 1
     caa:       8a e0           ldi     r24, 0x0A       ; 10
     cac:       0e 94 0a 02     call    0x414   ; 0x414 <pinMode>
     cb0:       61 e0           ldi     r22, 0x01       ; 1
     cb2:       8c e0           ldi     r24, 0x0C       ; 12
     cb4:       0e 94 0a 02     call    0x414   ; 0x414 <pinMode>
     cb8:       62 e0           ldi     r22, 0x02       ; 2
     cba:       83 e0           ldi     r24, 0x03       ; 3
     cbc:       92 e0           ldi     r25, 0x02       ; 2
     cbe:       0e 94 44 03     call    0x688   ; 0x688 <LiquidCrystal::begin(unsigned char, unsigned char, unsigned char) [clone .constprop.13]>
     cc2:       43 e0           ldi     r20, 0x03       ; 3
     cc4:       24 2e           mov     r2, r20
     cc6:       31 2c           mov     r3, r1
     cc8:       53 e2           ldi     r21, 0x23       ; 35
     cca:       85 2e           mov     r8, r21
     ccc:       91 2c           mov     r9, r1
     cce:       44 24           eor     r4, r4
     cd0:       4a 94           dec     r4
     cd2:       54 2c           mov     r5, r4
     cd4:       32 01           movw    r6, r4
     cd6:       7f e9           ldi     r23, 0x9F       ; 159
     cd8:       a7 2e           mov     r10, r23
     cda:       7f e0           ldi     r23, 0x0F       ; 15
     cdc:       b7 2e           mov     r11, r23
     cde:       e2 ec           ldi     r30, 0xC2       ; 194
     ce0:       ce 2e           mov     r12, r30
     ce2:       e0 e0           ldi     r30, 0x00       ; 0
     ce4:       de 2e           mov     r13, r30
     ce6:       c9 eb           ldi     r28, 0xB9       ; 185
     ce8:       d0 e0           ldi     r29, 0x00       ; 0
     cea:       fb e9           ldi     r31, 0x9B       ; 155
     cec:       ef 2e           mov     r14, r31
     cee:       f0 e0           ldi     r31, 0x00       ; 0
     cf0:       ff 2e           mov     r15, r31
     cf2:       60 e0           ldi     r22, 0x00       ; 0
     cf4:       86 e0           ldi     r24, 0x06       ; 6
     cf6:       0e 94 93 01     call    0x326   ; 0x326 <digitalWrite>
     cfa:       c1 01           movw    r24, r2
     cfc:       01 97           sbiw    r24, 0x01       ; 1
     cfe:       f1 f7           brne    .-4             ; 0xcfc <main+0xfa>
     d00:       61 e0           ldi     r22, 0x01       ; 1
     d02:       86 e0           ldi     r24, 0x06       ; 6
     d04:       0e 94 93 01     call    0x326   ; 0x326 <digitalWrite>
     d08:       c4 01           movw    r24, r8
     d0a:       01 97           sbiw    r24, 0x01       ; 1
     d0c:       f1 f7           brne    .-4             ; 0xd0a <main+0x108>
     d0e:       60 e0           ldi     r22, 0x00       ; 0
     d10:       86 e0           ldi     r24, 0x06       ; 6
     d12:       0e 94 93 01     call    0x326   ; 0x326 <digitalWrite>
     d16:       e7 e9           ldi     r30, 0x97       ; 151
     d18:       f0 e0           ldi     r31, 0x00       ; 0
     d1a:       64 91           lpm     r22, Z
     d1c:       e5 eb           ldi     r30, 0xB5       ; 181
     d1e:       f0 e0           ldi     r31, 0x00       ; 0
     d20:       84 91           lpm     r24, Z
     d22:       e8 2f           mov     r30, r24
     d24:       f0 e0           ldi     r31, 0x00       ; 0
     d26:       ee 0f           add     r30, r30
     d28:       ff 1f           adc     r31, r31
     d2a:       ea 57           subi    r30, 0x7A       ; 122
     d2c:       ff 4f           sbci    r31, 0xFF       ; 255
     d2e:       85 91           lpm     r24, Z+
     d30:       94 91           lpm     r25, Z
     d32:       00 e4           ldi     r16, 0x40       ; 64
     d34:       12 e4           ldi     r17, 0x42       ; 66
     d36:       2f e0           ldi     r18, 0x0F       ; 15
     d38:       30 e0           ldi     r19, 0x00       ; 0
     d3a:       46 2f           mov     r20, r22
     d3c:       0e 94 72 05     call    0xae4   ; 0xae4 <countPulseASM>
     d40:       61 15           cp      r22, r1
     d42:       71 05           cpc     r23, r1
     d44:       81 05           cpc     r24, r1
     d46:       91 05           cpc     r25, r1
     d48:       49 f0           breq    .+18            ; 0xd5c <main+0x15a>
     d4a:       dc 01           movw    r26, r24
     d4c:       cb 01           movw    r24, r22
     d4e:       01 96           adiw    r24, 0x01       ; 1
     d50:       a1 1d           adc     r26, r1
     d52:       b1 1d           adc     r27, r1
     d54:       bc 01           movw    r22, r24
     d56:       cd 01           movw    r24, r26
     d58:       9f 70           andi    r25, 0x0F       ; 15
     d5a:       03 c0           rjmp    .+6             ; 0xd62 <main+0x160>
     d5c:       60 e0           ldi     r22, 0x00       ; 0
     d5e:       70 e0           ldi     r23, 0x00       ; 0
     d60:       cb 01           movw    r24, r22
     d62:       60 93 62 01     sts     0x0162, r22     ; 0x800162 <duration>
     d66:       70 93 63 01     sts     0x0163, r23     ; 0x800163 <duration+0x1>
     d6a:       80 93 64 01     sts     0x0164, r24     ; 0x800164 <duration+0x2>
     d6e:       90 93 65 01     sts     0x0165, r25     ; 0x800165 <duration+0x3>
     d72:       0e 94 a6 08     call    0x114c  ; 0x114c <__floatsisf>
     d76:       26 e9           ldi     r18, 0x96       ; 150
     d78:       33 e4           ldi     r19, 0x43       ; 67
     d7a:       4b e0           ldi     r20, 0x0B       ; 11
     d7c:       5d e3           ldi     r21, 0x3D       ; 61
     d7e:       0e 94 0a 09     call    0x1214  ; 0x1214 <__mulsf3>
     d82:       20 e0           ldi     r18, 0x00       ; 0
     d84:       30 e0           ldi     r19, 0x00       ; 0
     d86:       40 e0           ldi     r20, 0x00       ; 0
     d88:       5f e3           ldi     r21, 0x3F       ; 63
     d8a:       0e 94 0a 09     call    0x1214  ; 0x1214 <__mulsf3>
     d8e:       0e 94 6e 08     call    0x10dc  ; 0x10dc <__fixsfsi>
     d92:       70 93 61 01     sts     0x0161, r23     ; 0x800161 <distance+0x1>
     d96:       60 93 60 01     sts     0x0160, r22     ; 0x800160 <distance>
     d9a:       07 2e           mov     r0, r23
     d9c:       00 0c           add     r0, r0
     d9e:       88 0b           sbc     r24, r24
     da0:       99 0b           sbc     r25, r25
     da2:       0e 94 a6 08     call    0x114c  ; 0x114c <__floatsisf>
     da6:       2a e9           ldi     r18, 0x9A       ; 154
     da8:       39 e9           ldi     r19, 0x99       ; 153
     daa:       49 e9           ldi     r20, 0x99       ; 153
     dac:       5f e3           ldi     r21, 0x3F       ; 63
     dae:       0e 94 0a 09     call    0x1214  ; 0x1214 <__mulsf3>
     db2:       0e 94 6e 08     call    0x10dc  ; 0x10dc <__fixsfsi>
     db6:       70 93 5f 01     sts     0x015F, r23     ; 0x80015f <water_percentage+0x1>
     dba:       60 93 5e 01     sts     0x015E, r22     ; 0x80015e <water_percentage>
     dbe:       e1 e0           ldi     r30, 0x01       ; 1
     dc0:       80 91 16 02     lds     r24, 0x0216     ; 0x800216 <LCD+0x13>
     dc4:       81 11           cpse    r24, r1
     dc6:       e0 e0           ldi     r30, 0x00       ; 0
     dc8:       e1 95           neg     r30
     dca:       f0 e0           ldi     r31, 0x00       ; 0
     dcc:       ed 5f           subi    r30, 0xFD       ; 253
     dce:       fd 4f           sbci    r31, 0xFD       ; 253
     dd0:       64 89           ldd     r22, Z+20       ; 0x14
     dd2:       60 68           ori     r22, 0x80       ; 128
     dd4:       83 e0           ldi     r24, 0x03       ; 3
     dd6:       92 e0           ldi     r25, 0x02       ; 2
     dd8:       0e 94 41 03     call    0x682   ; 0x682 <LiquidCrystal::command(unsigned char)>
     ddc:       6f e1           ldi     r22, 0x1F       ; 31
     dde:       71 e0           ldi     r23, 0x01       ; 1
     de0:       83 e0           ldi     r24, 0x03       ; 3
     de2:       92 e0           ldi     r25, 0x02       ; 2
     de4:       0e 94 ed 03     call    0x7da   ; 0x7da <Print::write(char const*)>
     de8:       40 91 5e 01     lds     r20, 0x015E     ; 0x80015e <water_percentage>
     dec:       50 91 5f 01     lds     r21, 0x015F     ; 0x80015f <water_percentage+0x1>
     df0:       05 2e           mov     r0, r21
     df2:       00 0c           add     r0, r0
     df4:       66 0b           sbc     r22, r22
     df6:       77 0b           sbc     r23, r23
     df8:       77 ff           sbrs    r23, 7
     dfa:       05 c0           rjmp    .+10            ; 0xe06 <main+0x204>
     dfc:       83 e0           ldi     r24, 0x03       ; 3
     dfe:       92 e0           ldi     r25, 0x02       ; 2
     e00:       0e 94 4b 04     call    0x896   ; 0x896 <Print::print(long, int) [clone .part.2]>
     e04:       05 c0           rjmp    .+10            ; 0xe10 <main+0x20e>
     e06:       2a e0           ldi     r18, 0x0A       ; 10
     e08:       83 e0           ldi     r24, 0x03       ; 3
     e0a:       92 e0           ldi     r25, 0x02       ; 2
     e0c:       0e 94 02 04     call    0x804   ; 0x804 <Print::printNumber(unsigned long, unsigned char)>
     e10:       6c e2           ldi     r22, 0x2C       ; 44
     e12:       71 e0           ldi     r23, 0x01       ; 1
     e14:       83 e0           ldi     r24, 0x03       ; 3
     e16:       92 e0           ldi     r25, 0x02       ; 2
     e18:       0e 94 ed 03     call    0x7da   ; 0x7da <Print::write(char const*)>
     e1c:       e0 91 16 02     lds     r30, 0x0216     ; 0x800216 <LCD+0x13>
     e20:       e2 30           cpi     r30, 0x02       ; 2
     e22:       10 f4           brcc    .+4             ; 0xe28 <main+0x226>
     e24:       e1 50           subi    r30, 0x01       ; 1
     e26:       01 c0           rjmp    .+2             ; 0xe2a <main+0x228>
     e28:       e1 e0           ldi     r30, 0x01       ; 1
     e2a:       f0 e0           ldi     r31, 0x00       ; 0
     e2c:       ed 5f           subi    r30, 0xFD       ; 253
     e2e:       fd 4f           sbci    r31, 0xFD       ; 253
     e30:       64 89           ldd     r22, Z+20       ; 0x14
     e32:       60 68           ori     r22, 0x80       ; 128
     e34:       83 e0           ldi     r24, 0x03       ; 3
     e36:       92 e0           ldi     r25, 0x02       ; 2
     e38:       0e 94 41 03     call    0x682   ; 0x682 <LiquidCrystal::command(unsigned char)>
     e3c:       e0 91 16 02     lds     r30, 0x0216     ; 0x800216 <LCD+0x13>
     e40:       e2 30           cpi     r30, 0x02       ; 2
     e42:       10 f4           brcc    .+4             ; 0xe48 <main+0x246>
     e44:       e1 50           subi    r30, 0x01       ; 1
     e46:       01 c0           rjmp    .+2             ; 0xe4a <main+0x248>
     e48:       e1 e0           ldi     r30, 0x01       ; 1
     e4a:       f0 e0           ldi     r31, 0x00       ; 0
     e4c:       ed 5f           subi    r30, 0xFD       ; 253
     e4e:       fd 4f           sbci    r31, 0xFD       ; 253
     e50:       64 89           ldd     r22, Z+20       ; 0x14
     e52:       60 68           ori     r22, 0x80       ; 128
     e54:       83 e0           ldi     r24, 0x03       ; 3
     e56:       92 e0           ldi     r25, 0x02       ; 2
     e58:       0e 94 41 03     call    0x682   ; 0x682 <LiquidCrystal::command(unsigned char)>
     e5c:       6e e2           ldi     r22, 0x2E       ; 46
     e5e:       71 e0           ldi     r23, 0x01       ; 1
     e60:       83 e0           ldi     r24, 0x03       ; 3
     e62:       92 e0           ldi     r25, 0x02       ; 2
     e64:       0e 94 ed 03     call    0x7da   ; 0x7da <Print::write(char const*)>
     e68:       64 e6           ldi     r22, 0x64       ; 100
     e6a:       70 e0           ldi     r23, 0x00       ; 0
     e6c:       80 e0           ldi     r24, 0x00       ; 0
     e6e:       90 e0           ldi     r25, 0x00       ; 0
     e70:       0e 94 6b 02     call    0x4d6   ; 0x4d6 <delay>
     e74:       40 91 60 01     lds     r20, 0x0160     ; 0x800160 <distance>
     e78:       50 91 61 01     lds     r21, 0x0161     ; 0x800161 <distance+0x1>
     e7c:       05 2e           mov     r0, r21
     e7e:       00 0c           add     r0, r0
     e80:       66 0b           sbc     r22, r22
     e82:       77 0b           sbc     r23, r23
     e84:       77 ff           sbrs    r23, 7
     e86:       05 c0           rjmp    .+10            ; 0xe92 <main+0x290>
     e88:       86 e6           ldi     r24, 0x66       ; 102
     e8a:       91 e0           ldi     r25, 0x01       ; 1
     e8c:       0e 94 4b 04     call    0x896   ; 0x896 <Print::print(long, int) [clone .part.2]>
     e90:       05 c0           rjmp    .+10            ; 0xe9c <main+0x29a>
     e92:       2a e0           ldi     r18, 0x0A       ; 10
     e94:       86 e6           ldi     r24, 0x66       ; 102
     e96:       91 e0           ldi     r25, 0x01       ; 1
     e98:       0e 94 02 04     call    0x804   ; 0x804 <Print::printNumber(unsigned long, unsigned char)>
     e9c:       6c e3           ldi     r22, 0x3C       ; 60
     e9e:       71 e0           ldi     r23, 0x01       ; 1
     ea0:       86 e6           ldi     r24, 0x66       ; 102
     ea2:       91 e0           ldi     r25, 0x01       ; 1
     ea4:       0e 94 ed 03     call    0x7da   ; 0x7da <Print::write(char const*)>
     ea8:       80 91 5e 01     lds     r24, 0x015E     ; 0x80015e <water_percentage>
     eac:       90 91 5f 01     lds     r25, 0x015F     ; 0x80015f <water_percentage+0x1>
     eb0:       8a 30           cpi     r24, 0x0A       ; 10
     eb2:       91 05           cpc     r25, r1
     eb4:       0c f0           brlt    .+2             ; 0xeb8 <main+0x2b6>
     eb6:       d0 c0           rjmp    .+416           ; 0x1058 <main+0x456>
     eb8:       61 e0           ldi     r22, 0x01       ; 1
     eba:       8c e0           ldi     r24, 0x0C       ; 12
     ebc:       0e 94 93 01     call    0x326   ; 0x326 <digitalWrite>
     ec0:       61 e0           ldi     r22, 0x01       ; 1
     ec2:       88 e0           ldi     r24, 0x08       ; 8
     ec4:       0e 94 93 01     call    0x326   ; 0x326 <digitalWrite>
     ec8:       60 e0           ldi     r22, 0x00       ; 0
     eca:       89 e0           ldi     r24, 0x09       ; 9
     ecc:       0e 94 93 01     call    0x326   ; 0x326 <digitalWrite>
     ed0:       60 e0           ldi     r22, 0x00       ; 0
     ed2:       8a e0           ldi     r24, 0x0A       ; 10
     ed4:       0e 94 93 01     call    0x326   ; 0x326 <digitalWrite>
     ed8:       80 91 00 01     lds     r24, 0x0100     ; 0x800100 <__data_start>
     edc:       8b 30           cpi     r24, 0x0B       ; 11
     ede:       19 f4           brne    .+6             ; 0xee6 <main+0x2e4>
     ee0:       f6 01           movw    r30, r12
     ee2:       14 91           lpm     r17, Z
     ee4:       71 c0           rjmp    .+226           ; 0xfc8 <main+0x3c6>
     ee6:       8f 3f           cpi     r24, 0xFF       ; 255
     ee8:       09 f0           breq    .+2             ; 0xeec <main+0x2ea>
     eea:       a6 c0           rjmp    .+332           ; 0x1038 <main+0x436>
     eec:       8b e0           ldi     r24, 0x0B       ; 11
     eee:       80 93 00 01     sts     0x0100, r24     ; 0x800100 <__data_start>
     ef2:       f6 01           movw    r30, r12
     ef4:       14 91           lpm     r17, Z
     ef6:       1f 3f           cpi     r17, 0xFF       ; 255
     ef8:       09 f4           brne    .+2             ; 0xefc <main+0x2fa>
     efa:       9e c0           rjmp    .+316           ; 0x1038 <main+0x436>
     efc:       11 30           cpi     r17, 0x01       ; 1
     efe:       01 f1           breq    .+64            ; 0xf40 <main+0x33e>
     f00:       12 30           cpi     r17, 0x02       ; 2
     f02:       09 f4           brne    .+2             ; 0xf06 <main+0x304>
     f04:       3f c0           rjmp    .+126           ; 0xf84 <main+0x382>
     f06:       11 11           cpse    r17, r1
     f08:       5f c0           rjmp    .+190           ; 0xfc8 <main+0x3c6>
     f0a:       14 bc           out     0x24, r1        ; 36
     f0c:       15 bc           out     0x25, r1        ; 37
     f0e:       84 b5           in      r24, 0x24       ; 36
     f10:       82 60           ori     r24, 0x02       ; 2
     f12:       84 bd           out     0x24, r24       ; 36
     f14:       85 b5           in      r24, 0x25       ; 37
     f16:       81 60           ori     r24, 0x01       ; 1
     f18:       85 bd           out     0x25, r24       ; 37
     f1a:       fe 01           movw    r30, r28
     f1c:       84 91           lpm     r24, Z
     f1e:       e8 2f           mov     r30, r24
     f20:       f0 e0           ldi     r31, 0x00       ; 0
     f22:       ee 0f           add     r30, r30
     f24:       ff 1f           adc     r31, r31
     f26:       ec 55           subi    r30, 0x5C       ; 92
     f28:       ff 4f           sbci    r31, 0xFF       ; 255
     f2a:       85 91           lpm     r24, Z+
     f2c:       94 91           lpm     r25, Z
     f2e:       90 93 51 01     sts     0x0151, r25     ; 0x800151 <timer0_pin_port+0x1>
     f32:       80 93 50 01     sts     0x0150, r24     ; 0x800150 <timer0_pin_port>
     f36:       f7 01           movw    r30, r14
     f38:       84 91           lpm     r24, Z
     f3a:       80 93 4f 01     sts     0x014F, r24     ; 0x80014f <timer0_pin_mask>
     f3e:       46 c0           rjmp    .+140           ; 0xfcc <main+0x3ca>
     f40:       10 92 80 00     sts     0x0080, r1      ; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     f44:       10 92 81 00     sts     0x0081, r1      ; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
     f48:       80 91 81 00     lds     r24, 0x0081     ; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
     f4c:       88 60           ori     r24, 0x08       ; 8
     f4e:       80 93 81 00     sts     0x0081, r24     ; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
     f52:       80 91 81 00     lds     r24, 0x0081     ; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
     f56:       81 60           ori     r24, 0x01       ; 1
     f58:       80 93 81 00     sts     0x0081, r24     ; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
     f5c:       fe 01           movw    r30, r28
     f5e:       84 91           lpm     r24, Z
     f60:       e8 2f           mov     r30, r24
     f62:       f0 e0           ldi     r31, 0x00       ; 0
     f64:       ee 0f           add     r30, r30
     f66:       ff 1f           adc     r31, r31
     f68:       ec 55           subi    r30, 0x5C       ; 92
     f6a:       ff 4f           sbci    r31, 0xFF       ; 255
     f6c:       85 91           lpm     r24, Z+
     f6e:       94 91           lpm     r25, Z
     f70:       90 93 4e 01     sts     0x014E, r25     ; 0x80014e <timer1_pin_port+0x1>
     f74:       80 93 4d 01     sts     0x014D, r24     ; 0x80014d <timer1_pin_port>
     f78:       f7 01           movw    r30, r14
     f7a:       84 91           lpm     r24, Z
     f7c:       80 93 4c 01     sts     0x014C, r24     ; 0x80014c <timer1_pin_mask>
     f80:       11 e0           ldi     r17, 0x01       ; 1
     f82:       24 c0           rjmp    .+72            ; 0xfcc <main+0x3ca>
     f84:       10 92 b0 00     sts     0x00B0, r1      ; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     f88:       10 92 b1 00     sts     0x00B1, r1      ; 0x8000b1 <__TEXT_REGION_LENGTH__+0x7e00b1>
     f8c:       80 91 b0 00     lds     r24, 0x00B0     ; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     f90:       82 60           ori     r24, 0x02       ; 2
     f92:       80 93 b0 00     sts     0x00B0, r24     ; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     f96:       80 91 b1 00     lds     r24, 0x00B1     ; 0x8000b1 <__TEXT_REGION_LENGTH__+0x7e00b1>
     f9a:       81 60           ori     r24, 0x01       ; 1
     f9c:       80 93 b1 00     sts     0x00B1, r24     ; 0x8000b1 <__TEXT_REGION_LENGTH__+0x7e00b1>
     fa0:       fe 01           movw    r30, r28
     fa2:       84 91           lpm     r24, Z
     fa4:       e8 2f           mov     r30, r24
     fa6:       f0 e0           ldi     r31, 0x00       ; 0
     fa8:       ee 0f           add     r30, r30
     faa:       ff 1f           adc     r31, r31
     fac:       ec 55           subi    r30, 0x5C       ; 92
     fae:       ff 4f           sbci    r31, 0xFF       ; 255
     fb0:       85 91           lpm     r24, Z+
     fb2:       94 91           lpm     r25, Z
     fb4:       90 93 4b 01     sts     0x014B, r25     ; 0x80014b <timer2_pin_port+0x1>
     fb8:       80 93 4a 01     sts     0x014A, r24     ; 0x80014a <timer2_pin_port>
     fbc:       f7 01           movw    r30, r14
     fbe:       84 91           lpm     r24, Z
     fc0:       80 93 49 01     sts     0x0149, r24     ; 0x800149 <timer2_pin_mask>
     fc4:       12 e0           ldi     r17, 0x02       ; 2
     fc6:       02 c0           rjmp    .+4             ; 0xfcc <main+0x3ca>
     fc8:       17 fd           sbrc    r17, 7
     fca:       36 c0           rjmp    .+108           ; 0x1038 <main+0x436>
     fcc:       61 e0           ldi     r22, 0x01       ; 1
     fce:       8b e0           ldi     r24, 0x0B       ; 11
     fd0:       0e 94 0a 02     call    0x414   ; 0x414 <pinMode>
     fd4:       11 23           and     r17, r17
     fd6:       09 f4           brne    .+2             ; 0xfda <main+0x3d8>
     fd8:       6d c0           rjmp    .+218           ; 0x10b4 <main+0x4b2>
     fda:       12 30           cpi     r17, 0x02       ; 2
     fdc:       09 f4           brne    .+2             ; 0xfe0 <main+0x3de>
     fde:       62 c0           rjmp    .+196           ; 0x10a4 <main+0x4a2>
     fe0:       11 30           cpi     r17, 0x01       ; 1
     fe2:       c1 f4           brne    .+48            ; 0x1014 <main+0x412>
     fe4:       80 91 81 00     lds     r24, 0x0081     ; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
     fe8:       88 7f           andi    r24, 0xF8       ; 248
     fea:       81 60           ori     r24, 0x01       ; 1
     fec:       80 93 81 00     sts     0x0081, r24     ; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
     ff0:       b0 92 89 00     sts     0x0089, r11     ; 0x800089 <__TEXT_REGION_LENGTH__+0x7e0089>
     ff4:       a0 92 88 00     sts     0x0088, r10     ; 0x800088 <__TEXT_REGION_LENGTH__+0x7e0088>
     ff8:       40 92 56 01     sts     0x0156, r4      ; 0x800156 <timer1_toggle_count>
     ffc:       50 92 57 01     sts     0x0157, r5      ; 0x800157 <timer1_toggle_count+0x1>
    1000:       60 92 58 01     sts     0x0158, r6      ; 0x800158 <timer1_toggle_count+0x2>
    1004:       70 92 59 01     sts     0x0159, r7      ; 0x800159 <timer1_toggle_count+0x3>
    1008:       80 91 6f 00     lds     r24, 0x006F     ; 0x80006f <__TEXT_REGION_LENGTH__+0x7e006f>
    100c:       82 60           ori     r24, 0x02       ; 2
    100e:       80 93 6f 00     sts     0x006F, r24     ; 0x80006f <__TEXT_REGION_LENGTH__+0x7e006f>
    1012:       12 c0           rjmp    .+36            ; 0x1038 <main+0x436>
    1014:       12 30           cpi     r17, 0x02       ; 2
    1016:       81 f4           brne    .+32            ; 0x1038 <main+0x436>
    1018:       8f e9           ldi     r24, 0x9F       ; 159
    101a:       80 93 b3 00     sts     0x00B3, r24     ; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
    101e:       40 92 52 01     sts     0x0152, r4      ; 0x800152 <timer2_toggle_count>
    1022:       50 92 53 01     sts     0x0153, r5      ; 0x800153 <timer2_toggle_count+0x1>
    1026:       60 92 54 01     sts     0x0154, r6      ; 0x800154 <timer2_toggle_count+0x2>
    102a:       70 92 55 01     sts     0x0155, r7      ; 0x800155 <timer2_toggle_count+0x3>
    102e:       80 91 70 00     lds     r24, 0x0070     ; 0x800070 <__TEXT_REGION_LENGTH__+0x7e0070>
    1032:       82 60           ori     r24, 0x02       ; 2
    1034:       80 93 70 00     sts     0x0070, r24     ; 0x800070 <__TEXT_REGION_LENGTH__+0x7e0070>
    1038:       64 ef           ldi     r22, 0xF4       ; 244
    103a:       71 e0           ldi     r23, 0x01       ; 1
    103c:       80 e0           ldi     r24, 0x00       ; 0
    103e:       90 e0           ldi     r25, 0x00       ; 0
    1040:       0e 94 6b 02     call    0x4d6   ; 0x4d6 <delay>
    1044:       8b e0           ldi     r24, 0x0B       ; 11
    1046:       0e 94 df 01     call    0x3be   ; 0x3be <noTone(unsigned char)>
    104a:       6a ef           ldi     r22, 0xFA       ; 250
    104c:       70 e0           ldi     r23, 0x00       ; 0
    104e:       80 e0           ldi     r24, 0x00       ; 0
    1050:       90 e0           ldi     r25, 0x00       ; 0
    1052:       0e 94 6b 02     call    0x4d6   ; 0x4d6 <delay>
    1056:       23 c0           rjmp    .+70            ; 0x109e <main+0x49c>
    1058:       9c 01           movw    r18, r24
    105a:       23 53           subi    r18, 0x33       ; 51
    105c:       31 09           sbc     r19, r1
    105e:       27 32           cpi     r18, 0x27       ; 39
    1060:       31 05           cpc     r19, r1
    1062:       50 f4           brcc    .+20            ; 0x1078 <main+0x476>
    1064:       60 e0           ldi     r22, 0x00       ; 0
    1066:       88 e0           ldi     r24, 0x08       ; 8
    1068:       0e 94 93 01     call    0x326   ; 0x326 <digitalWrite>
    106c:       61 e0           ldi     r22, 0x01       ; 1
    106e:       89 e0           ldi     r24, 0x09       ; 9
    1070:       0e 94 93 01     call    0x326   ; 0x326 <digitalWrite>
    1074:       60 e0           ldi     r22, 0x00       ; 0
    1076:       10 c0           rjmp    .+32            ; 0x1098 <main+0x496>
    1078:       8b 35           cpi     r24, 0x5B       ; 91
    107a:       91 05           cpc     r25, r1
    107c:       84 f0           brlt    .+32            ; 0x109e <main+0x49c>
    107e:       60 e0           ldi     r22, 0x00       ; 0
    1080:       8c e0           ldi     r24, 0x0C       ; 12
    1082:       0e 94 93 01     call    0x326   ; 0x326 <digitalWrite>
    1086:       60 e0           ldi     r22, 0x00       ; 0
    1088:       88 e0           ldi     r24, 0x08       ; 8
    108a:       0e 94 93 01     call    0x326   ; 0x326 <digitalWrite>
    108e:       60 e0           ldi     r22, 0x00       ; 0
    1090:       89 e0           ldi     r24, 0x09       ; 9
    1092:       0e 94 93 01     call    0x326   ; 0x326 <digitalWrite>
    1096:       61 e0           ldi     r22, 0x01       ; 1
    1098:       8a e0           ldi     r24, 0x0A       ; 10
    109a:       0e 94 93 01     call    0x326   ; 0x326 <digitalWrite>
    109e:       0e 94 5e 01     call    0x2bc   ; 0x2bc <serialEventRun()>
    10a2:       27 ce           rjmp    .-946           ; 0xcf2 <main+0xf0>
    10a4:       80 91 b1 00     lds     r24, 0x00B1     ; 0x8000b1 <__TEXT_REGION_LENGTH__+0x7e00b1>
    10a8:       88 7f           andi    r24, 0xF8       ; 248
    10aa:       83 60           ori     r24, 0x03       ; 3
    10ac:       80 93 b1 00     sts     0x00B1, r24     ; 0x8000b1 <__TEXT_REGION_LENGTH__+0x7e00b1>
    10b0:       8c e7           ldi     r24, 0x7C       ; 124
    10b2:       b3 cf           rjmp    .-154           ; 0x101a <main+0x418>
    10b4:       85 b5           in      r24, 0x25       ; 37
    10b6:       88 7f           andi    r24, 0xF8       ; 248
    10b8:       83 60           ori     r24, 0x03       ; 3
    10ba:       85 bd           out     0x25, r24       ; 37
    10bc:       fd e3           ldi     r31, 0x3D       ; 61
    10be:       f7 bd           out     0x27, r31       ; 39
    10c0:       40 92 5a 01     sts     0x015A, r4      ; 0x80015a <timer0_toggle_count>
    10c4:       50 92 5b 01     sts     0x015B, r5      ; 0x80015b <timer0_toggle_count+0x1>
    10c8:       60 92 5c 01     sts     0x015C, r6      ; 0x80015c <timer0_toggle_count+0x2>
    10cc:       70 92 5d 01     sts     0x015D, r7      ; 0x80015d <timer0_toggle_count+0x3>
    10d0:       80 91 6e 00     lds     r24, 0x006E     ; 0x80006e <__TEXT_REGION_LENGTH__+0x7e006e>
    10d4:       82 60           ori     r24, 0x02       ; 2
    10d6:       80 93 6e 00     sts     0x006E, r24     ; 0x80006e <__TEXT_REGION_LENGTH__+0x7e006e>
    10da:       ae cf           rjmp    .-164           ; 0x1038 <main+0x436>

000010dc <__fixsfsi>:
    10dc:       0e 94 75 08     call    0x10ea  ; 0x10ea <__fixunssfsi>
    10e0:       68 94           set
    10e2:       b1 11           cpse    r27, r1
    10e4:       0c 94 04 09     jmp     0x1208  ; 0x1208 <__fp_szero>
    10e8:       08 95           ret

000010ea <__fixunssfsi>:
    10ea:       0e 94 e9 08     call    0x11d2  ; 0x11d2 <__fp_splitA>
    10ee:       88 f0           brcs    .+34            ; 0x1112 <__fixunssfsi+0x28>
    10f0:       9f 57           subi    r25, 0x7F       ; 127
    10f2:       98 f0           brcs    .+38            ; 0x111a <__fixunssfsi+0x30>
    10f4:       b9 2f           mov     r27, r25
    10f6:       99 27           eor     r25, r25
    10f8:       b7 51           subi    r27, 0x17       ; 23
    10fa:       b0 f0           brcs    .+44            ; 0x1128 <__fixunssfsi+0x3e>
    10fc:       e1 f0           breq    .+56            ; 0x1136 <__fixunssfsi+0x4c>
    10fe:       66 0f           add     r22, r22
    1100:       77 1f           adc     r23, r23
    1102:       88 1f           adc     r24, r24
    1104:       99 1f           adc     r25, r25
    1106:       1a f0           brmi    .+6             ; 0x110e <__fixunssfsi+0x24>
    1108:       ba 95           dec     r27
    110a:       c9 f7           brne    .-14            ; 0x10fe <__fixunssfsi+0x14>
    110c:       14 c0           rjmp    .+40            ; 0x1136 <__fixunssfsi+0x4c>
    110e:       b1 30           cpi     r27, 0x01       ; 1
    1110:       91 f0           breq    .+36            ; 0x1136 <__fixunssfsi+0x4c>
    1112:       0e 94 03 09     call    0x1206  ; 0x1206 <__fp_zero>
    1116:       b1 e0           ldi     r27, 0x01       ; 1
    1118:       08 95           ret
    111a:       0c 94 03 09     jmp     0x1206  ; 0x1206 <__fp_zero>
    111e:       67 2f           mov     r22, r23
    1120:       78 2f           mov     r23, r24
    1122:       88 27           eor     r24, r24
    1124:       b8 5f           subi    r27, 0xF8       ; 248
    1126:       39 f0           breq    .+14            ; 0x1136 <__fixunssfsi+0x4c>
    1128:       b9 3f           cpi     r27, 0xF9       ; 249
    112a:       cc f3           brlt    .-14            ; 0x111e <__fixunssfsi+0x34>
    112c:       86 95           lsr     r24
    112e:       77 95           ror     r23
    1130:       67 95           ror     r22
    1132:       b3 95           inc     r27
    1134:       d9 f7           brne    .-10            ; 0x112c <__fixunssfsi+0x42>
    1136:       3e f4           brtc    .+14            ; 0x1146 <__fixunssfsi+0x5c>
    1138:       90 95           com     r25
    113a:       80 95           com     r24
    113c:       70 95           com     r23
    113e:       61 95           neg     r22
    1140:       7f 4f           sbci    r23, 0xFF       ; 255
    1142:       8f 4f           sbci    r24, 0xFF       ; 255
    1144:       9f 4f           sbci    r25, 0xFF       ; 255
    1146:       08 95           ret

00001148 <__floatunsisf>:
    1148:       e8 94           clt
    114a:       09 c0           rjmp    .+18            ; 0x115e <__floatsisf+0x12>

0000114c <__floatsisf>:
    114c:       97 fb           bst     r25, 7
    114e:       3e f4           brtc    .+14            ; 0x115e <__floatsisf+0x12>
    1150:       90 95           com     r25
    1152:       80 95           com     r24
    1154:       70 95           com     r23
    1156:       61 95           neg     r22
    1158:       7f 4f           sbci    r23, 0xFF       ; 255
    115a:       8f 4f           sbci    r24, 0xFF       ; 255
    115c:       9f 4f           sbci    r25, 0xFF       ; 255
    115e:       99 23           and     r25, r25
    1160:       a9 f0           breq    .+42            ; 0x118c <__floatsisf+0x40>
    1162:       f9 2f           mov     r31, r25
    1164:       96 e9           ldi     r25, 0x96       ; 150
    1166:       bb 27           eor     r27, r27
    1168:       93 95           inc     r25
    116a:       f6 95           lsr     r31
    116c:       87 95           ror     r24
    116e:       77 95           ror     r23
    1170:       67 95           ror     r22
    1172:       b7 95           ror     r27
    1174:       f1 11           cpse    r31, r1
    1176:       f8 cf           rjmp    .-16            ; 0x1168 <__floatsisf+0x1c>
    1178:       fa f4           brpl    .+62            ; 0x11b8 <__floatsisf+0x6c>
    117a:       bb 0f           add     r27, r27
    117c:       11 f4           brne    .+4             ; 0x1182 <__floatsisf+0x36>
    117e:       60 ff           sbrs    r22, 0
    1180:       1b c0           rjmp    .+54            ; 0x11b8 <__floatsisf+0x6c>
    1182:       6f 5f           subi    r22, 0xFF       ; 255
    1184:       7f 4f           sbci    r23, 0xFF       ; 255
    1186:       8f 4f           sbci    r24, 0xFF       ; 255
    1188:       9f 4f           sbci    r25, 0xFF       ; 255
    118a:       16 c0           rjmp    .+44            ; 0x11b8 <__floatsisf+0x6c>
    118c:       88 23           and     r24, r24
    118e:       11 f0           breq    .+4             ; 0x1194 <__floatsisf+0x48>
    1190:       96 e9           ldi     r25, 0x96       ; 150
    1192:       11 c0           rjmp    .+34            ; 0x11b6 <__floatsisf+0x6a>
    1194:       77 23           and     r23, r23
    1196:       21 f0           breq    .+8             ; 0x11a0 <__floatsisf+0x54>
    1198:       9e e8           ldi     r25, 0x8E       ; 142
    119a:       87 2f           mov     r24, r23
    119c:       76 2f           mov     r23, r22
    119e:       05 c0           rjmp    .+10            ; 0x11aa <__floatsisf+0x5e>
    11a0:       66 23           and     r22, r22
    11a2:       71 f0           breq    .+28            ; 0x11c0 <__floatsisf+0x74>
    11a4:       96 e8           ldi     r25, 0x86       ; 134
    11a6:       86 2f           mov     r24, r22
    11a8:       70 e0           ldi     r23, 0x00       ; 0
    11aa:       60 e0           ldi     r22, 0x00       ; 0
    11ac:       2a f0           brmi    .+10            ; 0x11b8 <__floatsisf+0x6c>
    11ae:       9a 95           dec     r25
    11b0:       66 0f           add     r22, r22
    11b2:       77 1f           adc     r23, r23
    11b4:       88 1f           adc     r24, r24
    11b6:       da f7           brpl    .-10            ; 0x11ae <__floatsisf+0x62>
    11b8:       88 0f           add     r24, r24
    11ba:       96 95           lsr     r25
    11bc:       87 95           ror     r24
    11be:       97 f9           bld     r25, 7
    11c0:       08 95           ret

000011c2 <__fp_split3>:
    11c2:       57 fd           sbrc    r21, 7
    11c4:       90 58           subi    r25, 0x80       ; 128
    11c6:       44 0f           add     r20, r20
    11c8:       55 1f           adc     r21, r21
    11ca:       59 f0           breq    .+22            ; 0x11e2 <__fp_splitA+0x10>
    11cc:       5f 3f           cpi     r21, 0xFF       ; 255
    11ce:       71 f0           breq    .+28            ; 0x11ec <__fp_splitA+0x1a>
    11d0:       47 95           ror     r20

000011d2 <__fp_splitA>:
    11d2:       88 0f           add     r24, r24
    11d4:       97 fb           bst     r25, 7
    11d6:       99 1f           adc     r25, r25
    11d8:       61 f0           breq    .+24            ; 0x11f2 <__fp_splitA+0x20>
    11da:       9f 3f           cpi     r25, 0xFF       ; 255
    11dc:       79 f0           breq    .+30            ; 0x11fc <__fp_splitA+0x2a>
    11de:       87 95           ror     r24
    11e0:       08 95           ret
    11e2:       12 16           cp      r1, r18
    11e4:       13 06           cpc     r1, r19
    11e6:       14 06           cpc     r1, r20
    11e8:       55 1f           adc     r21, r21
    11ea:       f2 cf           rjmp    .-28            ; 0x11d0 <__fp_split3+0xe>
    11ec:       46 95           lsr     r20
    11ee:       f1 df           rcall   .-30            ; 0x11d2 <__fp_splitA>
    11f0:       08 c0           rjmp    .+16            ; 0x1202 <__fp_splitA+0x30>
    11f2:       16 16           cp      r1, r22
    11f4:       17 06           cpc     r1, r23
    11f6:       18 06           cpc     r1, r24
    11f8:       99 1f           adc     r25, r25
    11fa:       f1 cf           rjmp    .-30            ; 0x11de <__fp_splitA+0xc>
    11fc:       86 95           lsr     r24
    11fe:       71 05           cpc     r23, r1
    1200:       61 05           cpc     r22, r1
    1202:       08 94           sec
    1204:       08 95           ret

00001206 <__fp_zero>:
    1206:       e8 94           clt

00001208 <__fp_szero>:
    1208:       bb 27           eor     r27, r27
    120a:       66 27           eor     r22, r22
    120c:       77 27           eor     r23, r23
    120e:       cb 01           movw    r24, r22
    1210:       97 f9           bld     r25, 7
    1212:       08 95           ret

00001214 <__mulsf3>:
    1214:       0e 94 1d 09     call    0x123a  ; 0x123a <__mulsf3x>
    1218:       0c 94 8e 09     jmp     0x131c  ; 0x131c <__fp_round>
    121c:       0e 94 80 09     call    0x1300  ; 0x1300 <__fp_pscA>
    1220:       38 f0           brcs    .+14            ; 0x1230 <__mulsf3+0x1c>
    1222:       0e 94 87 09     call    0x130e  ; 0x130e <__fp_pscB>
    1226:       20 f0           brcs    .+8             ; 0x1230 <__mulsf3+0x1c>
    1228:       95 23           and     r25, r21
    122a:       11 f0           breq    .+4             ; 0x1230 <__mulsf3+0x1c>
    122c:       0c 94 77 09     jmp     0x12ee  ; 0x12ee <__fp_inf>
    1230:       0c 94 7d 09     jmp     0x12fa  ; 0x12fa <__fp_nan>
    1234:       11 24           eor     r1, r1
    1236:       0c 94 04 09     jmp     0x1208  ; 0x1208 <__fp_szero>

0000123a <__mulsf3x>:
    123a:       0e 94 e1 08     call    0x11c2  ; 0x11c2 <__fp_split3>
    123e:       70 f3           brcs    .-36            ; 0x121c <__mulsf3+0x8>

00001240 <__mulsf3_pse>:
    1240:       95 9f           mul     r25, r21
    1242:       c1 f3           breq    .-16            ; 0x1234 <__mulsf3+0x20>
    1244:       95 0f           add     r25, r21
    1246:       50 e0           ldi     r21, 0x00       ; 0
    1248:       55 1f           adc     r21, r21
    124a:       62 9f           mul     r22, r18
    124c:       f0 01           movw    r30, r0
    124e:       72 9f           mul     r23, r18
    1250:       bb 27           eor     r27, r27
    1252:       f0 0d           add     r31, r0
    1254:       b1 1d           adc     r27, r1
    1256:       63 9f           mul     r22, r19
    1258:       aa 27           eor     r26, r26
    125a:       f0 0d           add     r31, r0
    125c:       b1 1d           adc     r27, r1
    125e:       aa 1f           adc     r26, r26
    1260:       64 9f           mul     r22, r20
    1262:       66 27           eor     r22, r22
    1264:       b0 0d           add     r27, r0
    1266:       a1 1d           adc     r26, r1
    1268:       66 1f           adc     r22, r22
    126a:       82 9f           mul     r24, r18
    126c:       22 27           eor     r18, r18
    126e:       b0 0d           add     r27, r0
    1270:       a1 1d           adc     r26, r1
    1272:       62 1f           adc     r22, r18
    1274:       73 9f           mul     r23, r19
    1276:       b0 0d           add     r27, r0
    1278:       a1 1d           adc     r26, r1
    127a:       62 1f           adc     r22, r18
    127c:       83 9f           mul     r24, r19
    127e:       a0 0d           add     r26, r0
    1280:       61 1d           adc     r22, r1
    1282:       22 1f           adc     r18, r18
    1284:       74 9f           mul     r23, r20
    1286:       33 27           eor     r19, r19
    1288:       a0 0d           add     r26, r0
    128a:       61 1d           adc     r22, r1
    128c:       23 1f           adc     r18, r19
    128e:       84 9f           mul     r24, r20
    1290:       60 0d           add     r22, r0
    1292:       21 1d           adc     r18, r1
    1294:       82 2f           mov     r24, r18
    1296:       76 2f           mov     r23, r22
    1298:       6a 2f           mov     r22, r26
    129a:       11 24           eor     r1, r1
    129c:       9f 57           subi    r25, 0x7F       ; 127
    129e:       50 40           sbci    r21, 0x00       ; 0
    12a0:       9a f0           brmi    .+38            ; 0x12c8 <__mulsf3_pse+0x88>
    12a2:       f1 f0           breq    .+60            ; 0x12e0 <__mulsf3_pse+0xa0>
    12a4:       88 23           and     r24, r24
    12a6:       4a f0           brmi    .+18            ; 0x12ba <__mulsf3_pse+0x7a>
    12a8:       ee 0f           add     r30, r30
    12aa:       ff 1f           adc     r31, r31
    12ac:       bb 1f           adc     r27, r27
    12ae:       66 1f           adc     r22, r22
    12b0:       77 1f           adc     r23, r23
    12b2:       88 1f           adc     r24, r24
    12b4:       91 50           subi    r25, 0x01       ; 1
    12b6:       50 40           sbci    r21, 0x00       ; 0
    12b8:       a9 f7           brne    .-22            ; 0x12a4 <__mulsf3_pse+0x64>
    12ba:       9e 3f           cpi     r25, 0xFE       ; 254
    12bc:       51 05           cpc     r21, r1
    12be:       80 f0           brcs    .+32            ; 0x12e0 <__mulsf3_pse+0xa0>
    12c0:       0c 94 77 09     jmp     0x12ee  ; 0x12ee <__fp_inf>
    12c4:       0c 94 04 09     jmp     0x1208  ; 0x1208 <__fp_szero>
    12c8:       5f 3f           cpi     r21, 0xFF       ; 255
    12ca:       e4 f3           brlt    .-8             ; 0x12c4 <__mulsf3_pse+0x84>
    12cc:       98 3e           cpi     r25, 0xE8       ; 232
    12ce:       d4 f3           brlt    .-12            ; 0x12c4 <__mulsf3_pse+0x84>
    12d0:       86 95           lsr     r24
    12d2:       77 95           ror     r23
    12d4:       67 95           ror     r22
    12d6:       b7 95           ror     r27
    12d8:       f7 95           ror     r31
    12da:       e7 95           ror     r30
    12dc:       9f 5f           subi    r25, 0xFF       ; 255
    12de:       c1 f7           brne    .-16            ; 0x12d0 <__mulsf3_pse+0x90>
    12e0:       fe 2b           or      r31, r30
    12e2:       88 0f           add     r24, r24
    12e4:       91 1d           adc     r25, r1
    12e6:       96 95           lsr     r25
    12e8:       87 95           ror     r24
    12ea:       97 f9           bld     r25, 7
    12ec:       08 95           ret

000012ee <__fp_inf>:
    12ee:       97 f9           bld     r25, 7
    12f0:       9f 67           ori     r25, 0x7F       ; 127
    12f2:       80 e8           ldi     r24, 0x80       ; 128
    12f4:       70 e0           ldi     r23, 0x00       ; 0
    12f6:       60 e0           ldi     r22, 0x00       ; 0
    12f8:       08 95           ret

000012fa <__fp_nan>:
    12fa:       9f ef           ldi     r25, 0xFF       ; 255
    12fc:       80 ec           ldi     r24, 0xC0       ; 192
    12fe:       08 95           ret

00001300 <__fp_pscA>:
    1300:       00 24           eor     r0, r0
    1302:       0a 94           dec     r0
    1304:       16 16           cp      r1, r22
    1306:       17 06           cpc     r1, r23
    1308:       18 06           cpc     r1, r24
    130a:       09 06           cpc     r0, r25
    130c:       08 95           ret

0000130e <__fp_pscB>:
    130e:       00 24           eor     r0, r0
    1310:       0a 94           dec     r0
    1312:       12 16           cp      r1, r18
    1314:       13 06           cpc     r1, r19
    1316:       14 06           cpc     r1, r20
    1318:       05 06           cpc     r0, r21
    131a:       08 95           ret

0000131c <__fp_round>:
    131c:       09 2e           mov     r0, r25
    131e:       03 94           inc     r0
    1320:       00 0c           add     r0, r0
    1322:       11 f4           brne    .+4             ; 0x1328 <__fp_round+0xc>
    1324:       88 23           and     r24, r24
    1326:       52 f0           brmi    .+20            ; 0x133c <__fp_round+0x20>
    1328:       bb 0f           add     r27, r27
    132a:       40 f4           brcc    .+16            ; 0x133c <__fp_round+0x20>
    132c:       bf 2b           or      r27, r31
    132e:       11 f4           brne    .+4             ; 0x1334 <__fp_round+0x18>
    1330:       60 ff           sbrs    r22, 0
    1332:       04 c0           rjmp    .+8             ; 0x133c <__fp_round+0x20>
    1334:       6f 5f           subi    r22, 0xFF       ; 255
    1336:       7f 4f           sbci    r23, 0xFF       ; 255
    1338:       8f 4f           sbci    r24, 0xFF       ; 255
    133a:       9f 4f           sbci    r25, 0xFF       ; 255
    133c:       08 95           ret

0000133e <__udivmodsi4>:
    133e:       a1 e2           ldi     r26, 0x21       ; 33
    1340:       1a 2e           mov     r1, r26
    1342:       aa 1b           sub     r26, r26
    1344:       bb 1b           sub     r27, r27
    1346:       fd 01           movw    r30, r26
    1348:       0d c0           rjmp    .+26            ; 0x1364 <__udivmodsi4_ep>

0000134a <__udivmodsi4_loop>:
    134a:       aa 1f           adc     r26, r26
    134c:       bb 1f           adc     r27, r27
    134e:       ee 1f           adc     r30, r30
    1350:       ff 1f           adc     r31, r31
    1352:       a2 17           cp      r26, r18
    1354:       b3 07           cpc     r27, r19
    1356:       e4 07           cpc     r30, r20
    1358:       f5 07           cpc     r31, r21
    135a:       20 f0           brcs    .+8             ; 0x1364 <__udivmodsi4_ep>
    135c:       a2 1b           sub     r26, r18
    135e:       b3 0b           sbc     r27, r19
    1360:       e4 0b           sbc     r30, r20
    1362:       f5 0b           sbc     r31, r21

00001364 <__udivmodsi4_ep>:
    1364:       66 1f           adc     r22, r22
    1366:       77 1f           adc     r23, r23
    1368:       88 1f           adc     r24, r24
    136a:       99 1f           adc     r25, r25
    136c:       1a 94           dec     r1
    136e:       69 f7           brne    .-38            ; 0x134a <__udivmodsi4_loop>
    1370:       60 95           com     r22
    1372:       70 95           com     r23
    1374:       80 95           com     r24
    1376:       90 95           com     r25
    1378:       9b 01           movw    r18, r22
    137a:       ac 01           movw    r20, r24
    137c:       bd 01           movw    r22, r26
    137e:       cf 01           movw    r24, r30
    1380:       08 95           ret

00001382 <__tablejump2__>:
    1382:       ee 0f           add     r30, r30
    1384:       ff 1f           adc     r31, r31
    1386:       05 90           lpm     r0, Z+
    1388:       f4 91           lpm     r31, Z
    138a:       e0 2d           mov     r30, r0
    138c:       09 94           ijmp

0000138e <abort>:
    138e:       81 e0           ldi     r24, 0x01       ; 1
    1390:       90 e0           ldi     r25, 0x00       ; 0
    1392:       f8 94           cli
    1394:       0c 94 cc 09     jmp     0x1398  ; 0x1398 <_exit>

00001398 <_exit>:
    1398:       f8 94           cli

0000139a <__stop_program>:
    139a:       ff cf           rjmp    .-2             ; 0x139a <__stop_program>