.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVS AX, word ptr [R14 + RAX] 
XCHG RCX, RBX 
AND RDI, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RDI] 
TEST AX, -28157 
XOR EDI, 48 
MOVSX RAX, DX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
AND DIL, -59 # instrumentation
SETNZ AL 
CMOVNB EBX, EDI 
AND RAX, 0b1111111111111 # instrumentation
OR BL, byte ptr [R14 + RAX] 
TEST AL, BL 
MOVZX EBX, DI 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], -128 
AND AL, -11 
JZ .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], AX 
SETNZ CL 
AND AL, 19 
CMOVNZ ECX, ESI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RAX] 
BTR EDI, 72 
JNBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
BTS EBX, 92 
AND RDI, 0b1111111111111 # instrumentation
AND BX, word ptr [R14 + RDI] 
SETS BL 
OR EAX, 1360649204 
NOP  
JB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RCX], SI 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RSI], ESI 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDX], AL 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EBX, byte ptr [R14 + RDI] 
CMOVP RDX, RSI 
AND EDI, -43 
CMOVLE CX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
