.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR EAX, -621811933 
MOV BL, CL 
AND AX, -24860 
CMOVB RDX, RAX 
MOV ESI, EDI 
XCHG DI, DX 
XCHG RAX, RAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RAX] 
CMOVLE RCX, RAX 
CMOVO DI, SI 
SETP AL 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RAX] 
BT ECX, EDX 
AND SIL, 76 # instrumentation
CMOVL ESI, EDX 
BTR RCX, 125 
AND SIL, -113 # instrumentation
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BT CX, SI 
BTC RDI, -11 
TEST AL, 91 
OR RDX, 118 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RCX], -17 
AND RAX, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RAX] 
AND AL, 100 
CDQ  
AND RBX, 0b1111111111111 # instrumentation
CMOVNP SI, word ptr [R14 + RBX] 
LEA EDX, qword ptr [RDI + RBX + 16475] 
LEA RBX, qword ptr [RDX + RBX] 
BSWAP RSI 
NOT RDX 
CMOVNP RBX, RDI 
XCHG ESI, EAX 
NOT RDX 
OR RAX, -1792012596 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
