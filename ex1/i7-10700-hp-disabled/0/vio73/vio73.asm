.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 80 # instrumentation
CMOVS EAX, EBX 
AND AX, -472 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RBX], DIL 
BTR DX, CX 
AND SIL, -5 # instrumentation
SETP CL 
NOT BL 
OR ECX, ESI 
SETS CL 
XCHG EDX, EAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDI], EAX 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 63 # instrumentation
SETO CL 
MOVSX EBX, AX 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RAX], -73 
CMOVB EAX, EBX 
AND RSI, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDI], 1223981582 
AND RDI, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RDI], EDI 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RDX] 
NOT CX 
CMOVS RBX, RDX 
MOVZX BX, DL 
TEST AL, 67 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
XCHG DI, SI 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], DL 
SETNS DL 
XCHG SIL, SIL 
OR SIL, -34 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RCX], BL 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, ECX 
AND DIL, -91 # instrumentation
CMOVS RDX, RCX 
SETNB AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
