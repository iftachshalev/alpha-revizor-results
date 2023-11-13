.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RDX] 
SETBE CL 
BTR ESI, EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDX], DL 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RBX, word ptr [R14 + RCX] 
SETNBE DL 
CMOVP RCX, RAX 
CMOVP EDX, EAX 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], 2700 
XCHG CL, BL 
SETNZ BL 
SETNLE SIL 
MOV BX, -8367 
SETL AL 
SETNLE DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ RSI, qword ptr [R14 + RCX] 
SETNLE AL 
MOV EDX, -1418405726 
AND RCX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RCX], RAX 
AND SIL, -107 # instrumentation
MOVZX RSI, BL 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RBX], DL 
BSWAP EBX 
NOT RSI 
BT ECX, 44 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RSI], 1934 
AND DL, 52 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTS dword ptr [R14 + RDI], 4 
AND DIL, -71 # instrumentation
MOV BL, BL 
SETS CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB BX, word ptr [R14 + RCX] 
MOVZX EDI, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
