.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV BL, AL 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], -91 
CMOVNZ EDX, EDX 
CMOVNP RDI, RAX 
AND RAX, 0b1111111111111 # instrumentation
AND ECX, 0b111 # instrumentation
BTS dword ptr [R14 + RAX], ECX 
AND RAX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RAX], -12 
CMOVNLE RDX, RDX 
JP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND SIL, 115 # instrumentation
SETBE BL 
OR SI, 0b1000000000000000 # instrumentation
BSR AX, SI 
BTS RSI, RDX 
CBW  
BT AX, DI 
AND SIL, 39 # instrumentation
CMOVL ESI, EBX 
LEA RSI, qword ptr [RAX + RCX + 22583] 
XOR DI, -121 
MOV BX, 12475 
AND RDI, 0b1111111111111 # instrumentation
CMOVL EBX, dword ptr [R14 + RDI] 
BTS DI, DX 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RBX 
MOVSX RDX, CL 
AND EDX, -105 
CMOVL DX, DX 
CMPXCHG AX, SI 
SETNO SIL 
OR DI, 0b1000000000000000 # instrumentation
BSF DI, DI 
JMP .bb_main.3 
.bb_main.3:
XOR RAX, 94932319 
OR BL, BL 
CMOVNO RDI, RSI 
TEST EAX, 1632743346 
STD  
CMOVNL ESI, EDI 
SETS SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
