.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 83 # instrumentation
BT RDI, -105 
CMOVBE EBX, EDX 
AND RDI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDI] 
CMOVS RAX, RAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RAX], 119 
AND RAX, 0b1111111111111 # instrumentation
AND RSI, 0b111 # instrumentation
BTC qword ptr [R14 + RAX], RSI 
XOR RSI, RDX 
CMOVNL RAX, RSI 
AND AX, 10302 
MOVSX RSI, AL 
BSWAP RAX 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RCX], DL 
SAHF  
MOVSX RDX, DX 
LEA SI, qword ptr [RDX + RCX + 15815] 
CMOVL ECX, ESI 
BTC CX, -90 
BTR BX, 17 
OR RBX, -122 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RBX] 
AND AX, 7444 
AND RBX, 0b1111111111111 # instrumentation
CMOVO RDX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RSI] 
AND EDX, EBX 
MOVSX EDI, DX 
BTC EDX, -22 
XADD BL, DIL 
MOVSX EDI, DL 
AND RCX, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RCX] 
SETL CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RBX], DX 
BTC ESI, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
