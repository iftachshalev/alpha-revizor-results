.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND AX, -31284 
OR AL, 83 
AND RDI, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RDI] 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RSI 
AND RSI, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RSI], RBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RAX] 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDX], -29760 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR DI, 0b1000000000000000 # instrumentation
BSR BX, DI 
OR ECX, EAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE EAX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RCX] 
CMPXCHG CX, BX 
AND SI, SI 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RCX, byte ptr [R14 + RDI] 
BTS SI, 92 
AND DIL, 117 # instrumentation
CMOVLE DX, DX 
SETNL AL 
AND ESI, EDX 
CMPXCHG CL, CL # instrumentation
LEA SI, qword ptr [RAX] 
XCHG RDI, RBX 
CMOVNLE DX, CX 
LAHF  
SETNBE CL 
XADD RBX, RDX 
SETO CL 
AND RAX, 0b1111111111111 # instrumentation
BTR word ptr [R14 + RAX], 1 
BTC DI, -36 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
