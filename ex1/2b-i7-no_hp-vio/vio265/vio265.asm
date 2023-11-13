.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -38 # instrumentation
SETBE BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RSI] 
CMOVLE RDX, RDI 
CMOVP EAX, EAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RCX], 39 
SETO DL 
BT RSI, RDI 
MOVZX RSI, CX 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], 113 
XOR BX, CX 
XCHG CL, BL 
OR RBX, 6 
TEST EDX, 161537587 
BTS RBX, -58 
BTS EBX, EDX 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 86 # instrumentation
CMOVNZ RSI, RCX 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF RDI, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], BL 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, EDX 
AND DIL, 67 # instrumentation
MOV ECX, -1835828620 
CMOVNBE RAX, RAX 
CMOVNZ RCX, RBX 
CMOVO RCX, RCX 
SETP CL 
CMPXCHG DX, CX 
SETNL CL 
CMOVB BX, CX 
MOVZX DX, BL 
MOVSX CX, AL 
MOVSX ECX, CL 
XADD SIL, DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
