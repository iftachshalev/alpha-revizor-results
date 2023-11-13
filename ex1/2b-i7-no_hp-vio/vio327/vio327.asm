.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR DL, 9 
BSWAP RAX 
XOR AL, -59 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EDX 
CMPXCHG BX, DI 
SETNP BL 
MOV DI, -20397 
BT RDX, RSI 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, EDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], -12 
AND RDI, 0b1111111111111 # instrumentation
BT word ptr [R14 + RDI], 6 
AND DIL, -22 # instrumentation
XCHG ECX, EAX 
SETS DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RCX], CX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR AX, 19074 
XOR BX, -118 
OR EDI, EDI 
AND RAX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RAX], EBX 
XOR RAX, -114190497 
AND RCX, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
BT word ptr [R14 + RCX], DX 
AND CX, 77 
AND RAX, 121 
SETNL CL 
XOR RDI, -107 
MOVSX ESI, DL 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], 1547356769 
SETNZ DIL 
CMOVNLE RDX, RBX 
AND AL, -40 
MOVZX CX, BL 
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
SETBE SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
