.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SAHF  
AND AX, -13613 
SETNZ CL 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EAX 
AND RAX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RAX], 6 
CMOVNS EDI, EDI 
JMP .bb_main.1 
.bb_main.1:
MOV ECX, ECX 
AND RDI, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RDI] 
XADD RDX, RSI 
SAHF  
BSWAP EDI 
JMP .bb_main.2 
.bb_main.2:
AND DIL, 86 # instrumentation
SETNL AL 
MOV CX, -9011 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EBX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RBX], ESI 
XOR CX, -43 
BTR RDI, -111 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RBX], SIL 
LOOPNE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
MOVSX CX, byte ptr [R14 + RDI] 
CMOVNZ CX, DI 
XOR SIL, -62 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RDX, qword ptr [R14 + RDI] 
JMP .bb_main.4 
.bb_main.4:
XOR DX, -74 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVS AX, word ptr [R14 + RDI] 
NOT RSI 
AND RDX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RDX] 
AND EDI, EBX 
CMOVNS EAX, ECX 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDI], -35 
CMOVBE CX, BX 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
