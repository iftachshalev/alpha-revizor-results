.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RDX], AX 
SETNB DL 
CMPXCHG RSI, RAX 
MOV DX, DI 
AND RCX, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RCX] 
MOV CX, AX 
CMOVO BX, SI 
CMOVNP EDX, ESI 
BT RDI, -63 
MOVZX ESI, DI 
XOR AL, -101 
CDQ  
BTC DX, -94 
AND RDX, 0b1111111111111 # instrumentation
AND SI, 0b111 # instrumentation
LOCK BTR word ptr [R14 + RDX], SI 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CDQ  
AND RBX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RBX], -126 
XOR AL, 65 
OR BX, 96 
SETZ DIL 
AND RDI, 0b1111111111111 # instrumentation
AND ECX, 0b111 # instrumentation
BTS dword ptr [R14 + RDI], ECX 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RCX], AX 
AND RBX, 0b1111111111111 # instrumentation
OR BX, word ptr [R14 + RBX] 
TEST DL, DIL 
AND RSI, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
AND SI, 0b111 # instrumentation
LOCK BTR word ptr [R14 + RDX], SI 
CMPXCHG CL, AL 
BSWAP RAX 
XCHG EDX, EDI 
AND DL, AL 
BT DI, SI 
AND AX, BX 
BT EDX, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
