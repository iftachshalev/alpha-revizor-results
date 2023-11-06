.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RSI], ESI 
CMOVL DI, SI 
MOVSX RCX, SI 
TEST AX, 810 
SETNLE AL 
SETZ CL 
SETNB DIL 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR RCX, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RCX], EAX 
TEST EAX, -1411199804 
CMOVL EDX, EDI 
XOR BL, CL 
TEST AL, CL 
SAHF  
CMOVL EAX, EBX 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR SI, 0b1000000000000000 # instrumentation
BSR DX, SI 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE DI, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RSI, qword ptr [R14 + RDI] 
AND AX, 14292 
CMPXCHG AL, DIL # instrumentation
LAHF  
STD  
AND RAX, 0b1111111111111 # instrumentation
CMOVBE ECX, dword ptr [R14 + RAX] 
CMOVNB EDX, EDI 
TEST DIL, DL 
MOVSX EDI, DX 
TEST RDI, -1960551736 
CMOVLE ESI, EBX 
AND AX, 2860 
CMOVNP DX, AX 
AND EDX, EAX 
CMOVB ESI, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
