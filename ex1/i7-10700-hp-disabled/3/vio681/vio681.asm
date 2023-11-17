.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RSI] 
BTS EAX, -10 
OR AX, 8080 
CMPXCHG AL, SIL # instrumentation
CMOVZ CX, AX 
LAHF  
MOV AL, -40 
SETNLE BL 
AND RDI, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RDI] 
BTS BX, -55 
AND SIL, -8 # instrumentation
JNL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
BTR EDI, ECX 
BTS EBX, 33 
AND SIL, 36 # instrumentation
CMOVLE EDI, EAX 
SETNS BL 
AND RBX, 0b1111111111111 # instrumentation
MOV DIL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RDX] 
CMOVZ EDI, EDI 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, -38 # instrumentation
CMOVNB RSI, RDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], BL 
OR CX, 0b1000000000000000 # instrumentation
BSR BX, CX 
BTS RSI, RBX 
BTS ECX, ESI 
AND SIL, 32 # instrumentation
NOT BL 
SETNLE AL 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 77 
LOOP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
OR RAX, 1287621983 
SETNP DL 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RCX 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE CX, word ptr [R14 + RDI] 
MOV CX, CX 
XOR DL, DL 
SETLE CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
