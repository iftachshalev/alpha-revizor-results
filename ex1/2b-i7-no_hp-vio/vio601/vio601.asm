.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 13 # instrumentation
SETNO BL 
OR RAX, 1974578224 
OR AL, 57 
BTS DI, DX 
XADD EAX, EBX 
OR CX, 0b1000000000000000 # instrumentation
BSR BX, CX 
OR EDI, EDX 
AND DL, -84 
MOVZX ESI, CL 
SETL AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVO RBX, qword ptr [R14 + RAX] 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RBX, RDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RBX] 
CMOVL EAX, ESI 
AND EDI, ECX 
AND AL, AL 
OR AL, DL 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BT EDI, -5 
XCHG RAX, RAX 
OR CX, 0b1000000000000000 # instrumentation
BSF CX, CX 
AND RAX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RAX] 
MOV RSI, 5477201919274928431 
CMOVLE RCX, RBX 
CMOVNZ CX, AX 
AND RBX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RCX] 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, EDI 
AND SIL, 34 # instrumentation
XCHG EAX, EAX 
SETNS BL 
CMOVNP RSI, RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTC dword ptr [R14 + RDX], 4 
BTR BX, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
