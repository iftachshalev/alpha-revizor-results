.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
LOCK BTC word ptr [R14 + RDI], DX 
MOVSX EBX, DL 
OR RAX, 1043025137 
CMOVNO BX, SI 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RAX], RBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTS word ptr [R14 + RSI], 2 
CMPXCHG DI, AX 
CMOVNS BX, SI 
SETBE DIL 
LEA ESI, qword ptr [RBX] 
CMOVZ RBX, RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDX], AL 
MOVSX RAX, AL 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 42 # instrumentation
CMOVS EDI, ESI 
SAHF  
CMOVZ EBX, EBX 
SETZ DIL 
AND RDX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDX], DI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ EDX, dword ptr [R14 + RSI] 
XOR RDI, RDI 
OR AX, -15875 
CMOVS RDI, RDI 
NOT RDX 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMOVNB EBX, dword ptr [R14 + RSI] 
CMOVNP ESI, EAX 
BTS AX, BX 
AND SIL, 18 # instrumentation
CMOVNP RCX, RBX 
SETNL AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVB ECX, dword ptr [R14 + RDX] 
MOV AL, -37 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL CX, word ptr [R14 + RDI] 
SETNP BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
