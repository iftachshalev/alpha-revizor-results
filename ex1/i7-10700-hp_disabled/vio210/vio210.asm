.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -23 # instrumentation
SETNO DIL 
CMOVNL DX, DI 
SETBE BL 
CMOVNBE RAX, RAX 
BTR RBX, RAX 
JBE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOV DI, word ptr [R14 + RAX] 
BTR ESI, ECX 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RCX 
AND DIL, -52 # instrumentation
CMOVNO SI, DI 
AND RSI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RSI], DX 
MOVZX ECX, BL 
MOVSX ECX, BX 
BTR SI, DI 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG AL, CL # instrumentation
SETNS byte ptr [R14 + RDX] 
LAHF  
MOVZX RDI, BL 
BTR ECX, ECX 
AND EBX, 25 
CMOVP BX, DI 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ EDX, dword ptr [R14 + RBX] 
XCHG RDI, RSI 
XADD DL, CL 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND DIL, 3 # instrumentation
SETNS DL 
OR RBX, RBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ DX, word ptr [R14 + RDX] 
BTR DX, DX 
AND SIL, -88 # instrumentation
SETO BL 
XOR CL, -85 
AND RBX, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RBX] 
OR DL, CL 
SETNLE BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
