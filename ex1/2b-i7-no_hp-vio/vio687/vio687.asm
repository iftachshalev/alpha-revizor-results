.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -89 # instrumentation
CMOVNLE RBX, RDX 
CMOVL DI, DX 
OR EAX, 402542997 
AND RCX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RCX] 
MOV CL, BL 
AND DIL, CL 
MOV RBX, -2829378052733290065 
CMOVNBE AX, DX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS EBX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
BTR word ptr [R14 + RAX], DI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RCX] 
MOV DI, DI 
CMOVL EAX, EDX 
LEA EDI, qword ptr [RCX + RBX + 21556] 
CMC  
AND RCX, 0b1111111111111 # instrumentation
CMOVS EBX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDX], 124 
CMOVNB DX, DI 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVZX RAX, SIL 
CMPXCHG CL, AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RBX], -74 
TEST DL, -86 
SETL AL 
TEST RCX, 543528983 
XOR DL, DIL 
TEST BL, DL 
CMOVNZ EDI, EDI 
CMOVL SI, SI 
BTS ESI, 70 
AND SIL, -86 
SAHF  
AND RSI, 0b1111111111111 # instrumentation
OR EDI, dword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
