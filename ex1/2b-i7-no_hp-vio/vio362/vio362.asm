.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RBX], AL 
MOV CL, 99 
AND RAX, 0b1111111111111 # instrumentation
BTR dword ptr [R14 + RAX], 5 
BTR RDI, 49 
AND DIL, 77 # instrumentation
SETNS BL 
BTS DX, 21 
CLD  
XCHG AX, DX 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RSI], RSI 
BTR RDX, RBX 
AND RSI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RSI], RDX 
SETLE CL 
SETB DL 
SETNB CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK BTR word ptr [R14 + RAX], 6 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -74 # instrumentation
CMOVNZ DX, AX 
XOR AL, 55 
CMOVP RAX, RDI 
SETLE DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE ECX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS DX, word ptr [R14 + RCX] 
CMOVNP RAX, RSI 
CMOVNO BX, SI 
SETB BL 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], DIL 
NOP  
CMOVL RAX, RDI 
CMOVO BX, CX 
SETNB SIL 
OR AX, 0b1000000000000000 # instrumentation
BSF BX, AX 
AND RDI, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RDI] 
MOV AL, 72 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
