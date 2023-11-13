.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR DX, 0b1000000000000000 # instrumentation
BSF DX, DX 
AND DIL, 39 # instrumentation
CMOVP RAX, RBX 
AND RDX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDX], CL 
AND RDI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDI], 47 
LEA ESI, qword ptr [RBX + RSI] 
CMOVNS RCX, RAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RSI] 
SETS SIL 
BTC SI, 78 
AND AL, -8 
AND RDX, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RDX] 
CMPXCHG DL, CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RBX], AL 
SETO CL 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTS ESI, ECX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RDX] 
SETLE DIL 
XOR RDX, 84 
MOVZX EDX, DL 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
AND RDX, 0b1111111111111 # instrumentation
AND RDI, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RDX], RDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RSI] 
SETNB DL 
AND RAX, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
MOV ESI, EAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RCX] 
CMOVBE RAX, RSI 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RDI], RAX 
BTS BX, CX 
AND DIL, -107 # instrumentation
CMOVO CX, SI 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
