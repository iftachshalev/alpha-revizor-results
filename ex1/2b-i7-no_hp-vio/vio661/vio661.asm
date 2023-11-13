.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV ESI, -1675699653 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RCX], CL 
MOVSX CX, CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RCX], EAX 
AND RCX, 0b1111111111111 # instrumentation
OR SI, word ptr [R14 + RCX] 
SETO BL 
AND RDX, 0b1111111111111 # instrumentation
AND SI, 0b111 # instrumentation
BT word ptr [R14 + RDX], SI 
XADD CL, AL 
CMOVL ESI, ESI 
MOVSX EDX, DL 
CMOVNS RDI, RBX 
CMOVP RCX, RSI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB RSI, qword ptr [R14 + RSI] 
TEST SI, -17518 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CDQ  
AND RBX, 0b1111111111111 # instrumentation
LOCK BTS dword ptr [R14 + RBX], 5 
OR DX, 0b1000000000000000 # instrumentation
BSF CX, DX 
AND SIL, 73 # instrumentation
SETB CL 
OR EBX, -54 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], 1959030615 
CMOVNLE EDX, EAX 
CMOVP BX, SI 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDX], 125 
CLD  
AND RDX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDX], DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RAX] 
CMOVB DI, AX 
XCHG SIL, DIL 
AND RDI, 0b1111111111111 # instrumentation
BTC qword ptr [R14 + RDI], 0 
MOVSX EDI, DI 
BTC ECX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
