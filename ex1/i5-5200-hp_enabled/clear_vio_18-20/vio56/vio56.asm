.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NOT EAX 
AND AX, BX 
MOV DL, -5 
CMOVNO RAX, RSI 
XCHG AX, AX 
XOR BX, BX 
BTS SI, CX 
AND DL, DL 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RBX] 
SETB DL 
CBW  
XOR EDI, -13 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], DL 
AND RBX, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RBX], 3 
LOOP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, 52 # instrumentation
CMOVBE EDI, EBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB RCX, qword ptr [R14 + RDI] 
SETNZ BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO SI, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RSI] 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDI], AL 
AND RCX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RCX] 
OR RAX, 356415672 
CMOVNL CX, CX 
OR SI, 0b1000000000000000 # instrumentation
BSF DI, SI 
AND SIL, -89 # instrumentation
SETS AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RCX], RSI 
SETO CL 
AND ECX, ECX 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RDI] 
JMP .bb_main.4 
.bb_main.4:
AND DIL, -73 # instrumentation
CMOVNZ RDI, RDX 
CMOVNS EDX, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
