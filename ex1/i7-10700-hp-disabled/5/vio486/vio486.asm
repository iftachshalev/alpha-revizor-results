.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RBX], AL 
CMOVNLE BX, AX 
AND RBX, 0b1111111111111 # instrumentation
AND EBX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RBX] 
SETNP CL 
SETLE CL 
LOOPNE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
CDQ  
AND RAX, 0b1111111111111 # instrumentation
CMOVZ EBX, dword ptr [R14 + RAX] 
OR AL, CL 
XOR ESI, EAX 
AND RDI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDI], DL 
CMOVP ESI, EBX 
XADD SIL, BL 
AND RSI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RSI], -76 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RDI] 
AND DIL, -73 # instrumentation
MOVZX CX, CL 
CMC  
JMP .bb_main.2 
.bb_main.2:
MOV BX, 1395 
AND RSI, 0b1111111111111 # instrumentation
AND SI, 0b111 # instrumentation
BT word ptr [R14 + RSI], SI 
AND SIL, 121 # instrumentation
SETNL CL 
CMOVZ DI, SI 
MOVSX AX, BL 
CMOVNB SI, BX 
SETNLE AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RCX], CL 
AND AX, -18168 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RDX, qword ptr [R14 + RCX] 
JMP .bb_main.3 
.bb_main.3:
XADD BX, BX 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], DL 
CMOVBE DI, BX 
XCHG RSI, RAX 
CMOVNP EAX, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
