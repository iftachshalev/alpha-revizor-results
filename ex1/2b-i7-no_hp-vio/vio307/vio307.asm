.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG EBX, ESI 
XADD ECX, EDX 
SETL DL 
OR CL, DL 
SETNBE SIL 
AND EAX, 1848291850 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RAX 
BT SI, DI 
AND ESI, EAX 
CMOVLE RSI, RAX 
XOR AX, -2453 
CMOVNLE EDI, EDX 
OR DIL, BL 
MOV SI, DI 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RAX] 
OR AX, 0b1000000000000000 # instrumentation
BSF DX, AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RSI] 
MOVSX EBX, BX 
BSWAP RDI 
CMOVNZ DX, DI 
SETNB BL 
MOV DIL, 123 
CMOVNO RBX, RDX 
CMOVZ ESI, EAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVL SI, word ptr [R14 + RSI] 
CMOVZ BX, BX 
CMOVNBE ECX, ECX 
MOVSX CX, DIL 
SETL CL 
MOV DI, BX 
AND RDX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDX], RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
