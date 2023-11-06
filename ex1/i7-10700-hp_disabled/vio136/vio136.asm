.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -58 # instrumentation
NOT SI 
LEA RBX, qword ptr [RDI + RSI + 25828] 
SETNS BL 
CMPXCHG CX, SI 
BTR BX, 21 
XADD RDX, RDX 
CMPXCHG DL, AL 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND BL, 64 
AND RCX, 0b1111111111111 # instrumentation
OR EDX, dword ptr [R14 + RCX] 
CMPXCHG CL, DIL # instrumentation
CMOVNLE RBX, RDI 
LAHF  
CMOVLE DI, BX 
XADD EAX, EDX 
BT EAX, 24 
AND SIL, -66 # instrumentation
SETLE BL 
AND RBX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RBX], AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RDI] 
JNP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND DIL, 33 # instrumentation
SETO BL 
AND RDI, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RDI] 
SETS AL 
XOR BL, AL 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RSI], EDX 
CMOVNLE SI, CX 
TEST SI, DX 
AND RBX, 0b1111111111111 # instrumentation
AND CL, byte ptr [R14 + RBX] 
MOVSX DX, AL 
SETO DL 
BT EDI, -124 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], CL 
NOT CL 
NOT AX 
CMOVP ECX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
