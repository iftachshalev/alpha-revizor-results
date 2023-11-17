.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND EDI, -66 
AND RAX, 733462269 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, EAX 
XCHG BL, BL 
AND RBX, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RBX], 0 
MOVZX EDI, DIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RSI], 127 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND CL, -1 
SETS DIL 
BT BX, AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RDX] 
BSWAP EBX 
XOR DIL, -36 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RDI 
OR CX, DI 
AND RAX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RAX] 
XCHG EAX, EAX 
SETZ BL 
SETL CL 
JMP .bb_main.2 
.bb_main.2:
AND SIL, 15 # instrumentation
MOVSX EBX, CL 
MOVSX BX, DL 
CMOVP DI, SI 
OR DL, AL 
SETNBE DIL 
AND RDX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RDX], 0 
XCHG RCX, RAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RDX] 
SETNBE DL 
AND RSI, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RSI] 
MOV ESI, EAX 
AND CX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
