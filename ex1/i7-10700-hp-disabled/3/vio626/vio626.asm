.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], CL 
SETB CL 
MOVSX EDI, CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RDI, qword ptr [R14 + RDX] 
OR RAX, -1613201019 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTR word ptr [R14 + RCX], 2 
AND DIL, -4 # instrumentation
CMOVLE BX, BX 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RCX], BL 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], SIL 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RCX 
AND RSI, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
LOCK BTC word ptr [R14 + RSI], DX 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV DL, -34 
BTC RSI, 26 
AND RBX, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
LOCK BTC word ptr [R14 + RBX], DX 
AND SIL, 87 # instrumentation
CMOVNLE RDX, RBX 
SETNL DL 
BSWAP RSI 
TEST ECX, EDI 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RCX, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RAX], RSI 
CMOVNO EDI, EDX 
CMPXCHG AL, AL 
OR EAX, ECX 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RAX], CX 
OR EDX, 36 
AND RCX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RCX], ESI 
AND RDI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDI], EBX 
AND RBX, 0b1111111111111 # instrumentation
AND SI, 0b111 # instrumentation
LOCK BTS word ptr [R14 + RBX], SI 
BT EAX, -36 
AND SIL, -56 # instrumentation
NOT EDX 
SETS BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
