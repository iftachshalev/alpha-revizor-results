.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RCX], RSI 
SETNZ CL 
BTS DX, BX 
AND RAX, 385172524 
XOR DI, BX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE EDI, dword ptr [R14 + RAX] 
CBW  
BTR EDX, EAX 
AND DIL, -71 # instrumentation
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 43 # instrumentation
CMOVNZ BX, CX 
XOR RAX, RDX 
MOVZX EDI, DL 
AND RCX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDI], CL 
AND RDI, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
BT qword ptr [R14 + RDI], RAX 
CMPXCHG ESI, ESI 
MOVSX RDX, DL 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RAX], DIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP BX, word ptr [R14 + RSI] 
OR CX, 0b1000000000000000 # instrumentation
BSF BX, CX 
AND DIL, 18 # instrumentation
CMOVNLE RDI, RBX 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDX], RBX 
CMOVS RAX, RDI 
AND RDX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RDX], 3 
AND DIL, -80 # instrumentation
CMOVNB AX, CX 
CMOVNS RAX, RAX 
XCHG EAX, EAX 
CMOVS EDI, EDI 
CMOVNB ESI, EBX 
JMP .bb_main.3 
.bb_main.3:
AND SIL, -44 # instrumentation
CMOVNBE ECX, EBX 
BTC RCX, 91 
CMPXCHG DX, AX 
BTC BX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
