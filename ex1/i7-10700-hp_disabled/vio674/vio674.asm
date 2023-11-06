.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR AX, -2894 
MOVSX EBX, SI 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RCX], 61 
BTS ECX, EAX 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RDX 
TEST RDX, RAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RBX], RCX 
XOR AL, 5 
CMOVO RAX, RDX 
AND RBX, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RBX], 4 
CMOVBE CX, BX 
JNBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
XADD ESI, ESI 
CLC  
AND RDX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDX], SI 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RDX], CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE RSI, qword ptr [R14 + RDI] 
SETNP BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK BTR qword ptr [R14 + RAX], 7 
AND DIL, -61 # instrumentation
MOVZX RBX, BL 
MOVZX EAX, SIL 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RDX] 
SETNP DL 
BTC EDI, EAX 
CMOVNB ECX, EAX 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], -474340626 
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
OR EAX, -1061559287 
BT DX, CX 
BTC ESI, -56 
TEST EDI, ESI 
SETS BL 
TEST RBX, RSI 
OR AL, 123 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
