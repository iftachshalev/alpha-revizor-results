.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG DI, AX 
TEST BL, CL 
AND RAX, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RAX] 
SETP BL 
MOV DL, AL 
CMOVB EDI, EDI 
SETB DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDI], -100 
AND RCX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RCX], RAX 
SETO AL 
CMOVNS ECX, ECX 
BT RAX, -27 
AND RCX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RCX], 53 
XOR DX, CX 
AND RAX, 0b1111111111111 # instrumentation
XOR CX, word ptr [R14 + RAX] 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR BL, DL 
CMOVNZ BX, AX 
AND RSI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RSI], -17 
XADD CL, DL 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], 68 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS RDI, qword ptr [R14 + RSI] 
AND BL, AL 
AND RCX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RCX] 
MOV BX, -27486 
BT DI, DI 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], -127 
AND RSI, 0b1111111111111 # instrumentation
CMOVL DI, word ptr [R14 + RSI] 
CMOVNL CX, SI 
MOV DL, -87 
XOR AX, BX 
AND RSI, 0b1111111111111 # instrumentation
MOVZX DI, byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
