.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -21 # instrumentation
SETZ DL 
BT DI, SI 
XCHG AX, AX 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RAX, word ptr [R14 + RSI] 
CMC  
AND RDI, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RDI] 
MOVZX CX, DIL 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR RSI, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVP ECX, dword ptr [R14 + RAX] 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
XOR DX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RCX], 1 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
MOV BL, -105 
BTS SI, SI 
OR CX, DI 
XCHG CL, DL 
XOR AX, -28325 
SETNO DL 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR AX, 22091 
BTR RDI, 127 
TEST AL, -103 
MOV DL, DL 
CMOVS RDX, RDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO SI, word ptr [R14 + RBX] 
CMPXCHG EBX, EDX 
SETLE DIL 
LEA EBX, qword ptr [RSI] 
XCHG DL, AL 
CMOVNS RCX, RCX 
AND RAX, -2078777298 
XOR AL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
