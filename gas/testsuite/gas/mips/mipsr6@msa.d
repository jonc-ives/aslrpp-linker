#objdump: -dr --prefix-addresses --show-raw-insn -Mmsa
#name: MSA instructions
#as: -32 -mmsa --defsym insn_log2=2
#source: msa.s

.*: +file format .*mips.*

Disassembly of section \.text:
[0-9a-f]+ <[^>]*> 7802080d 	sll\.b	\$w0,\$w1,\$w2
[0-9a-f]+ <[^>]*> 782520cd 	sll\.h	\$w3,\$w4,\$w5
[0-9a-f]+ <[^>]*> 7848398d 	sll\.w	\$w6,\$w7,\$w8
[0-9a-f]+ <[^>]*> 786b524d 	sll\.d	\$w9,\$w10,\$w11
[0-9a-f]+ <[^>]*> 78706b09 	slli\.b	\$w12,\$w13,0x0
[0-9a-f]+ <[^>]*> 78777b89 	slli\.b	\$w14,\$w15,0x7
[0-9a-f]+ <[^>]*> 78608c09 	slli\.h	\$w16,\$w17,0x0
[0-9a-f]+ <[^>]*> 786f9c89 	slli\.h	\$w18,\$w19,0xf
[0-9a-f]+ <[^>]*> 7840ad09 	slli\.w	\$w20,\$w21,0x0
[0-9a-f]+ <[^>]*> 785fbd89 	slli\.w	\$w22,\$w23,0x1f
[0-9a-f]+ <[^>]*> 7800ce09 	slli\.d	\$w24,\$w25,0x0
[0-9a-f]+ <[^>]*> 783fde89 	slli\.d	\$w26,\$w27,0x3f
[0-9a-f]+ <[^>]*> 789eef0d 	sra\.b	\$w28,\$w29,\$w30
[0-9a-f]+ <[^>]*> 78a107cd 	sra\.h	\$w31,\$w0,\$w1
[0-9a-f]+ <[^>]*> 78c4188d 	sra\.w	\$w2,\$w3,\$w4
[0-9a-f]+ <[^>]*> 78e7314d 	sra\.d	\$w5,\$w6,\$w7
[0-9a-f]+ <[^>]*> 78f04a09 	srai\.b	\$w8,\$w9,0x0
[0-9a-f]+ <[^>]*> 78f75a89 	srai\.b	\$w10,\$w11,0x7
[0-9a-f]+ <[^>]*> 78e06b09 	srai\.h	\$w12,\$w13,0x0
[0-9a-f]+ <[^>]*> 78ef7b89 	srai\.h	\$w14,\$w15,0xf
[0-9a-f]+ <[^>]*> 78c08c09 	srai\.w	\$w16,\$w17,0x0
[0-9a-f]+ <[^>]*> 78df9c89 	srai\.w	\$w18,\$w19,0x1f
[0-9a-f]+ <[^>]*> 7880ad09 	srai\.d	\$w20,\$w21,0x0
[0-9a-f]+ <[^>]*> 78bfbd89 	srai\.d	\$w22,\$w23,0x3f
[0-9a-f]+ <[^>]*> 791ace0d 	srl\.b	\$w24,\$w25,\$w26
[0-9a-f]+ <[^>]*> 793de6cd 	srl\.h	\$w27,\$w28,\$w29
[0-9a-f]+ <[^>]*> 7940ff8d 	srl\.w	\$w30,\$w31,\$w0
[0-9a-f]+ <[^>]*> 7963104d 	srl\.d	\$w1,\$w2,\$w3
[0-9a-f]+ <[^>]*> 79702909 	srli\.b	\$w4,\$w5,0x0
[0-9a-f]+ <[^>]*> 79773989 	srli\.b	\$w6,\$w7,0x7
[0-9a-f]+ <[^>]*> 79604a09 	srli\.h	\$w8,\$w9,0x0
[0-9a-f]+ <[^>]*> 796f5a89 	srli\.h	\$w10,\$w11,0xf
[0-9a-f]+ <[^>]*> 79406b09 	srli\.w	\$w12,\$w13,0x0
[0-9a-f]+ <[^>]*> 795f7b89 	srli\.w	\$w14,\$w15,0x1f
[0-9a-f]+ <[^>]*> 79008c09 	srli\.d	\$w16,\$w17,0x0
[0-9a-f]+ <[^>]*> 793f9c89 	srli\.d	\$w18,\$w19,0x3f
[0-9a-f]+ <[^>]*> 7996ad0d 	bclr\.b	\$w20,\$w21,\$w22
[0-9a-f]+ <[^>]*> 79b9c5cd 	bclr\.h	\$w23,\$w24,\$w25
[0-9a-f]+ <[^>]*> 79dcde8d 	bclr\.w	\$w26,\$w27,\$w28
[0-9a-f]+ <[^>]*> 79fff74d 	bclr\.d	\$w29,\$w30,\$w31
[0-9a-f]+ <[^>]*> 79f00809 	bclri\.b	\$w0,\$w1,0x0
[0-9a-f]+ <[^>]*> 79f71889 	bclri\.b	\$w2,\$w3,0x7
[0-9a-f]+ <[^>]*> 79e02909 	bclri\.h	\$w4,\$w5,0x0
[0-9a-f]+ <[^>]*> 79ef3989 	bclri\.h	\$w6,\$w7,0xf
[0-9a-f]+ <[^>]*> 79c04a09 	bclri\.w	\$w8,\$w9,0x0
[0-9a-f]+ <[^>]*> 79df5a89 	bclri\.w	\$w10,\$w11,0x1f
[0-9a-f]+ <[^>]*> 79806b09 	bclri\.d	\$w12,\$w13,0x0
[0-9a-f]+ <[^>]*> 79bf7b89 	bclri\.d	\$w14,\$w15,0x3f
[0-9a-f]+ <[^>]*> 7a128c0d 	bset\.b	\$w16,\$w17,\$w18
[0-9a-f]+ <[^>]*> 7a35a4cd 	bset\.h	\$w19,\$w20,\$w21
[0-9a-f]+ <[^>]*> 7a58bd8d 	bset\.w	\$w22,\$w23,\$w24
[0-9a-f]+ <[^>]*> 7a7bd64d 	bset\.d	\$w25,\$w26,\$w27
[0-9a-f]+ <[^>]*> 7a70ef09 	bseti\.b	\$w28,\$w29,0x0
[0-9a-f]+ <[^>]*> 7a77ff89 	bseti\.b	\$w30,\$w31,0x7
[0-9a-f]+ <[^>]*> 7a600809 	bseti\.h	\$w0,\$w1,0x0
[0-9a-f]+ <[^>]*> 7a6f1889 	bseti\.h	\$w2,\$w3,0xf
[0-9a-f]+ <[^>]*> 7a402909 	bseti\.w	\$w4,\$w5,0x0
[0-9a-f]+ <[^>]*> 7a5f3989 	bseti\.w	\$w6,\$w7,0x1f
[0-9a-f]+ <[^>]*> 7a004a09 	bseti\.d	\$w8,\$w9,0x0
[0-9a-f]+ <[^>]*> 7a3f5a89 	bseti\.d	\$w10,\$w11,0x3f
[0-9a-f]+ <[^>]*> 7a8e6b0d 	bneg\.b	\$w12,\$w13,\$w14
[0-9a-f]+ <[^>]*> 7ab183cd 	bneg\.h	\$w15,\$w16,\$w17
[0-9a-f]+ <[^>]*> 7ad49c8d 	bneg\.w	\$w18,\$w19,\$w20
[0-9a-f]+ <[^>]*> 7af7b54d 	bneg\.d	\$w21,\$w22,\$w23
[0-9a-f]+ <[^>]*> 7af0ce09 	bnegi\.b	\$w24,\$w25,0x0
[0-9a-f]+ <[^>]*> 7af7de89 	bnegi\.b	\$w26,\$w27,0x7
[0-9a-f]+ <[^>]*> 7ae0ef09 	bnegi\.h	\$w28,\$w29,0x0
[0-9a-f]+ <[^>]*> 7aefff89 	bnegi\.h	\$w30,\$w31,0xf
[0-9a-f]+ <[^>]*> 7ac00809 	bnegi\.w	\$w0,\$w1,0x0
[0-9a-f]+ <[^>]*> 7adf1889 	bnegi\.w	\$w2,\$w3,0x1f
[0-9a-f]+ <[^>]*> 7a802909 	bnegi\.d	\$w4,\$w5,0x0
[0-9a-f]+ <[^>]*> 7abf3989 	bnegi\.d	\$w6,\$w7,0x3f
[0-9a-f]+ <[^>]*> 7b0a4a0d 	binsl\.b	\$w8,\$w9,\$w10
[0-9a-f]+ <[^>]*> 7b2d62cd 	binsl\.h	\$w11,\$w12,\$w13
[0-9a-f]+ <[^>]*> 7b507b8d 	binsl\.w	\$w14,\$w15,\$w16
[0-9a-f]+ <[^>]*> 7b73944d 	binsl\.d	\$w17,\$w18,\$w19
[0-9a-f]+ <[^>]*> 7b70ad09 	binsli\.b	\$w20,\$w21,0x0
[0-9a-f]+ <[^>]*> 7b77bd89 	binsli\.b	\$w22,\$w23,0x7
[0-9a-f]+ <[^>]*> 7b60ce09 	binsli\.h	\$w24,\$w25,0x0
[0-9a-f]+ <[^>]*> 7b6fde89 	binsli\.h	\$w26,\$w27,0xf
[0-9a-f]+ <[^>]*> 7b40ef09 	binsli\.w	\$w28,\$w29,0x0
[0-9a-f]+ <[^>]*> 7b5fff89 	binsli\.w	\$w30,\$w31,0x1f
[0-9a-f]+ <[^>]*> 7b000809 	binsli\.d	\$w0,\$w1,0x0
[0-9a-f]+ <[^>]*> 7b3f1889 	binsli\.d	\$w2,\$w3,0x3f
[0-9a-f]+ <[^>]*> 7b86290d 	binsr\.b	\$w4,\$w5,\$w6
[0-9a-f]+ <[^>]*> 7ba941cd 	binsr\.h	\$w7,\$w8,\$w9
[0-9a-f]+ <[^>]*> 7bcc5a8d 	binsr\.w	\$w10,\$w11,\$w12
[0-9a-f]+ <[^>]*> 7bef734d 	binsr\.d	\$w13,\$w14,\$w15
[0-9a-f]+ <[^>]*> 7bf08c09 	binsri\.b	\$w16,\$w17,0x0
[0-9a-f]+ <[^>]*> 7bf79c89 	binsri\.b	\$w18,\$w19,0x7
[0-9a-f]+ <[^>]*> 7be0ad09 	binsri\.h	\$w20,\$w21,0x0
[0-9a-f]+ <[^>]*> 7befbd89 	binsri\.h	\$w22,\$w23,0xf
[0-9a-f]+ <[^>]*> 7bc0ce09 	binsri\.w	\$w24,\$w25,0x0
[0-9a-f]+ <[^>]*> 7bdfde89 	binsri\.w	\$w26,\$w27,0x1f
[0-9a-f]+ <[^>]*> 7b80ef09 	binsri\.d	\$w28,\$w29,0x0
[0-9a-f]+ <[^>]*> 7bbfff89 	binsri\.d	\$w30,\$w31,0x3f
[0-9a-f]+ <[^>]*> 7802080e 	addv\.b	\$w0,\$w1,\$w2
[0-9a-f]+ <[^>]*> 782520ce 	addv\.h	\$w3,\$w4,\$w5
[0-9a-f]+ <[^>]*> 7848398e 	addv\.w	\$w6,\$w7,\$w8
[0-9a-f]+ <[^>]*> 786b524e 	addv\.d	\$w9,\$w10,\$w11
[0-9a-f]+ <[^>]*> 78006b06 	addvi\.b	\$w12,\$w13,0
[0-9a-f]+ <[^>]*> 781f7b86 	addvi\.b	\$w14,\$w15,31
[0-9a-f]+ <[^>]*> 78208c06 	addvi\.h	\$w16,\$w17,0
[0-9a-f]+ <[^>]*> 783f9c86 	addvi\.h	\$w18,\$w19,31
[0-9a-f]+ <[^>]*> 7840ad06 	addvi\.w	\$w20,\$w21,0
[0-9a-f]+ <[^>]*> 785fbd86 	addvi\.w	\$w22,\$w23,31
[0-9a-f]+ <[^>]*> 7860ce06 	addvi\.d	\$w24,\$w25,0
[0-9a-f]+ <[^>]*> 787fde86 	addvi\.d	\$w26,\$w27,31
[0-9a-f]+ <[^>]*> 789eef0e 	subv\.b	\$w28,\$w29,\$w30
[0-9a-f]+ <[^>]*> 78a107ce 	subv\.h	\$w31,\$w0,\$w1
[0-9a-f]+ <[^>]*> 78c4188e 	subv\.w	\$w2,\$w3,\$w4
[0-9a-f]+ <[^>]*> 78e7314e 	subv\.d	\$w5,\$w6,\$w7
[0-9a-f]+ <[^>]*> 78804a06 	subvi\.b	\$w8,\$w9,0
[0-9a-f]+ <[^>]*> 789f5a86 	subvi\.b	\$w10,\$w11,31
[0-9a-f]+ <[^>]*> 78a06b06 	subvi\.h	\$w12,\$w13,0
[0-9a-f]+ <[^>]*> 78bf7b86 	subvi\.h	\$w14,\$w15,31
[0-9a-f]+ <[^>]*> 78c08c06 	subvi\.w	\$w16,\$w17,0
[0-9a-f]+ <[^>]*> 78df9c86 	subvi\.w	\$w18,\$w19,31
[0-9a-f]+ <[^>]*> 78e0ad06 	subvi\.d	\$w20,\$w21,0
[0-9a-f]+ <[^>]*> 78ffbd86 	subvi\.d	\$w22,\$w23,31
[0-9a-f]+ <[^>]*> 791ace0e 	max_s\.b	\$w24,\$w25,\$w26
[0-9a-f]+ <[^>]*> 793de6ce 	max_s\.h	\$w27,\$w28,\$w29
[0-9a-f]+ <[^>]*> 7940ff8e 	max_s\.w	\$w30,\$w31,\$w0
[0-9a-f]+ <[^>]*> 7963104e 	max_s\.d	\$w1,\$w2,\$w3
[0-9a-f]+ <[^>]*> 79102906 	maxi_s\.b	\$w4,\$w5,-16
[0-9a-f]+ <[^>]*> 790f3986 	maxi_s\.b	\$w6,\$w7,15
[0-9a-f]+ <[^>]*> 79304a06 	maxi_s\.h	\$w8,\$w9,-16
[0-9a-f]+ <[^>]*> 792f5a86 	maxi_s\.h	\$w10,\$w11,15
[0-9a-f]+ <[^>]*> 79506b06 	maxi_s\.w	\$w12,\$w13,-16
[0-9a-f]+ <[^>]*> 794f7b86 	maxi_s\.w	\$w14,\$w15,15
[0-9a-f]+ <[^>]*> 79708c06 	maxi_s\.d	\$w16,\$w17,-16
[0-9a-f]+ <[^>]*> 796f9c86 	maxi_s\.d	\$w18,\$w19,15
[0-9a-f]+ <[^>]*> 7996ad0e 	max_u\.b	\$w20,\$w21,\$w22
[0-9a-f]+ <[^>]*> 79b9c5ce 	max_u\.h	\$w23,\$w24,\$w25
[0-9a-f]+ <[^>]*> 79dcde8e 	max_u\.w	\$w26,\$w27,\$w28
[0-9a-f]+ <[^>]*> 79fff74e 	max_u\.d	\$w29,\$w30,\$w31
[0-9a-f]+ <[^>]*> 79800806 	maxi_u\.b	\$w0,\$w1,0
[0-9a-f]+ <[^>]*> 799f1886 	maxi_u\.b	\$w2,\$w3,31
[0-9a-f]+ <[^>]*> 79a02906 	maxi_u\.h	\$w4,\$w5,0
[0-9a-f]+ <[^>]*> 79bf3986 	maxi_u\.h	\$w6,\$w7,31
[0-9a-f]+ <[^>]*> 79c04a06 	maxi_u\.w	\$w8,\$w9,0
[0-9a-f]+ <[^>]*> 79df5a86 	maxi_u\.w	\$w10,\$w11,31
[0-9a-f]+ <[^>]*> 79e06b06 	maxi_u\.d	\$w12,\$w13,0
[0-9a-f]+ <[^>]*> 79ff7b86 	maxi_u\.d	\$w14,\$w15,31
[0-9a-f]+ <[^>]*> 7a128c0e 	min_s\.b	\$w16,\$w17,\$w18
[0-9a-f]+ <[^>]*> 7a35a4ce 	min_s\.h	\$w19,\$w20,\$w21
[0-9a-f]+ <[^>]*> 7a58bd8e 	min_s\.w	\$w22,\$w23,\$w24
[0-9a-f]+ <[^>]*> 7a7bd64e 	min_s\.d	\$w25,\$w26,\$w27
[0-9a-f]+ <[^>]*> 7a10ef06 	mini_s\.b	\$w28,\$w29,-16
[0-9a-f]+ <[^>]*> 7a0fff86 	mini_s\.b	\$w30,\$w31,15
[0-9a-f]+ <[^>]*> 7a300806 	mini_s\.h	\$w0,\$w1,-16
[0-9a-f]+ <[^>]*> 7a2f1886 	mini_s\.h	\$w2,\$w3,15
[0-9a-f]+ <[^>]*> 7a502906 	mini_s\.w	\$w4,\$w5,-16
[0-9a-f]+ <[^>]*> 7a4f3986 	mini_s\.w	\$w6,\$w7,15
[0-9a-f]+ <[^>]*> 7a704a06 	mini_s\.d	\$w8,\$w9,-16
[0-9a-f]+ <[^>]*> 7a6f5a86 	mini_s\.d	\$w10,\$w11,15
[0-9a-f]+ <[^>]*> 7a8e6b0e 	min_u\.b	\$w12,\$w13,\$w14
[0-9a-f]+ <[^>]*> 7ab183ce 	min_u\.h	\$w15,\$w16,\$w17
[0-9a-f]+ <[^>]*> 7ad49c8e 	min_u\.w	\$w18,\$w19,\$w20
[0-9a-f]+ <[^>]*> 7af7b54e 	min_u\.d	\$w21,\$w22,\$w23
[0-9a-f]+ <[^>]*> 7a80ce06 	mini_u\.b	\$w24,\$w25,0
[0-9a-f]+ <[^>]*> 7a9fde86 	mini_u\.b	\$w26,\$w27,31
[0-9a-f]+ <[^>]*> 7aa0ef06 	mini_u\.h	\$w28,\$w29,0
[0-9a-f]+ <[^>]*> 7abfff86 	mini_u\.h	\$w30,\$w31,31
[0-9a-f]+ <[^>]*> 7ac00806 	mini_u\.w	\$w0,\$w1,0
[0-9a-f]+ <[^>]*> 7adf1886 	mini_u\.w	\$w2,\$w3,31
[0-9a-f]+ <[^>]*> 7ae02906 	mini_u\.d	\$w4,\$w5,0
[0-9a-f]+ <[^>]*> 7aff3986 	mini_u\.d	\$w6,\$w7,31
[0-9a-f]+ <[^>]*> 7b0a4a0e 	max_a\.b	\$w8,\$w9,\$w10
[0-9a-f]+ <[^>]*> 7b2d62ce 	max_a\.h	\$w11,\$w12,\$w13
[0-9a-f]+ <[^>]*> 7b507b8e 	max_a\.w	\$w14,\$w15,\$w16
[0-9a-f]+ <[^>]*> 7b73944e 	max_a\.d	\$w17,\$w18,\$w19
[0-9a-f]+ <[^>]*> 7b96ad0e 	min_a\.b	\$w20,\$w21,\$w22
[0-9a-f]+ <[^>]*> 7bb9c5ce 	min_a\.h	\$w23,\$w24,\$w25
[0-9a-f]+ <[^>]*> 7bdcde8e 	min_a\.w	\$w26,\$w27,\$w28
[0-9a-f]+ <[^>]*> 7bfff74e 	min_a\.d	\$w29,\$w30,\$w31
[0-9a-f]+ <[^>]*> 7802080f 	ceq\.b	\$w0,\$w1,\$w2
[0-9a-f]+ <[^>]*> 782520cf 	ceq\.h	\$w3,\$w4,\$w5
[0-9a-f]+ <[^>]*> 7848398f 	ceq\.w	\$w6,\$w7,\$w8
[0-9a-f]+ <[^>]*> 786b524f 	ceq\.d	\$w9,\$w10,\$w11
[0-9a-f]+ <[^>]*> 78106b07 	ceqi\.b	\$w12,\$w13,-16
[0-9a-f]+ <[^>]*> 780f7b87 	ceqi\.b	\$w14,\$w15,15
[0-9a-f]+ <[^>]*> 78308c07 	ceqi\.h	\$w16,\$w17,-16
[0-9a-f]+ <[^>]*> 782f9c87 	ceqi\.h	\$w18,\$w19,15
[0-9a-f]+ <[^>]*> 7850ad07 	ceqi\.w	\$w20,\$w21,-16
[0-9a-f]+ <[^>]*> 784fbd87 	ceqi\.w	\$w22,\$w23,15
[0-9a-f]+ <[^>]*> 7870ce07 	ceqi\.d	\$w24,\$w25,-16
[0-9a-f]+ <[^>]*> 786fde87 	ceqi\.d	\$w26,\$w27,15
[0-9a-f]+ <[^>]*> 791eef0f 	clt_s\.b	\$w28,\$w29,\$w30
[0-9a-f]+ <[^>]*> 792107cf 	clt_s\.h	\$w31,\$w0,\$w1
[0-9a-f]+ <[^>]*> 7944188f 	clt_s\.w	\$w2,\$w3,\$w4
[0-9a-f]+ <[^>]*> 7967314f 	clt_s\.d	\$w5,\$w6,\$w7
[0-9a-f]+ <[^>]*> 79104a07 	clti_s\.b	\$w8,\$w9,-16
[0-9a-f]+ <[^>]*> 790f5a87 	clti_s\.b	\$w10,\$w11,15
[0-9a-f]+ <[^>]*> 79306b07 	clti_s\.h	\$w12,\$w13,-16
[0-9a-f]+ <[^>]*> 792f7b87 	clti_s\.h	\$w14,\$w15,15
[0-9a-f]+ <[^>]*> 79508c07 	clti_s\.w	\$w16,\$w17,-16
[0-9a-f]+ <[^>]*> 794f9c87 	clti_s\.w	\$w18,\$w19,15
[0-9a-f]+ <[^>]*> 7970ad07 	clti_s\.d	\$w20,\$w21,-16
[0-9a-f]+ <[^>]*> 796fbd87 	clti_s\.d	\$w22,\$w23,15
[0-9a-f]+ <[^>]*> 799ace0f 	clt_u\.b	\$w24,\$w25,\$w26
[0-9a-f]+ <[^>]*> 79bde6cf 	clt_u\.h	\$w27,\$w28,\$w29
[0-9a-f]+ <[^>]*> 79c0ff8f 	clt_u\.w	\$w30,\$w31,\$w0
[0-9a-f]+ <[^>]*> 79e3104f 	clt_u\.d	\$w1,\$w2,\$w3
[0-9a-f]+ <[^>]*> 79802907 	clti_u\.b	\$w4,\$w5,0
[0-9a-f]+ <[^>]*> 799f3987 	clti_u\.b	\$w6,\$w7,31
[0-9a-f]+ <[^>]*> 79a04a07 	clti_u\.h	\$w8,\$w9,0
[0-9a-f]+ <[^>]*> 79bf5a87 	clti_u\.h	\$w10,\$w11,31
[0-9a-f]+ <[^>]*> 79c06b07 	clti_u\.w	\$w12,\$w13,0
[0-9a-f]+ <[^>]*> 79df7b87 	clti_u\.w	\$w14,\$w15,31
[0-9a-f]+ <[^>]*> 79e08c07 	clti_u\.d	\$w16,\$w17,0
[0-9a-f]+ <[^>]*> 79ff9c87 	clti_u\.d	\$w18,\$w19,31
[0-9a-f]+ <[^>]*> 7a16ad0f 	cle_s\.b	\$w20,\$w21,\$w22
[0-9a-f]+ <[^>]*> 7a39c5cf 	cle_s\.h	\$w23,\$w24,\$w25
[0-9a-f]+ <[^>]*> 7a5cde8f 	cle_s\.w	\$w26,\$w27,\$w28
[0-9a-f]+ <[^>]*> 7a7ff74f 	cle_s\.d	\$w29,\$w30,\$w31
[0-9a-f]+ <[^>]*> 7a100807 	clei_s\.b	\$w0,\$w1,-16
[0-9a-f]+ <[^>]*> 7a0f1887 	clei_s\.b	\$w2,\$w3,15
[0-9a-f]+ <[^>]*> 7a302907 	clei_s\.h	\$w4,\$w5,-16
[0-9a-f]+ <[^>]*> 7a2f3987 	clei_s\.h	\$w6,\$w7,15
[0-9a-f]+ <[^>]*> 7a504a07 	clei_s\.w	\$w8,\$w9,-16
[0-9a-f]+ <[^>]*> 7a4f5a87 	clei_s\.w	\$w10,\$w11,15
[0-9a-f]+ <[^>]*> 7a706b07 	clei_s\.d	\$w12,\$w13,-16
[0-9a-f]+ <[^>]*> 7a6f7b87 	clei_s\.d	\$w14,\$w15,15
[0-9a-f]+ <[^>]*> 7a928c0f 	cle_u\.b	\$w16,\$w17,\$w18
[0-9a-f]+ <[^>]*> 7ab5a4cf 	cle_u\.h	\$w19,\$w20,\$w21
[0-9a-f]+ <[^>]*> 7ad8bd8f 	cle_u\.w	\$w22,\$w23,\$w24
[0-9a-f]+ <[^>]*> 7afbd64f 	cle_u\.d	\$w25,\$w26,\$w27
[0-9a-f]+ <[^>]*> 7a80ef07 	clei_u\.b	\$w28,\$w29,0
[0-9a-f]+ <[^>]*> 7a9fff87 	clei_u\.b	\$w30,\$w31,31
[0-9a-f]+ <[^>]*> 7aa00807 	clei_u\.h	\$w0,\$w1,0
[0-9a-f]+ <[^>]*> 7abf1887 	clei_u\.h	\$w2,\$w3,31
[0-9a-f]+ <[^>]*> 7ac02907 	clei_u\.w	\$w4,\$w5,0
[0-9a-f]+ <[^>]*> 7adf3987 	clei_u\.w	\$w6,\$w7,31
[0-9a-f]+ <[^>]*> 7ae04a07 	clei_u\.d	\$w8,\$w9,0
[0-9a-f]+ <[^>]*> 7aff5a87 	clei_u\.d	\$w10,\$w11,31
[0-9a-f]+ <[^>]*> 7a006b20 	ld\.b	\$w12,-512\(t5\)
[0-9a-f]+ <[^>]*> 79ff7ba0 	ld\.b	\$w14,511\(t7\)
[0-9a-f]+ <[^>]*> 7a008c21 	ld\.h	\$w16,-1024\(s1\)
[0-9a-f]+ <[^>]*> 79ff9ca1 	ld\.h	\$w18,1022\(s3\)
[0-9a-f]+ <[^>]*> 7a00ad22 	ld\.w	\$w20,-2048\(s5\)
[0-9a-f]+ <[^>]*> 79ffbda2 	ld\.w	\$w22,2044\(s7\)
[0-9a-f]+ <[^>]*> 7a00ce23 	ld\.d	\$w24,-4096\(t9\)
[0-9a-f]+ <[^>]*> 79ffdea3 	ld\.d	\$w26,4088\(k1\)
[0-9a-f]+ <[^>]*> 7a00ef24 	st\.b	\$w28,-512\(sp\)
[0-9a-f]+ <[^>]*> 79ffffa4 	st\.b	\$w30,511\(ra\)
[0-9a-f]+ <[^>]*> 7a000825 	st\.h	\$w0,-1024\(at\)
[0-9a-f]+ <[^>]*> 79ff18a5 	st\.h	\$w2,1022\(v1\)
[0-9a-f]+ <[^>]*> 7a002926 	st\.w	\$w4,-2048\(a1\)
[0-9a-f]+ <[^>]*> 79ff39a6 	st\.w	\$w6,2044\(a3\)
[0-9a-f]+ <[^>]*> 7a004a27 	st\.d	\$w8,-4096\(t1\)
[0-9a-f]+ <[^>]*> 79ff5aa7 	st\.d	\$w10,4088\(t3\)
[0-9a-f]+ <[^>]*> 78706b0a 	sat_s\.b	\$w12,\$w13,0x0
[0-9a-f]+ <[^>]*> 78777b8a 	sat_s\.b	\$w14,\$w15,0x7
[0-9a-f]+ <[^>]*> 78608c0a 	sat_s\.h	\$w16,\$w17,0x0
[0-9a-f]+ <[^>]*> 786f9c8a 	sat_s\.h	\$w18,\$w19,0xf
[0-9a-f]+ <[^>]*> 7840ad0a 	sat_s\.w	\$w20,\$w21,0x0
[0-9a-f]+ <[^>]*> 785fbd8a 	sat_s\.w	\$w22,\$w23,0x1f
[0-9a-f]+ <[^>]*> 7800ce0a 	sat_s\.d	\$w24,\$w25,0x0
[0-9a-f]+ <[^>]*> 783fde8a 	sat_s\.d	\$w26,\$w27,0x3f
[0-9a-f]+ <[^>]*> 78f0ef0a 	sat_u\.b	\$w28,\$w29,0x0
[0-9a-f]+ <[^>]*> 78f7ff8a 	sat_u\.b	\$w30,\$w31,0x7
[0-9a-f]+ <[^>]*> 78e0080a 	sat_u\.h	\$w0,\$w1,0x0
[0-9a-f]+ <[^>]*> 78ef188a 	sat_u\.h	\$w2,\$w3,0xf
[0-9a-f]+ <[^>]*> 78c0290a 	sat_u\.w	\$w4,\$w5,0x0
[0-9a-f]+ <[^>]*> 78df398a 	sat_u\.w	\$w6,\$w7,0x1f
[0-9a-f]+ <[^>]*> 78804a0a 	sat_u\.d	\$w8,\$w9,0x0
[0-9a-f]+ <[^>]*> 78bf5a8a 	sat_u\.d	\$w10,\$w11,0x3f
[0-9a-f]+ <[^>]*> 780e6b10 	add_a\.b	\$w12,\$w13,\$w14
[0-9a-f]+ <[^>]*> 783183d0 	add_a\.h	\$w15,\$w16,\$w17
[0-9a-f]+ <[^>]*> 78549c90 	add_a\.w	\$w18,\$w19,\$w20
[0-9a-f]+ <[^>]*> 7877b550 	add_a\.d	\$w21,\$w22,\$w23
[0-9a-f]+ <[^>]*> 789ace10 	adds_a\.b	\$w24,\$w25,\$w26
[0-9a-f]+ <[^>]*> 78bde6d0 	adds_a\.h	\$w27,\$w28,\$w29
[0-9a-f]+ <[^>]*> 78c0ff90 	adds_a\.w	\$w30,\$w31,\$w0
[0-9a-f]+ <[^>]*> 78e31050 	adds_a\.d	\$w1,\$w2,\$w3
[0-9a-f]+ <[^>]*> 79062910 	adds_s\.b	\$w4,\$w5,\$w6
[0-9a-f]+ <[^>]*> 792941d0 	adds_s\.h	\$w7,\$w8,\$w9
[0-9a-f]+ <[^>]*> 794c5a90 	adds_s\.w	\$w10,\$w11,\$w12
[0-9a-f]+ <[^>]*> 796f7350 	adds_s\.d	\$w13,\$w14,\$w15
[0-9a-f]+ <[^>]*> 79928c10 	adds_u\.b	\$w16,\$w17,\$w18
[0-9a-f]+ <[^>]*> 79b5a4d0 	adds_u\.h	\$w19,\$w20,\$w21
[0-9a-f]+ <[^>]*> 79d8bd90 	adds_u\.w	\$w22,\$w23,\$w24
[0-9a-f]+ <[^>]*> 79fbd650 	adds_u\.d	\$w25,\$w26,\$w27
[0-9a-f]+ <[^>]*> 7a1eef10 	ave_s\.b	\$w28,\$w29,\$w30
[0-9a-f]+ <[^>]*> 7a2107d0 	ave_s\.h	\$w31,\$w0,\$w1
[0-9a-f]+ <[^>]*> 7a441890 	ave_s\.w	\$w2,\$w3,\$w4
[0-9a-f]+ <[^>]*> 7a673150 	ave_s\.d	\$w5,\$w6,\$w7
[0-9a-f]+ <[^>]*> 7a8a4a10 	ave_u\.b	\$w8,\$w9,\$w10
[0-9a-f]+ <[^>]*> 7aad62d0 	ave_u\.h	\$w11,\$w12,\$w13
[0-9a-f]+ <[^>]*> 7ad07b90 	ave_u\.w	\$w14,\$w15,\$w16
[0-9a-f]+ <[^>]*> 7af39450 	ave_u\.d	\$w17,\$w18,\$w19
[0-9a-f]+ <[^>]*> 7b16ad10 	aver_s\.b	\$w20,\$w21,\$w22
[0-9a-f]+ <[^>]*> 7b39c5d0 	aver_s\.h	\$w23,\$w24,\$w25
[0-9a-f]+ <[^>]*> 7b5cde90 	aver_s\.w	\$w26,\$w27,\$w28
[0-9a-f]+ <[^>]*> 7b7ff750 	aver_s\.d	\$w29,\$w30,\$w31
[0-9a-f]+ <[^>]*> 7b820810 	aver_u\.b	\$w0,\$w1,\$w2
[0-9a-f]+ <[^>]*> 7ba520d0 	aver_u\.h	\$w3,\$w4,\$w5
[0-9a-f]+ <[^>]*> 7bc83990 	aver_u\.w	\$w6,\$w7,\$w8
[0-9a-f]+ <[^>]*> 7beb5250 	aver_u\.d	\$w9,\$w10,\$w11
[0-9a-f]+ <[^>]*> 780e6b11 	subs_s\.b	\$w12,\$w13,\$w14
[0-9a-f]+ <[^>]*> 783183d1 	subs_s\.h	\$w15,\$w16,\$w17
[0-9a-f]+ <[^>]*> 78549c91 	subs_s\.w	\$w18,\$w19,\$w20
[0-9a-f]+ <[^>]*> 7877b551 	subs_s\.d	\$w21,\$w22,\$w23
[0-9a-f]+ <[^>]*> 789ace11 	subs_u\.b	\$w24,\$w25,\$w26
[0-9a-f]+ <[^>]*> 78bde6d1 	subs_u\.h	\$w27,\$w28,\$w29
[0-9a-f]+ <[^>]*> 78c0ff91 	subs_u\.w	\$w30,\$w31,\$w0
[0-9a-f]+ <[^>]*> 78e31051 	subs_u\.d	\$w1,\$w2,\$w3
[0-9a-f]+ <[^>]*> 79062911 	subsus_u\.b	\$w4,\$w5,\$w6
[0-9a-f]+ <[^>]*> 792941d1 	subsus_u\.h	\$w7,\$w8,\$w9
[0-9a-f]+ <[^>]*> 794c5a91 	subsus_u\.w	\$w10,\$w11,\$w12
[0-9a-f]+ <[^>]*> 796f7351 	subsus_u\.d	\$w13,\$w14,\$w15
[0-9a-f]+ <[^>]*> 79928c11 	subsuu_s\.b	\$w16,\$w17,\$w18
[0-9a-f]+ <[^>]*> 79b5a4d1 	subsuu_s\.h	\$w19,\$w20,\$w21
[0-9a-f]+ <[^>]*> 79d8bd91 	subsuu_s\.w	\$w22,\$w23,\$w24
[0-9a-f]+ <[^>]*> 79fbd651 	subsuu_s\.d	\$w25,\$w26,\$w27
[0-9a-f]+ <[^>]*> 7a1eef11 	asub_s\.b	\$w28,\$w29,\$w30
[0-9a-f]+ <[^>]*> 7a2107d1 	asub_s\.h	\$w31,\$w0,\$w1
[0-9a-f]+ <[^>]*> 7a441891 	asub_s\.w	\$w2,\$w3,\$w4
[0-9a-f]+ <[^>]*> 7a673151 	asub_s\.d	\$w5,\$w6,\$w7
[0-9a-f]+ <[^>]*> 7a8a4a11 	asub_u\.b	\$w8,\$w9,\$w10
[0-9a-f]+ <[^>]*> 7aad62d1 	asub_u\.h	\$w11,\$w12,\$w13
[0-9a-f]+ <[^>]*> 7ad07b91 	asub_u\.w	\$w14,\$w15,\$w16
[0-9a-f]+ <[^>]*> 7af39451 	asub_u\.d	\$w17,\$w18,\$w19
[0-9a-f]+ <[^>]*> 7816ad12 	mulv\.b	\$w20,\$w21,\$w22
[0-9a-f]+ <[^>]*> 7839c5d2 	mulv\.h	\$w23,\$w24,\$w25
[0-9a-f]+ <[^>]*> 785cde92 	mulv\.w	\$w26,\$w27,\$w28
[0-9a-f]+ <[^>]*> 787ff752 	mulv\.d	\$w29,\$w30,\$w31
[0-9a-f]+ <[^>]*> 78820812 	maddv\.b	\$w0,\$w1,\$w2
[0-9a-f]+ <[^>]*> 78a520d2 	maddv\.h	\$w3,\$w4,\$w5
[0-9a-f]+ <[^>]*> 78c83992 	maddv\.w	\$w6,\$w7,\$w8
[0-9a-f]+ <[^>]*> 78eb5252 	maddv\.d	\$w9,\$w10,\$w11
[0-9a-f]+ <[^>]*> 790e6b12 	msubv\.b	\$w12,\$w13,\$w14
[0-9a-f]+ <[^>]*> 793183d2 	msubv\.h	\$w15,\$w16,\$w17
[0-9a-f]+ <[^>]*> 79549c92 	msubv\.w	\$w18,\$w19,\$w20
[0-9a-f]+ <[^>]*> 7977b552 	msubv\.d	\$w21,\$w22,\$w23
[0-9a-f]+ <[^>]*> 7a1ace12 	div_s\.b	\$w24,\$w25,\$w26
[0-9a-f]+ <[^>]*> 7a3de6d2 	div_s\.h	\$w27,\$w28,\$w29
[0-9a-f]+ <[^>]*> 7a40ff92 	div_s\.w	\$w30,\$w31,\$w0
[0-9a-f]+ <[^>]*> 7a631052 	div_s\.d	\$w1,\$w2,\$w3
[0-9a-f]+ <[^>]*> 7a862912 	div_u\.b	\$w4,\$w5,\$w6
[0-9a-f]+ <[^>]*> 7aa941d2 	div_u\.h	\$w7,\$w8,\$w9
[0-9a-f]+ <[^>]*> 7acc5a92 	div_u\.w	\$w10,\$w11,\$w12
[0-9a-f]+ <[^>]*> 7aef7352 	div_u\.d	\$w13,\$w14,\$w15
[0-9a-f]+ <[^>]*> 7b128c12 	mod_s\.b	\$w16,\$w17,\$w18
[0-9a-f]+ <[^>]*> 7b35a4d2 	mod_s\.h	\$w19,\$w20,\$w21
[0-9a-f]+ <[^>]*> 7b58bd92 	mod_s\.w	\$w22,\$w23,\$w24
[0-9a-f]+ <[^>]*> 7b7bd652 	mod_s\.d	\$w25,\$w26,\$w27
[0-9a-f]+ <[^>]*> 7b9eef12 	mod_u\.b	\$w28,\$w29,\$w30
[0-9a-f]+ <[^>]*> 7ba107d2 	mod_u\.h	\$w31,\$w0,\$w1
[0-9a-f]+ <[^>]*> 7bc41892 	mod_u\.w	\$w2,\$w3,\$w4
[0-9a-f]+ <[^>]*> 7be73152 	mod_u\.d	\$w5,\$w6,\$w7
[0-9a-f]+ <[^>]*> 782a4a13 	dotp_s\.h	\$w8,\$w9,\$w10
[0-9a-f]+ <[^>]*> 784d62d3 	dotp_s\.w	\$w11,\$w12,\$w13
[0-9a-f]+ <[^>]*> 78707b93 	dotp_s\.d	\$w14,\$w15,\$w16
[0-9a-f]+ <[^>]*> 78b39453 	dotp_u\.h	\$w17,\$w18,\$w19
[0-9a-f]+ <[^>]*> 78d6ad13 	dotp_u\.w	\$w20,\$w21,\$w22
[0-9a-f]+ <[^>]*> 78f9c5d3 	dotp_u\.d	\$w23,\$w24,\$w25
[0-9a-f]+ <[^>]*> 793cde93 	dpadd_s\.h	\$w26,\$w27,\$w28
[0-9a-f]+ <[^>]*> 795ff753 	dpadd_s\.w	\$w29,\$w30,\$w31
[0-9a-f]+ <[^>]*> 79620813 	dpadd_s\.d	\$w0,\$w1,\$w2
[0-9a-f]+ <[^>]*> 79a520d3 	dpadd_u\.h	\$w3,\$w4,\$w5
[0-9a-f]+ <[^>]*> 79c83993 	dpadd_u\.w	\$w6,\$w7,\$w8
[0-9a-f]+ <[^>]*> 79eb5253 	dpadd_u\.d	\$w9,\$w10,\$w11
[0-9a-f]+ <[^>]*> 7a2e6b13 	dpsub_s\.h	\$w12,\$w13,\$w14
[0-9a-f]+ <[^>]*> 7a5183d3 	dpsub_s\.w	\$w15,\$w16,\$w17
[0-9a-f]+ <[^>]*> 7a749c93 	dpsub_s\.d	\$w18,\$w19,\$w20
[0-9a-f]+ <[^>]*> 7ab7b553 	dpsub_u\.h	\$w21,\$w22,\$w23
[0-9a-f]+ <[^>]*> 7adace13 	dpsub_u\.w	\$w24,\$w25,\$w26
[0-9a-f]+ <[^>]*> 7afde6d3 	dpsub_u\.d	\$w27,\$w28,\$w29
[0-9a-f]+ <[^>]*> 7800ff94 	sld\.b	\$w30,\$w31\[zero\]
[0-9a-f]+ <[^>]*> 78231054 	sld\.h	\$w1,\$w2\[v1\]
[0-9a-f]+ <[^>]*> 78462914 	sld\.w	\$w4,\$w5\[a2\]
[0-9a-f]+ <[^>]*> 786941d4 	sld\.d	\$w7,\$w8\[t1\]
[0-9a-f]+ <[^>]*> 78005a99 	sldi\.b	\$w10,\$w11\[0\]
[0-9a-f]+ <[^>]*> 780f6b19 	sldi\.b	\$w12,\$w13\[15\]
[0-9a-f]+ <[^>]*> 78207b99 	sldi\.h	\$w14,\$w15\[0\]
[0-9a-f]+ <[^>]*> 78278c19 	sldi\.h	\$w16,\$w17\[7\]
[0-9a-f]+ <[^>]*> 78309c99 	sldi\.w	\$w18,\$w19\[0\]
[0-9a-f]+ <[^>]*> 7833ad19 	sldi\.w	\$w20,\$w21\[3\]
[0-9a-f]+ <[^>]*> 7838bd99 	sldi\.d	\$w22,\$w23\[0\]
[0-9a-f]+ <[^>]*> 7839ce19 	sldi\.d	\$w24,\$w25\[1\]
[0-9a-f]+ <[^>]*> 789cde94 	splat\.b	\$w26,\$w27\[gp\]
[0-9a-f]+ <[^>]*> 78bff754 	splat\.h	\$w29,\$w30\[ra\]
[0-9a-f]+ <[^>]*> 78c20814 	splat\.w	\$w0,\$w1\[v0\]
[0-9a-f]+ <[^>]*> 78e520d4 	splat\.d	\$w3,\$w4\[a1\]
[0-9a-f]+ <[^>]*> 78403999 	splati\.b	\$w6,\$w7\[0\]
[0-9a-f]+ <[^>]*> 784f4a19 	splati\.b	\$w8,\$w9\[15\]
[0-9a-f]+ <[^>]*> 78605a99 	splati\.h	\$w10,\$w11\[0\]
[0-9a-f]+ <[^>]*> 78676b19 	splati\.h	\$w12,\$w13\[7\]
[0-9a-f]+ <[^>]*> 78707b99 	splati\.w	\$w14,\$w15\[0\]
[0-9a-f]+ <[^>]*> 78738c19 	splati\.w	\$w16,\$w17\[3\]
[0-9a-f]+ <[^>]*> 78789c99 	splati\.d	\$w18,\$w19\[0\]
[0-9a-f]+ <[^>]*> 7879ad19 	splati\.d	\$w20,\$w21\[1\]
[0-9a-f]+ <[^>]*> 7918bd94 	pckev\.b	\$w22,\$w23,\$w24
[0-9a-f]+ <[^>]*> 793bd654 	pckev\.h	\$w25,\$w26,\$w27
[0-9a-f]+ <[^>]*> 795eef14 	pckev\.w	\$w28,\$w29,\$w30
[0-9a-f]+ <[^>]*> 796107d4 	pckev\.d	\$w31,\$w0,\$w1
[0-9a-f]+ <[^>]*> 79841894 	pckod\.b	\$w2,\$w3,\$w4
[0-9a-f]+ <[^>]*> 79a73154 	pckod\.h	\$w5,\$w6,\$w7
[0-9a-f]+ <[^>]*> 79ca4a14 	pckod\.w	\$w8,\$w9,\$w10
[0-9a-f]+ <[^>]*> 79ed62d4 	pckod\.d	\$w11,\$w12,\$w13
[0-9a-f]+ <[^>]*> 7a107b94 	ilvl\.b	\$w14,\$w15,\$w16
[0-9a-f]+ <[^>]*> 7a339454 	ilvl\.h	\$w17,\$w18,\$w19
[0-9a-f]+ <[^>]*> 7a56ad14 	ilvl\.w	\$w20,\$w21,\$w22
[0-9a-f]+ <[^>]*> 7a79c5d4 	ilvl\.d	\$w23,\$w24,\$w25
[0-9a-f]+ <[^>]*> 7a9cde94 	ilvr\.b	\$w26,\$w27,\$w28
[0-9a-f]+ <[^>]*> 7abff754 	ilvr\.h	\$w29,\$w30,\$w31
[0-9a-f]+ <[^>]*> 7ac20814 	ilvr\.w	\$w0,\$w1,\$w2
[0-9a-f]+ <[^>]*> 7ae520d4 	ilvr\.d	\$w3,\$w4,\$w5
[0-9a-f]+ <[^>]*> 7b083994 	ilvev\.b	\$w6,\$w7,\$w8
[0-9a-f]+ <[^>]*> 7b2b5254 	ilvev\.h	\$w9,\$w10,\$w11
[0-9a-f]+ <[^>]*> 7b4e6b14 	ilvev\.w	\$w12,\$w13,\$w14
[0-9a-f]+ <[^>]*> 7b7183d4 	ilvev\.d	\$w15,\$w16,\$w17
[0-9a-f]+ <[^>]*> 7b949c94 	ilvod\.b	\$w18,\$w19,\$w20
[0-9a-f]+ <[^>]*> 7bb7b554 	ilvod\.h	\$w21,\$w22,\$w23
[0-9a-f]+ <[^>]*> 7bdace14 	ilvod\.w	\$w24,\$w25,\$w26
[0-9a-f]+ <[^>]*> 7bfde6d4 	ilvod\.d	\$w27,\$w28,\$w29
[0-9a-f]+ <[^>]*> 7800ff95 	vshf\.b	\$w30,\$w31,\$w0
[0-9a-f]+ <[^>]*> 78231055 	vshf\.h	\$w1,\$w2,\$w3
[0-9a-f]+ <[^>]*> 78462915 	vshf\.w	\$w4,\$w5,\$w6
[0-9a-f]+ <[^>]*> 786941d5 	vshf\.d	\$w7,\$w8,\$w9
[0-9a-f]+ <[^>]*> 788c5a95 	srar\.b	\$w10,\$w11,\$w12
[0-9a-f]+ <[^>]*> 78af7355 	srar\.h	\$w13,\$w14,\$w15
[0-9a-f]+ <[^>]*> 78d28c15 	srar\.w	\$w16,\$w17,\$w18
[0-9a-f]+ <[^>]*> 78f5a4d5 	srar\.d	\$w19,\$w20,\$w21
[0-9a-f]+ <[^>]*> 7970bd8a 	srari\.b	\$w22,\$w23,0x0
[0-9a-f]+ <[^>]*> 7977ce0a 	srari\.b	\$w24,\$w25,0x7
[0-9a-f]+ <[^>]*> 7960de8a 	srari\.h	\$w26,\$w27,0x0
[0-9a-f]+ <[^>]*> 796fef0a 	srari\.h	\$w28,\$w29,0xf
[0-9a-f]+ <[^>]*> 7940ff8a 	srari\.w	\$w30,\$w31,0x0
[0-9a-f]+ <[^>]*> 795f080a 	srari\.w	\$w0,\$w1,0x1f
[0-9a-f]+ <[^>]*> 7900188a 	srari\.d	\$w2,\$w3,0x0
[0-9a-f]+ <[^>]*> 793f290a 	srari\.d	\$w4,\$w5,0x3f
[0-9a-f]+ <[^>]*> 79083995 	srlr\.b	\$w6,\$w7,\$w8
[0-9a-f]+ <[^>]*> 792b5255 	srlr\.h	\$w9,\$w10,\$w11
[0-9a-f]+ <[^>]*> 794e6b15 	srlr\.w	\$w12,\$w13,\$w14
[0-9a-f]+ <[^>]*> 797183d5 	srlr\.d	\$w15,\$w16,\$w17
[0-9a-f]+ <[^>]*> 79f09c8a 	srlri\.b	\$w18,\$w19,0x0
[0-9a-f]+ <[^>]*> 79f7ad0a 	srlri\.b	\$w20,\$w21,0x7
[0-9a-f]+ <[^>]*> 79e0bd8a 	srlri\.h	\$w22,\$w23,0x0
[0-9a-f]+ <[^>]*> 79efce0a 	srlri\.h	\$w24,\$w25,0xf
[0-9a-f]+ <[^>]*> 79c0de8a 	srlri\.w	\$w26,\$w27,0x0
[0-9a-f]+ <[^>]*> 79dfef0a 	srlri\.w	\$w28,\$w29,0x1f
[0-9a-f]+ <[^>]*> 7980ff8a 	srlri\.d	\$w30,\$w31,0x0
[0-9a-f]+ <[^>]*> 79bf080a 	srlri\.d	\$w0,\$w1,0x3f
[0-9a-f]+ <[^>]*> 7a241895 	hadd_s\.h	\$w2,\$w3,\$w4
[0-9a-f]+ <[^>]*> 7a473155 	hadd_s\.w	\$w5,\$w6,\$w7
[0-9a-f]+ <[^>]*> 7a6a4a15 	hadd_s\.d	\$w8,\$w9,\$w10
[0-9a-f]+ <[^>]*> 7aad62d5 	hadd_u\.h	\$w11,\$w12,\$w13
[0-9a-f]+ <[^>]*> 7ad07b95 	hadd_u\.w	\$w14,\$w15,\$w16
[0-9a-f]+ <[^>]*> 7af39455 	hadd_u\.d	\$w17,\$w18,\$w19
[0-9a-f]+ <[^>]*> 7b36ad15 	hsub_s\.h	\$w20,\$w21,\$w22
[0-9a-f]+ <[^>]*> 7b59c5d5 	hsub_s\.w	\$w23,\$w24,\$w25
[0-9a-f]+ <[^>]*> 7b7cde95 	hsub_s\.d	\$w26,\$w27,\$w28
[0-9a-f]+ <[^>]*> 7bbff755 	hsub_u\.h	\$w29,\$w30,\$w31
[0-9a-f]+ <[^>]*> 7bc20815 	hsub_u\.w	\$w0,\$w1,\$w2
[0-9a-f]+ <[^>]*> 7be520d5 	hsub_u\.d	\$w3,\$w4,\$w5
[0-9a-f]+ <[^>]*> 7808399e 	and\.v	\$w6,\$w7,\$w8
[0-9a-f]+ <[^>]*> 78005240 	andi\.b	\$w9,\$w10,0x0
[0-9a-f]+ <[^>]*> 78ff62c0 	andi\.b	\$w11,\$w12,0xff
[0-9a-f]+ <[^>]*> 782f735e 	or\.v	\$w13,\$w14,\$w15
[0-9a-f]+ <[^>]*> 79008c00 	ori\.b	\$w16,\$w17,0x0
[0-9a-f]+ <[^>]*> 79ff9c80 	ori\.b	\$w18,\$w19,0xff
[0-9a-f]+ <[^>]*> 7856ad1e 	nor\.v	\$w20,\$w21,\$w22
[0-9a-f]+ <[^>]*> 7a00c5c0 	nori\.b	\$w23,\$w24,0x0
[0-9a-f]+ <[^>]*> 7affd640 	nori\.b	\$w25,\$w26,0xff
[0-9a-f]+ <[^>]*> 787de6de 	xor\.v	\$w27,\$w28,\$w29
[0-9a-f]+ <[^>]*> 7b00ff80 	xori\.b	\$w30,\$w31,0x0
[0-9a-f]+ <[^>]*> 7bff0800 	xori\.b	\$w0,\$w1,0xff
[0-9a-f]+ <[^>]*> 7884189e 	bmnz\.v	\$w2,\$w3,\$w4
[0-9a-f]+ <[^>]*> 78003141 	bmnzi\.b	\$w5,\$w6,0x0
[0-9a-f]+ <[^>]*> 78ff41c1 	bmnzi\.b	\$w7,\$w8,0xff
[0-9a-f]+ <[^>]*> 78ab525e 	bmz\.v	\$w9,\$w10,\$w11
[0-9a-f]+ <[^>]*> 79006b01 	bmzi\.b	\$w12,\$w13,0x0
[0-9a-f]+ <[^>]*> 79ff7b81 	bmzi\.b	\$w14,\$w15,0xff
[0-9a-f]+ <[^>]*> 78d28c1e 	bsel\.v	\$w16,\$w17,\$w18
[0-9a-f]+ <[^>]*> 7a00a4c1 	bseli\.b	\$w19,\$w20,0x0
[0-9a-f]+ <[^>]*> 7affb541 	bseli\.b	\$w21,\$w22,0xff
[0-9a-f]+ <[^>]*> 7800c5c2 	shf\.b	\$w23,\$w24,0x0
[0-9a-f]+ <[^>]*> 78ffd642 	shf\.b	\$w25,\$w26,0xff
[0-9a-f]+ <[^>]*> 7900e6c2 	shf\.h	\$w27,\$w28,0x0
[0-9a-f]+ <[^>]*> 79fff742 	shf\.h	\$w29,\$w30,0xff
[0-9a-f]+ <[^>]*> 7a0007c2 	shf\.w	\$w31,\$w0,0x0
[0-9a-f]+ <[^>]*> 7aff1042 	shf\.w	\$w1,\$w2,0xff
[0-9a-f]+ <[^>]*> 45e38000 	bnz\.v	\$w3,[0-9a-f]+ <[^>]*>
[	]*[0-9a-f]+: .*R_MIPS_PC16	L0.*
[0-9a-f]+ <[^>]*> 00000000 	nop
[0-9a-f]+ <[^>]*> 45e47fff 	bnz\.v	\$w4,[0-9a-f]+ <[^>]*>
[	]*[0-9a-f]+: .*R_MIPS_PC16	L0.*
[0-9a-f]+ <[^>]*> 00000000 	nop
[0-9a-f]+ <[^>]*> 45e5ffff 	bnz\.v	\$w5,[0-9a-f]+ <[^>]*>
[	]*[0-9a-f]+: .*R_MIPS_PC16	.L1.*1
[0-9a-f]+ <[^>]*> 00000000 	nop
[0-9a-f]+ <[^>]*> 45e6ffff 	bnz\.v	\$w6,[0-9a-f]+ <[^>]*>
[	]*[0-9a-f]+: R_MIPS_PC16	external_label
[0-9a-f]+ <[^>]*> 00000000 	nop
[0-9a-f]+ <[^>]*> 45678000 	bz\.v	\$w7,[0-9a-f]+ <[^>]*>
[	]*[0-9a-f]+: .*R_MIPS_PC16	L0.*
[0-9a-f]+ <[^>]*> 00000000 	nop
[0-9a-f]+ <[^>]*> 45687fff 	bz\.v	\$w8,[0-9a-f]+ <[^>]*>
[	]*[0-9a-f]+: .*R_MIPS_PC16	L0.*
[0-9a-f]+ <[^>]*> 00000000 	nop
[0-9a-f]+ <[^>]*> 4569ffff 	bz\.v	\$w9,[0-9a-f]+ <[^>]*>
[	]*[0-9a-f]+: .*R_MIPS_PC16	.L1.*2
[0-9a-f]+ <[^>]*> 00000000 	nop
[0-9a-f]+ <[^>]*> 456affff 	bz\.v	\$w10,[0-9a-f]+ <[^>]*>
[	]*[0-9a-f]+: R_MIPS_PC16	external_label
[0-9a-f]+ <[^>]*> 00000000 	nop
[0-9a-f]+ <[^>]*> 7b0062de 	fill\.b	\$w11,t4
[0-9a-f]+ <[^>]*> 7b01735e 	fill\.h	\$w13,t6
[0-9a-f]+ <[^>]*> 7b0283de 	fill\.w	\$w15,s0
[0-9a-f]+ <[^>]*> 7b04a4de 	pcnt\.b	\$w19,\$w20
[0-9a-f]+ <[^>]*> 7b05b55e 	pcnt\.h	\$w21,\$w22
[0-9a-f]+ <[^>]*> 7b06c5de 	pcnt\.w	\$w23,\$w24
[0-9a-f]+ <[^>]*> 7b07d65e 	pcnt\.d	\$w25,\$w26
[0-9a-f]+ <[^>]*> 7b08e6de 	nloc\.b	\$w27,\$w28
[0-9a-f]+ <[^>]*> 7b09f75e 	nloc\.h	\$w29,\$w30
[0-9a-f]+ <[^>]*> 7b0a07de 	nloc\.w	\$w31,\$w0
[0-9a-f]+ <[^>]*> 7b0b105e 	nloc\.d	\$w1,\$w2
[0-9a-f]+ <[^>]*> 7b0c20de 	nlzc\.b	\$w3,\$w4
[0-9a-f]+ <[^>]*> 7b0d315e 	nlzc\.h	\$w5,\$w6
[0-9a-f]+ <[^>]*> 7b0e41de 	nlzc\.w	\$w7,\$w8
[0-9a-f]+ <[^>]*> 7b0f525e 	nlzc\.d	\$w9,\$w10
[0-9a-f]+ <[^>]*> 788062d9 	copy_s\.b	t3,\$w12\[0\]
[0-9a-f]+ <[^>]*> 788f7359 	copy_s\.b	t5,\$w14\[15\]
[0-9a-f]+ <[^>]*> 78a083d9 	copy_s\.h	t7,\$w16\[0\]
[0-9a-f]+ <[^>]*> 78a79459 	copy_s\.h	s1,\$w18\[7\]
[0-9a-f]+ <[^>]*> 78b0a4d9 	copy_s\.w	s3,\$w20\[0\]
[0-9a-f]+ <[^>]*> 78b3b559 	copy_s\.w	s5,\$w22\[3\]
[0-9a-f]+ <[^>]*> 78c0e6d9 	copy_u\.b	k1,\$w28\[0\]
[0-9a-f]+ <[^>]*> 78cff759 	copy_u\.b	sp,\$w30\[15\]
[0-9a-f]+ <[^>]*> 78e007d9 	copy_u\.h	ra,\$w0\[0\]
[0-9a-f]+ <[^>]*> 78e71059 	copy_u\.h	at,\$w2\[7\]
[0-9a-f]+ <[^>]*> 790062d9 	insert\.b	\$w11\[0\],t4
[0-9a-f]+ <[^>]*> 790f7359 	insert\.b	\$w13\[15\],t6
[0-9a-f]+ <[^>]*> 792083d9 	insert\.h	\$w15\[0\],s0
[0-9a-f]+ <[^>]*> 79279459 	insert\.h	\$w17\[7\],s2
[0-9a-f]+ <[^>]*> 7930a4d9 	insert\.w	\$w19\[0\],s4
[0-9a-f]+ <[^>]*> 7933b559 	insert\.w	\$w21\[3\],s6
[0-9a-f]+ <[^>]*> 7940e6d9 	insve\.b	\$w27\[0\],\$w28\[0\]
[0-9a-f]+ <[^>]*> 794ff759 	insve\.b	\$w29\[15\],\$w30\[0\]
[0-9a-f]+ <[^>]*> 796007d9 	insve\.h	\$w31\[0\],\$w0\[0\]
[0-9a-f]+ <[^>]*> 79671059 	insve\.h	\$w1\[7\],\$w2\[0\]
[0-9a-f]+ <[^>]*> 797020d9 	insve\.w	\$w3\[0\],\$w4\[0\]
[0-9a-f]+ <[^>]*> 79733159 	insve\.w	\$w5\[3\],\$w6\[0\]
[0-9a-f]+ <[^>]*> 797841d9 	insve\.d	\$w7\[0\],\$w8\[0\]
[0-9a-f]+ <[^>]*> 79795259 	insve\.d	\$w9\[1\],\$w10\[0\]
[0-9a-f]+ <[^>]*> 478b8000 	bnz\.b	\$w11,[0-9a-f]+ <[^>]*>
[	]*[0-9a-f]+: .*R_MIPS_PC16	L0.*
[0-9a-f]+ <[^>]*> 00000000 	nop
[0-9a-f]+ <[^>]*> 478c7fff 	bnz\.b	\$w12,[0-9a-f]+ <[^>]*>
[	]*[0-9a-f]+: .*R_MIPS_PC16	L0.*
[0-9a-f]+ <[^>]*> 00000000 	nop
[0-9a-f]+ <[^>]*> 478dffff 	bnz\.b	\$w13,[0-9a-f]+ <[^>]*>
[	]*[0-9a-f]+: .*R_MIPS_PC16	.L1.*3
[0-9a-f]+ <[^>]*> 00000000 	nop
[0-9a-f]+ <[^>]*> 478effff 	bnz\.b	\$w14,[0-9a-f]+ <[^>]*>
[	]*[0-9a-f]+: R_MIPS_PC16	external_label
[0-9a-f]+ <[^>]*> 00000000 	nop
[0-9a-f]+ <[^>]*> 47af8000 	bnz\.h	\$w15,[0-9a-f]+ <[^>]*>
[	]*[0-9a-f]+: .*R_MIPS_PC16	L0.*
[0-9a-f]+ <[^>]*> 00000000 	nop
[0-9a-f]+ <[^>]*> 47b07fff 	bnz\.h	\$w16,[0-9a-f]+ <[^>]*>
[	]*[0-9a-f]+: .*R_MIPS_PC16	L0.*
[0-9a-f]+ <[^>]*> 00000000 	nop
[0-9a-f]+ <[^>]*> 47b1ffff 	bnz\.h	\$w17,[0-9a-f]+ <[^>]*>
[	]*[0-9a-f]+: .*R_MIPS_PC16	.L1.*4
[0-9a-f]+ <[^>]*> 00000000 	nop
[0-9a-f]+ <[^>]*> 47b2ffff 	bnz\.h	\$w18,[0-9a-f]+ <[^>]*>
[	]*[0-9a-f]+: R_MIPS_PC16	external_label
[0-9a-f]+ <[^>]*> 00000000 	nop
[0-9a-f]+ <[^>]*> 47d38000 	bnz\.w	\$w19,[0-9a-f]+ <[^>]*>
[	]*[0-9a-f]+: .*R_MIPS_PC16	L0.*
[0-9a-f]+ <[^>]*> 00000000 	nop
[0-9a-f]+ <[^>]*> 47d47fff 	bnz\.w	\$w20,[0-9a-f]+ <[^>]*>
[	]*[0-9a-f]+: .*R_MIPS_PC16	L0.*
[0-9a-f]+ <[^>]*> 00000000 	nop
[0-9a-f]+ <[^>]*> 47d5ffff 	bnz\.w	\$w21,[0-9a-f]+ <[^>]*>
[	]*[0-9a-f]+: .*R_MIPS_PC16	.L1.*5
[0-9a-f]+ <[^>]*> 00000000 	nop
[0-9a-f]+ <[^>]*> 47d6ffff 	bnz\.w	\$w22,[0-9a-f]+ <[^>]*>
[	]*[0-9a-f]+: R_MIPS_PC16	external_label
[0-9a-f]+ <[^>]*> 00000000 	nop
[0-9a-f]+ <[^>]*> 47f78000 	bnz\.d	\$w23,[0-9a-f]+ <[^>]*>
[	]*[0-9a-f]+: .*R_MIPS_PC16	L0.*
[0-9a-f]+ <[^>]*> 00000000 	nop
[0-9a-f]+ <[^>]*> 47f87fff 	bnz\.d	\$w24,[0-9a-f]+ <[^>]*>
[	]*[0-9a-f]+: .*R_MIPS_PC16	L0.*
[0-9a-f]+ <[^>]*> 00000000 	nop
[0-9a-f]+ <[^>]*> 47f9ffff 	bnz\.d	\$w25,[0-9a-f]+ <[^>]*>
[	]*[0-9a-f]+: .*R_MIPS_PC16	.L1.*6
[0-9a-f]+ <[^>]*> 00000000 	nop
[0-9a-f]+ <[^>]*> 47faffff 	bnz\.d	\$w26,[0-9a-f]+ <[^>]*>
[	]*[0-9a-f]+: R_MIPS_PC16	external_label
[0-9a-f]+ <[^>]*> 00000000 	nop
[0-9a-f]+ <[^>]*> 471b8000 	bz\.b	\$w27,[0-9a-f]+ <[^>]*>
[	]*[0-9a-f]+: .*R_MIPS_PC16	L0.*
[0-9a-f]+ <[^>]*> 00000000 	nop
[0-9a-f]+ <[^>]*> 471c7fff 	bz\.b	\$w28,[0-9a-f]+ <[^>]*>
[	]*[0-9a-f]+: .*R_MIPS_PC16	L0.*
[0-9a-f]+ <[^>]*> 00000000 	nop
[0-9a-f]+ <[^>]*> 471dffff 	bz\.b	\$w29,[0-9a-f]+ <[^>]*>
[	]*[0-9a-f]+: .*R_MIPS_PC16	.L1.*7
[0-9a-f]+ <[^>]*> 00000000 	nop
[0-9a-f]+ <[^>]*> 471effff 	bz\.b	\$w30,[0-9a-f]+ <[^>]*>
[	]*[0-9a-f]+: R_MIPS_PC16	external_label
[0-9a-f]+ <[^>]*> 00000000 	nop
[0-9a-f]+ <[^>]*> 473f8000 	bz\.h	\$w31,[0-9a-f]+ <[^>]*>
[	]*[0-9a-f]+: .*R_MIPS_PC16	L0.*
[0-9a-f]+ <[^>]*> 00000000 	nop
[0-9a-f]+ <[^>]*> 47207fff 	bz\.h	\$w0,[0-9a-f]+ <[^>]*>
[	]*[0-9a-f]+: .*R_MIPS_PC16	L0.*
[0-9a-f]+ <[^>]*> 00000000 	nop
[0-9a-f]+ <[^>]*> 4721ffff 	bz\.h	\$w1,[0-9a-f]+ <[^>]*>
[	]*[0-9a-f]+: .*R_MIPS_PC16	.L1.*8
[0-9a-f]+ <[^>]*> 00000000 	nop
[0-9a-f]+ <[^>]*> 4722ffff 	bz\.h	\$w2,[0-9a-f]+ <[^>]*>
[	]*[0-9a-f]+: R_MIPS_PC16	external_label
[0-9a-f]+ <[^>]*> 00000000 	nop
[0-9a-f]+ <[^>]*> 47438000 	bz\.w	\$w3,[0-9a-f]+ <[^>]*>
[	]*[0-9a-f]+: .*R_MIPS_PC16	L0.*
[0-9a-f]+ <[^>]*> 00000000 	nop
[0-9a-f]+ <[^>]*> 47447fff 	bz\.w	\$w4,[0-9a-f]+ <[^>]*>
[	]*[0-9a-f]+: .*R_MIPS_PC16	L0.*
[0-9a-f]+ <[^>]*> 00000000 	nop
[0-9a-f]+ <[^>]*> 4745ffff 	bz\.w	\$w5,[0-9a-f]+ <[^>]*>
[	]*[0-9a-f]+: .*R_MIPS_PC16	.L1.*9
[0-9a-f]+ <[^>]*> 00000000 	nop
[0-9a-f]+ <[^>]*> 4746ffff 	bz\.w	\$w6,[0-9a-f]+ <[^>]*>
[	]*[0-9a-f]+: R_MIPS_PC16	external_label
[0-9a-f]+ <[^>]*> 00000000 	nop
[0-9a-f]+ <[^>]*> 47678000 	bz\.d	\$w7,[0-9a-f]+ <[^>]*>
[	]*[0-9a-f]+: .*R_MIPS_PC16	L0.*
[0-9a-f]+ <[^>]*> 00000000 	nop
[0-9a-f]+ <[^>]*> 47687fff 	bz\.d	\$w8,[0-9a-f]+ <[^>]*>
[	]*[0-9a-f]+: .*R_MIPS_PC16	L0.*
[0-9a-f]+ <[^>]*> 00000000 	nop
[0-9a-f]+ <[^>]*> 4769ffff 	bz\.d	\$w9,[0-9a-f]+ <[^>]*>
[	]*[0-9a-f]+: .*R_MIPS_PC16	.L1.*10
[0-9a-f]+ <[^>]*> 00000000 	nop
[0-9a-f]+ <[^>]*> 476affff 	bz\.d	\$w10,[0-9a-f]+ <[^>]*>
[	]*[0-9a-f]+: R_MIPS_PC16	external_label
[0-9a-f]+ <[^>]*> 00000000 	nop
[0-9a-f]+ <[^>]*> 7b1002c7 	ldi\.b	\$w11,-512
[0-9a-f]+ <[^>]*> 7b0ffb07 	ldi\.b	\$w12,511
[0-9a-f]+ <[^>]*> 7b300347 	ldi\.h	\$w13,-512
[0-9a-f]+ <[^>]*> 7b2ffb87 	ldi\.h	\$w14,511
[0-9a-f]+ <[^>]*> 7b5003c7 	ldi\.w	\$w15,-512
[0-9a-f]+ <[^>]*> 7b4ffc07 	ldi\.w	\$w16,511
[0-9a-f]+ <[^>]*> 7b700447 	ldi\.d	\$w17,-512
[0-9a-f]+ <[^>]*> 7b6ffc87 	ldi\.d	\$w18,511
[0-9a-f]+ <[^>]*> 7815a4da 	fcaf\.w	\$w19,\$w20,\$w21
[0-9a-f]+ <[^>]*> 7838bd9a 	fcaf\.d	\$w22,\$w23,\$w24
[0-9a-f]+ <[^>]*> 785bd65a 	fcun\.w	\$w25,\$w26,\$w27
[0-9a-f]+ <[^>]*> 787eef1a 	fcun\.d	\$w28,\$w29,\$w30
[0-9a-f]+ <[^>]*> 788107da 	fceq\.w	\$w31,\$w0,\$w1
[0-9a-f]+ <[^>]*> 78a4189a 	fceq\.d	\$w2,\$w3,\$w4
[0-9a-f]+ <[^>]*> 78c7315a 	fcueq\.w	\$w5,\$w6,\$w7
[0-9a-f]+ <[^>]*> 78ea4a1a 	fcueq\.d	\$w8,\$w9,\$w10
[0-9a-f]+ <[^>]*> 790d62da 	fclt\.w	\$w11,\$w12,\$w13
[0-9a-f]+ <[^>]*> 79307b9a 	fclt\.d	\$w14,\$w15,\$w16
[0-9a-f]+ <[^>]*> 7953945a 	fcult\.w	\$w17,\$w18,\$w19
[0-9a-f]+ <[^>]*> 7976ad1a 	fcult\.d	\$w20,\$w21,\$w22
[0-9a-f]+ <[^>]*> 7999c5da 	fcle\.w	\$w23,\$w24,\$w25
[0-9a-f]+ <[^>]*> 79bcde9a 	fcle\.d	\$w26,\$w27,\$w28
[0-9a-f]+ <[^>]*> 79dff75a 	fcule\.w	\$w29,\$w30,\$w31
[0-9a-f]+ <[^>]*> 79e2081a 	fcule\.d	\$w0,\$w1,\$w2
[0-9a-f]+ <[^>]*> 7a0520da 	fsaf\.w	\$w3,\$w4,\$w5
[0-9a-f]+ <[^>]*> 7a28399a 	fsaf\.d	\$w6,\$w7,\$w8
[0-9a-f]+ <[^>]*> 7a4b525a 	fsun\.w	\$w9,\$w10,\$w11
[0-9a-f]+ <[^>]*> 7a6e6b1a 	fsun\.d	\$w12,\$w13,\$w14
[0-9a-f]+ <[^>]*> 7a9183da 	fseq\.w	\$w15,\$w16,\$w17
[0-9a-f]+ <[^>]*> 7ab49c9a 	fseq\.d	\$w18,\$w19,\$w20
[0-9a-f]+ <[^>]*> 7ad7b55a 	fsueq\.w	\$w21,\$w22,\$w23
[0-9a-f]+ <[^>]*> 7aface1a 	fsueq\.d	\$w24,\$w25,\$w26
[0-9a-f]+ <[^>]*> 7b1de6da 	fslt\.w	\$w27,\$w28,\$w29
[0-9a-f]+ <[^>]*> 7b20ff9a 	fslt\.d	\$w30,\$w31,\$w0
[0-9a-f]+ <[^>]*> 7b43105a 	fsult\.w	\$w1,\$w2,\$w3
[0-9a-f]+ <[^>]*> 7b66291a 	fsult\.d	\$w4,\$w5,\$w6
[0-9a-f]+ <[^>]*> 7b8941da 	fsle\.w	\$w7,\$w8,\$w9
[0-9a-f]+ <[^>]*> 7bac5a9a 	fsle\.d	\$w10,\$w11,\$w12
[0-9a-f]+ <[^>]*> 7bcf735a 	fsule\.w	\$w13,\$w14,\$w15
[0-9a-f]+ <[^>]*> 7bf28c1a 	fsule\.d	\$w16,\$w17,\$w18
[0-9a-f]+ <[^>]*> 7815a4db 	fadd\.w	\$w19,\$w20,\$w21
[0-9a-f]+ <[^>]*> 7838bd9b 	fadd\.d	\$w22,\$w23,\$w24
[0-9a-f]+ <[^>]*> 785bd65b 	fsub\.w	\$w25,\$w26,\$w27
[0-9a-f]+ <[^>]*> 787eef1b 	fsub\.d	\$w28,\$w29,\$w30
[0-9a-f]+ <[^>]*> 788107db 	fmul\.w	\$w31,\$w0,\$w1
[0-9a-f]+ <[^>]*> 78a4189b 	fmul\.d	\$w2,\$w3,\$w4
[0-9a-f]+ <[^>]*> 78c7315b 	fdiv\.w	\$w5,\$w6,\$w7
[0-9a-f]+ <[^>]*> 78ea4a1b 	fdiv\.d	\$w8,\$w9,\$w10
[0-9a-f]+ <[^>]*> 790d62db 	fmadd\.w	\$w11,\$w12,\$w13
[0-9a-f]+ <[^>]*> 79307b9b 	fmadd\.d	\$w14,\$w15,\$w16
[0-9a-f]+ <[^>]*> 7953945b 	fmsub\.w	\$w17,\$w18,\$w19
[0-9a-f]+ <[^>]*> 7976ad1b 	fmsub\.d	\$w20,\$w21,\$w22
[0-9a-f]+ <[^>]*> 79d9c5db 	fexp2\.w	\$w23,\$w24,\$w25
[0-9a-f]+ <[^>]*> 79fcde9b 	fexp2\.d	\$w26,\$w27,\$w28
[0-9a-f]+ <[^>]*> 7a1ff75b 	fexdo\.h	\$w29,\$w30,\$w31
[0-9a-f]+ <[^>]*> 7a22081b 	fexdo\.w	\$w0,\$w1,\$w2
[0-9a-f]+ <[^>]*> 7a8520db 	ftq\.h	\$w3,\$w4,\$w5
[0-9a-f]+ <[^>]*> 7aa8399b 	ftq\.w	\$w6,\$w7,\$w8
[0-9a-f]+ <[^>]*> 7b0b525b 	fmin\.w	\$w9,\$w10,\$w11
[0-9a-f]+ <[^>]*> 7b2e6b1b 	fmin\.d	\$w12,\$w13,\$w14
[0-9a-f]+ <[^>]*> 7b5183db 	fmin_a\.w	\$w15,\$w16,\$w17
[0-9a-f]+ <[^>]*> 7b749c9b 	fmin_a\.d	\$w18,\$w19,\$w20
[0-9a-f]+ <[^>]*> 7b97b55b 	fmax\.w	\$w21,\$w22,\$w23
[0-9a-f]+ <[^>]*> 7bbace1b 	fmax\.d	\$w24,\$w25,\$w26
[0-9a-f]+ <[^>]*> 7bdde6db 	fmax_a\.w	\$w27,\$w28,\$w29
[0-9a-f]+ <[^>]*> 7be0ff9b 	fmax_a\.d	\$w30,\$w31,\$w0
[0-9a-f]+ <[^>]*> 7843105c 	fcor\.w	\$w1,\$w2,\$w3
[0-9a-f]+ <[^>]*> 7866291c 	fcor\.d	\$w4,\$w5,\$w6
[0-9a-f]+ <[^>]*> 788941dc 	fcune\.w	\$w7,\$w8,\$w9
[0-9a-f]+ <[^>]*> 78ac5a9c 	fcune\.d	\$w10,\$w11,\$w12
[0-9a-f]+ <[^>]*> 78cf735c 	fcne\.w	\$w13,\$w14,\$w15
[0-9a-f]+ <[^>]*> 78f28c1c 	fcne\.d	\$w16,\$w17,\$w18
[0-9a-f]+ <[^>]*> 7915a4dc 	mul_q\.h	\$w19,\$w20,\$w21
[0-9a-f]+ <[^>]*> 7938bd9c 	mul_q\.w	\$w22,\$w23,\$w24
[0-9a-f]+ <[^>]*> 795bd65c 	madd_q\.h	\$w25,\$w26,\$w27
[0-9a-f]+ <[^>]*> 797eef1c 	madd_q\.w	\$w28,\$w29,\$w30
[0-9a-f]+ <[^>]*> 798107dc 	msub_q\.h	\$w31,\$w0,\$w1
[0-9a-f]+ <[^>]*> 79a4189c 	msub_q\.w	\$w2,\$w3,\$w4
[0-9a-f]+ <[^>]*> 7a47315c 	fsor\.w	\$w5,\$w6,\$w7
[0-9a-f]+ <[^>]*> 7a6a4a1c 	fsor\.d	\$w8,\$w9,\$w10
[0-9a-f]+ <[^>]*> 7a8d62dc 	fsune\.w	\$w11,\$w12,\$w13
[0-9a-f]+ <[^>]*> 7ab07b9c 	fsune\.d	\$w14,\$w15,\$w16
[0-9a-f]+ <[^>]*> 7ad3945c 	fsne\.w	\$w17,\$w18,\$w19
[0-9a-f]+ <[^>]*> 7af6ad1c 	fsne\.d	\$w20,\$w21,\$w22
[0-9a-f]+ <[^>]*> 7b19c5dc 	mulr_q\.h	\$w23,\$w24,\$w25
[0-9a-f]+ <[^>]*> 7b3cde9c 	mulr_q\.w	\$w26,\$w27,\$w28
[0-9a-f]+ <[^>]*> 7b5ff75c 	maddr_q\.h	\$w29,\$w30,\$w31
[0-9a-f]+ <[^>]*> 7b62081c 	maddr_q\.w	\$w0,\$w1,\$w2
[0-9a-f]+ <[^>]*> 7b8520dc 	msubr_q\.h	\$w3,\$w4,\$w5
[0-9a-f]+ <[^>]*> 7ba8399c 	msubr_q\.w	\$w6,\$w7,\$w8
[0-9a-f]+ <[^>]*> 7b20525e 	fclass\.w	\$w9,\$w10
[0-9a-f]+ <[^>]*> 7b2162de 	fclass\.d	\$w11,\$w12
[0-9a-f]+ <[^>]*> 7b22735e 	ftrunc_s\.w	\$w13,\$w14
[0-9a-f]+ <[^>]*> 7b2383de 	ftrunc_s\.d	\$w15,\$w16
[0-9a-f]+ <[^>]*> 7b24945e 	ftrunc_u\.w	\$w17,\$w18
[0-9a-f]+ <[^>]*> 7b25a4de 	ftrunc_u\.d	\$w19,\$w20
[0-9a-f]+ <[^>]*> 7b26b55e 	fsqrt\.w	\$w21,\$w22
[0-9a-f]+ <[^>]*> 7b27c5de 	fsqrt\.d	\$w23,\$w24
[0-9a-f]+ <[^>]*> 7b28d65e 	frsqrt\.w	\$w25,\$w26
[0-9a-f]+ <[^>]*> 7b29e6de 	frsqrt\.d	\$w27,\$w28
[0-9a-f]+ <[^>]*> 7b2af75e 	frcp\.w	\$w29,\$w30
[0-9a-f]+ <[^>]*> 7b2b07de 	frcp\.d	\$w31,\$w0
[0-9a-f]+ <[^>]*> 7b2c105e 	frint\.w	\$w1,\$w2
[0-9a-f]+ <[^>]*> 7b2d20de 	frint\.d	\$w3,\$w4
[0-9a-f]+ <[^>]*> 7b2e315e 	flog2\.w	\$w5,\$w6
[0-9a-f]+ <[^>]*> 7b2f41de 	flog2\.d	\$w7,\$w8
[0-9a-f]+ <[^>]*> 7b30525e 	fexupl\.w	\$w9,\$w10
[0-9a-f]+ <[^>]*> 7b3162de 	fexupl\.d	\$w11,\$w12
[0-9a-f]+ <[^>]*> 7b32735e 	fexupr\.w	\$w13,\$w14
[0-9a-f]+ <[^>]*> 7b3383de 	fexupr\.d	\$w15,\$w16
[0-9a-f]+ <[^>]*> 7b34945e 	ffql\.w	\$w17,\$w18
[0-9a-f]+ <[^>]*> 7b35a4de 	ffql\.d	\$w19,\$w20
[0-9a-f]+ <[^>]*> 7b36b55e 	ffqr\.w	\$w21,\$w22
[0-9a-f]+ <[^>]*> 7b37c5de 	ffqr\.d	\$w23,\$w24
[0-9a-f]+ <[^>]*> 7b38d65e 	ftint_s\.w	\$w25,\$w26
[0-9a-f]+ <[^>]*> 7b39e6de 	ftint_s\.d	\$w27,\$w28
[0-9a-f]+ <[^>]*> 7b3af75e 	ftint_u\.w	\$w29,\$w30
[0-9a-f]+ <[^>]*> 7b3b07de 	ftint_u\.d	\$w31,\$w0
[0-9a-f]+ <[^>]*> 7b3c105e 	ffint_s\.w	\$w1,\$w2
[0-9a-f]+ <[^>]*> 7b3d20de 	ffint_s\.d	\$w3,\$w4
[0-9a-f]+ <[^>]*> 7b3e315e 	ffint_u\.w	\$w5,\$w6
[0-9a-f]+ <[^>]*> 7b3f41de 	ffint_u\.d	\$w7,\$w8
[0-9a-f]+ <[^>]*> 783e4819 	ctcmsa	msa_ir,t1
[0-9a-f]+ <[^>]*> 783e5059 	ctcmsa	msa_csr,t2
[0-9a-f]+ <[^>]*> 783e5899 	ctcmsa	msa_access,t3
[0-9a-f]+ <[^>]*> 783e60d9 	ctcmsa	msa_save,t4
[0-9a-f]+ <[^>]*> 787e0359 	cfcmsa	t5,msa_ir
[0-9a-f]+ <[^>]*> 787e0b99 	cfcmsa	t6,msa_csr
[0-9a-f]+ <[^>]*> 787e13d9 	cfcmsa	t7,msa_access
[0-9a-f]+ <[^>]*> 787e1c19 	cfcmsa	s0,msa_save
[0-9a-f]+ <[^>]*> 78be9459 	move\.v	\$w17,\$w18
[0-9a-f]+ <[^>]*> 02959805 	lsa	s3,s4,s5,0x1
[0-9a-f]+ <[^>]*> 02f8b0c5 	lsa	s6,s7,t8,0x4
	\.\.\.
