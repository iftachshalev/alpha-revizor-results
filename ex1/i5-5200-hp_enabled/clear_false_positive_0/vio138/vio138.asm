.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVNB RCX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RSI] 
AND EDX, ESI 
SETZ BL 
TEST AL, -49 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], CL 
BSWAP RSI 
AND RDI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDI], RSI 
AND RDX, 0b1111111111111 # instrumentation
OR BL, byte ptr [R14 + RDX] 
MOVZX BX, BL 
TEST DL, -6 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
BTC DX, BX 
AND DIL, -29 # instrumentation
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
TEST BL, CL 
AND RCX, 0b1111111111111 # instrumentation
AND DI, word ptr [R14 + RCX] 
MOVZX EDX, CL 
NOT ESI 
BTR RSI, RAX 
AND RSI, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RSI], -7 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, -87 # instrumentation
SETNP CL 
AND RDI, 0b1111111111111 # instrumentation
MOVSX CX, byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], SI 
MOVZX EDX, CX 
BTC BX, 52 
TEST DIL, 55 
BTC EDI, -51 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RCX], -935178613 
CMOVNO CX, BX 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 84 
AND RCX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
BTC dword ptr [R14 + RDX], EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
