.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
XOR AX, word ptr [R14 + RCX] 
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND DIL, 72 # instrumentation
CMOVNL BX, DX 
CMOVNZ CX, DI 
CMOVNP RCX, RBX 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], -87 
AND RBX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RBX], SIL 
CMOVNB EDX, EBX 
CMOVNZ DX, BX 
BTS EDI, 3 
AND DIL, -49 # instrumentation
JNP .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
CLD  
TEST SI, SI 
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], 85 
MOVSX EBX, DI 
CMOVNLE ESI, ESI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RCX] 
JMP .bb_main.3 
.bb_main.3:
AND RCX, RAX 
CBW  
CMOVS SI, SI 
XCHG DI, AX 
AND BL, CL 
BT EDX, -1 
TEST SIL, -39 
AND EBX, ESI 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ ECX, dword ptr [R14 + RBX] 
STC  
AND RSI, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RSI] 
JNL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 23 
BSWAP ESI 
SETP SIL 
OR AL, -72 
MOV RDX, 6281255235055845984 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
