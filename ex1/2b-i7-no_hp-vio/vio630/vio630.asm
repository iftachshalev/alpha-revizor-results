.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, EBX 
CMPXCHG CL, BL # instrumentation
AND SIL, -85 # instrumentation
LAHF  
LEA CX, qword ptr [RBX + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RSI, qword ptr [R14 + RDX] 
OR AL, 52 
CDQ  
CMOVNS EAX, ECX 
CMOVO RDX, RSI 
OR RAX, 1141415130 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RCX], BL 
TEST AX, 11109 
BSWAP RDI 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RAX] 
MOVZX AX, DIL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMPXCHG CX, CX 
MOVSX RCX, SIL 
MOVZX DI, DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RDX] 
BTS RBX, 67 
AND SIL, 20 # instrumentation
SETS DIL 
TEST RSI, RCX 
CDQ  
AND RBX, 0b1111111111111 # instrumentation
CMOVNO RAX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EDX 
MOV AX, AX 
AND RBX, 0b1111111111111 # instrumentation
MOVSX ESI, word ptr [R14 + RBX] 
BTS EDI, -1 
BTR EBX, EAX 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], -101 
AND RBX, 0b1111111111111 # instrumentation
OR BX, word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
