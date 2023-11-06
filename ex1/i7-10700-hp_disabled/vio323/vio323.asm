.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 113 # instrumentation
CMOVNL SI, BX 
SETNO BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], SIL 
JL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND DIL, -1 # instrumentation
SETBE DIL 
AND AL, 126 
SETNBE AL 
CMOVNBE EBX, EBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE EDX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RAX], RCX 
XCHG SI, DI 
BT DI, -27 
AND DIL, -22 # instrumentation
CMOVNL EDI, EAX 
MOVSX ECX, DL 
AND RDX, -67 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR BL, SIL 
XCHG RDX, RAX 
BTS SI, CX 
AND RCX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RCX], DI 
AND EAX, -970268345 
JNS .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
OR ESI, 44 
CMC  
MOVSX ECX, DX 
MOV BL, DL 
SETNLE DL 
JNL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND SIL, -53 # instrumentation
CMOVS RDI, RDX 
MOVZX RCX, AX 
CMOVB AX, CX 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDX], BL 
OR EAX, EAX 
CMOVNS CX, DI 
CMOVP AX, BX 
CMOVB RDX, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
