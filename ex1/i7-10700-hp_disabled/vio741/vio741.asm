.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 27 # instrumentation
SETP SIL 
BT ECX, 48 
AND SIL, -64 # instrumentation
SETBE DL 
CMOVS SI, DI 
CMOVB ECX, EDI 
MOVZX EDX, BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE AX, word ptr [R14 + RDI] 
CWD  
TEST RDI, -1785876603 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RBX 
CMPXCHG DL, AL 
BT BX, -88 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RCX], -17483 
XCHG DX, AX 
AND RAX, 0b1111111111111 # instrumentation
XOR AX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
BTR word ptr [R14 + RBX], BX 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RCX] 
OR RDX, -90 
MOVZX BX, AL 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], 273789773 
AND RDX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDX], -46 
CMOVNZ BX, BX 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RCX], -35 
AND RSI, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
BTR word ptr [R14 + RSI], BX 
AND DIL, 93 # instrumentation
SETNS BL 
SETNLE BL 
BT RAX, RAX 
AND DIL, -119 # instrumentation
SETNL AL 
AND BL, BL 
AND RAX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RAX], -73 
CMOVNO EBX, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
