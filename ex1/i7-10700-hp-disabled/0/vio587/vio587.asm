.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RCX], -83 
CMOVLE EAX, EBX 
CMOVZ SI, CX 
CMOVL DX, DI 
MOVZX ESI, DIL 
BTR RDX, RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RSI], EBX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 69 # instrumentation
CMOVL ECX, EDX 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RAX], ESI 
SETB BL 
NOP  
BTS RDI, -19 
AND RSI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RSI], 119 
JRCXZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, -110 # instrumentation
SETBE BL 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, ESI 
AND DIL, -86 # instrumentation
SETS SIL 
MOV DL, DL 
SETS DIL 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
MOVSX RCX, byte ptr [R14 + RCX] 
TEST AL, DL 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], 1450902115 
NOT DIL 
CDQ  
AND EDI, 118 
CLD  
BTC RDX, RSI 
CMOVZ EAX, EDI 
CMPXCHG DL, DL 
CMOVNS DI, AX 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE EAX, dword ptr [R14 + RBX] 
CMOVNZ DX, DX 
BTS RSI, 7 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
