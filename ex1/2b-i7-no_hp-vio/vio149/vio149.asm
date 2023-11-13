.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 48 # instrumentation
SETB SIL 
MOVSX CX, DIL 
CMOVBE RAX, RBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVS ESI, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RAX], 2 
CMPXCHG CL, SIL # instrumentation
AND SIL, -74 # instrumentation
LAHF  
AND AL, 28 
AND RBX, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
LOCK BTC dword ptr [R14 + RBX], EBX 
MOVSX RAX, SI 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RCX], DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDX], RSI 
SETNBE DIL 
CMOVS ESI, EBX 
AND RBX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RBX], SI 
CMOVZ RDX, RAX 
CMOVP ECX, ESI 
SETBE BL 
JZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 30 # instrumentation
CMOVB RSI, RBX 
AND RAX, 0b1111111111111 # instrumentation
XOR AL, byte ptr [R14 + RAX] 
SETNP CL 
CMOVO ECX, ESI 
AND RCX, 0b1111111111111 # instrumentation
XOR DI, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RAX], 58 
CMPXCHG DIL, SIL # instrumentation
LAHF  
NOP  
XCHG SI, BX 
CMOVNL EDI, EBX 
AND RAX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RBX], CL 
NOT DI 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDI], -57 
CMOVNLE CX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
