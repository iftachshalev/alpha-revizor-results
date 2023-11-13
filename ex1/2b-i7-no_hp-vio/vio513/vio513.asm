.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOVSX AX, byte ptr [R14 + RCX] 
XOR AX, -4261 
CMOVNLE EDI, ESI 
SETNL BL 
AND RBX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RBX], AL 
CMOVO EBX, ECX 
BTR SI, 24 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
AND RAX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RAX], ESI 
AND RSI, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RSI] 
TEST CL, -58 
XADD AL, BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RCX] 
XCHG EDX, EAX 
MOVSX RBX, DL 
XOR SIL, 67 
TEST AL, DL 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST EAX, 1391956994 
BSWAP EDX 
BSWAP RAX 
AND RCX, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
LOCK BTR word ptr [R14 + RCX], CX 
AND RSI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RSI], CL 
SETNBE BL 
AND RDI, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RDI] 
CMOVNZ RCX, RDI 
CMOVNLE EDI, ESI 
BTC EAX, -85 
AND AX, 29301 
MOV CX, CX 
SETNO DIL 
CMOVS AX, BX 
OR CL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
