.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX EDI, BX 
XCHG ECX, ECX 
AND RDI, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RDI], 3 
AND SIL, 10 # instrumentation
CMC  
CMOVNLE RCX, RDX 
OR RCX, RCX 
BTR RSI, -29 
OR ESI, -87 
CMOVLE EBX, EAX 
AND AL, -39 
MOVZX BX, AL 
AND BL, -87 
MOVZX CX, AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDX], BL 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMPXCHG DIL, CL # instrumentation
AND SIL, -99 # instrumentation
LAHF  
CMOVNB RBX, RDI 
SETNZ CL 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EDX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RBX], AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], 19 
CMOVO SI, DX 
CMOVS EBX, EDI 
CMOVLE SI, BX 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], -67 
MOV ESI, EDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
XOR DL, byte ptr [R14 + RCX] 
XADD AL, CL 
OR SI, 0b1000000000000000 # instrumentation
BSR AX, SI 
TEST EAX, -2043368551 
TEST AX, -28134 
SETBE BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
