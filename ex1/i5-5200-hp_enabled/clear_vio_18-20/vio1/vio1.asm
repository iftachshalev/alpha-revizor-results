.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -7 # instrumentation
CBW  
CMOVNO RSI, RCX 
TEST AL, -103 
OR DIL, DL 
SETL AL 
AND RAX, 0b1111111111111 # instrumentation
BTS word ptr [R14 + RAX], 4 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], 27325 
SETNP CL 
CMOVNS RAX, RSI 
AND RAX, 0b1111111111111 # instrumentation
CMOVP AX, word ptr [R14 + RAX] 
MOVZX AX, CL 
SETNZ BL 
AND RCX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RCX], 6 
LOOPNE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND DIL, -1 # instrumentation
MOVSX ESI, SI 
CMOVBE EDI, ESI 
AND RBX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RBX], AX 
AND RAX, 0b1111111111111 # instrumentation
XOR EDX, dword ptr [R14 + RAX] 
CLC  
MOV RBX, RBX 
SETBE BL 
BT DX, AX 
JMP .bb_main.2 
.bb_main.2:
XCHG RAX, RAX 
OR ECX, 75 
CMOVS ECX, EDI 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], -72 
XCHG DI, CX 
MOV RCX, 4455509795641379198 
LOOPE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND DIL, 14 # instrumentation
CMOVO EDX, ESI 
AND RDX, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RDX] 
CMPXCHG CL, AL 
BTR BX, -27 
XOR RAX, -130453789 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
