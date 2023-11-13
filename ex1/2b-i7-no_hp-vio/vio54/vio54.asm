.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
BT word ptr [R14 + RBX], DI 
AND SIL, -63 # instrumentation
CMOVL EAX, EDX 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], -18214 
AND RSI, 0b1111111111111 # instrumentation
CMOVP DX, word ptr [R14 + RSI] 
SETB CL 
AND RBX, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RBX], 6 
NOT DI 
OR RAX, 544165331 
BT RSI, RCX 
AND RAX, 1050957302 
MOVZX RAX, DX 
NOT EBX 
MOVZX RDI, CX 
AND RAX, 1455666311 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST AX, -12856 
NOT DIL 
OR CL, DIL 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RCX], DL 
AND RSI, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RSI] 
CMPXCHG CL, CL 
CMOVS EBX, ESI 
CMOVNZ EDI, ESI 
AND RBX, 0b1111111111111 # instrumentation
BT word ptr [R14 + RBX], 7 
CBW  
SAHF  
TEST EDX, -304565144 
CWDE  
BTC CX, -13 
AND SIL, -71 # instrumentation
MOVZX ESI, CX 
CDQ  
CMOVNB EAX, ECX 
SETL AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
