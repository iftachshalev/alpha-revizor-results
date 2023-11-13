.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RAX], 1 
AND RBX, 0b1111111111111 # instrumentation
CMOVS AX, word ptr [R14 + RBX] 
OR AL, AL 
AND RDX, 0b1111111111111 # instrumentation
AND SI, word ptr [R14 + RDX] 
CMOVZ RDX, RSI 
AND RAX, -1544672852 
XADD EDX, ECX 
CMOVNO EBX, EBX 
BTC RDX, RDX 
CMOVBE DX, CX 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR EBX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RBX], 108 
SETZ DL 
TEST DX, BX 
AND RBX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RBX] 
CMOVNB EAX, EDX 
SAHF  
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
NOT ESI 
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], AX 
BTR ECX, EBX 
AND SIL, 112 # instrumentation
CMOVL EBX, EDI 
BTR RSI, 97 
BT RAX, RAX 
BTS DX, BX 
TEST CL, 10 
CMPXCHG CL, BL 
AND RCX, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RCX], 0 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, EAX 
AND RBX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RBX], 0 
AND RDI, 0b1111111111111 # instrumentation
XOR CL, byte ptr [R14 + RDI] 
CMOVLE RBX, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
