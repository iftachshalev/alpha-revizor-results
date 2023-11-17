.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
MOVSX EDX, AL 
CMOVNP EDX, EBX 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], AX 
XOR RDX, RSI 
AND AL, AL 
JL .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND SIL, -18 # instrumentation
CMOVB RDI, RSI 
OR EDI, EDI 
MOVZX SI, DIL 
AND RAX, 0b1111111111111 # instrumentation
AND SI, 0b111 # instrumentation
LOCK BTC word ptr [R14 + RAX], SI 
BT BX, DI 
MOVZX RBX, BL 
LOOP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
STC  
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF RSI, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RBX], DL 
XOR RAX, RDI 
CMOVL EAX, ECX 
SETNO BL 
BTR RDI, RCX 
JMP .bb_main.3 
.bb_main.3:
AND SIL, 68 # instrumentation
SETL AL 
TEST ECX, EBX 
CMOVZ DX, DX 
MOVSX RDX, DI 
CMOVNZ RBX, RDX 
CMOVBE EBX, EBX 
CMOVP DX, AX 
JMP .bb_main.4 
.bb_main.4:
TEST CX, CX 
MOV DX, DI 
SETNZ CL 
SETB CL 
SETNZ AL 
MOV CL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
