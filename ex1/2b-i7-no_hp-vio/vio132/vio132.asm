.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BT EDI, -25 
CWDE  
BSWAP RCX 
CMPXCHG AL, BL 
XOR SI, CX 
CMOVNBE ECX, ESI 
SETLE CL 
XOR AL, DL 
AND BL, SIL 
NOT DX 
XOR RAX, RDX 
OR AX, 0b1000000000000000 # instrumentation
BSF DX, AX 
CMOVZ EBX, EDI 
SETNZ AL 
MOVZX RBX, SI 
SAHF  
CLC  
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RAX], RAX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST AX, -20183 
AND RDX, 34 
XADD BL, DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RSI], AX 
AND RBX, 0b1111111111111 # instrumentation
OR BX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], AL 
BTS EBX, EDX 
AND RCX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVS EBX, dword ptr [R14 + RAX] 
TEST DL, AL 
CMOVP ESI, ESI 
SETNO AL 
CMOVNB CX, DI 
AND RCX, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
