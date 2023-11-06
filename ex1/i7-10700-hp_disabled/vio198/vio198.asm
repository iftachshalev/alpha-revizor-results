.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 114 # instrumentation
SETNBE DL 
AND DL, DL 
AND CX, -115 
SETB DL 
JNS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RAX], ESI 
OR AX, -5466 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO BX, word ptr [R14 + RAX] 
XOR AX, CX 
CMOVNZ RDX, RSI 
NOP  
AND RDX, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RDX] 
CMOVNP RCX, RDX 
JNP .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND SIL, -78 # instrumentation
SETNS SIL 
AND RCX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RCX], AL 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RBX], DX 
NOT EDI 
CMOVL AX, DI 
AND AX, 15938 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RCX] 
LOOPNE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND SIL, -122 # instrumentation
SETNB BL 
XCHG SI, AX 
CMOVP ESI, EAX 
CMOVNB DI, SI 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 78 
XCHG BX, AX 
JO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND SIL, -69 # instrumentation
MOV RBX, RDI 
CMOVNO RAX, RAX 
CMPXCHG RDI, RAX 
MOV AX, -18909 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RSI] 
CMOVNLE SI, AX 
CMOVNP EAX, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
