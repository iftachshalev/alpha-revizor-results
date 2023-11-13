.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 67 # instrumentation
CMOVNO RSI, RDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB EBX, dword ptr [R14 + RSI] 
CMOVLE RBX, RDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO SI, word ptr [R14 + RAX] 
XCHG ESI, EDX 
XCHG AX, SI 
SETB CL 
CMOVL ESI, EDI 
CMOVL CX, BX 
AND EAX, -1062127280 
CMOVNZ RDI, RCX 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RSI], AL 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 31 # instrumentation
NOT DX 
NOT RSI 
MOVSX EAX, CL 
XCHG SIL, DL 
CMOVB SI, DX 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RAX], 37 
AND RAX, -98 
XADD RDX, RAX 
BTR BX, 81 
CMOVBE BX, CX 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RBX], RAX 
SETP DL 
OR DIL, -82 
LEA RSI, qword ptr [RDI] 
BTR CX, 68 
MOV BL, -121 
AND SIL, -72 
SETNZ BL 
BSWAP EDI 
XADD DL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
