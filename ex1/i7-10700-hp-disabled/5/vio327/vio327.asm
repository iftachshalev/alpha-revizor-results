.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR DX, 46 
NOP  
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDX], RSI 
JNS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOVZX EAX, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR ECX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RDX] 
MOVSX RDI, BL 
OR RAX, -234799694 
XCHG SI, BX 
CMOVNBE ECX, EDX 
CMOVNB RDI, RCX 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, 46 # instrumentation
CMOVNO RCX, RAX 
CMOVS AX, BX 
BTR AX, 70 
CMOVBE RAX, RCX 
TEST RBX, RDX 
NOT RCX 
BTC EAX, 127 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RBX] 
JMP .bb_main.3 
.bb_main.3:
XOR EDX, EAX 
OR RCX, -114 
SETNBE DL 
TEST AL, 115 
CBW  
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], -13433 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RCX], AL 
MOVZX ESI, AL 
BSWAP RDX 
MOVZX RCX, DI 
AND RDX, 0b1111111111111 # instrumentation
BTS word ptr [R14 + RDX], 5 
AND DIL, 39 # instrumentation
CMOVP DI, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
