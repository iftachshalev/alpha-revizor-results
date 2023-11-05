.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 18 # instrumentation
CMOVNB RDI, RBX 
MOVSX CX, AL 
BTC RBX, 124 
CMOVNBE EAX, EDX 
BTC EDX, EDX 
SETBE DL 
XADD ECX, EDI 
SAHF  
CLD  
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND SIL, -82 # instrumentation
XCHG CX, AX 
CMOVNS ECX, ECX 
XADD SIL, DIL 
SETS BL 
XCHG RCX, RDI 
CMOVBE RDX, RSI 
BT ECX, EDI 
LOOPE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMOVNS EDI, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RDI] 
OR EDX, -66 
AND RAX, 0b1111111111111 # instrumentation
AND SI, 0b111 # instrumentation
LOCK BTR word ptr [R14 + RAX], SI 
BTR RSI, 89 
MOV CL, AL 
CMC  
STD  
CMOVB ESI, ESI 
BT RDI, 21 
OR RAX, 97 
AND RSI, 0b1111111111111 # instrumentation
XOR DIL, byte ptr [R14 + RSI] 
CMOVL EAX, EDX 
AND RBX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RBX], EBX 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
CBW  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
