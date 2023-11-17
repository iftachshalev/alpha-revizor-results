.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST BL, BL 
SETP CL 
AND RCX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RCX], RAX 
AND DIL, 52 # instrumentation
CMOVNO RDX, RDI 
CMOVNL CX, DI 
AND CX, CX 
AND RDX, 0b1111111111111 # instrumentation
OR ECX, dword ptr [R14 + RDX] 
JMP .bb_main.1 
.bb_main.1:
XADD BL, BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RBX] 
SETS BL 
BTC ESI, EBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDX], AX 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, -117 # instrumentation
CMOVBE SI, BX 
BTS DX, 15 
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RAX] 
MOVZX ECX, DX 
CMOVL RDI, RAX 
MOV EDI, 664529709 
SETP BL 
BT RSI, RAX 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND SIL, -20 # instrumentation
CMOVZ DI, SI 
CMOVZ RBX, RDI 
AND RDX, 0b1111111111111 # instrumentation
BTC qword ptr [R14 + RDX], 1 
AND RBX, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
BTC word ptr [R14 + RBX], CX 
AND SIL, -17 # instrumentation
SETS DIL 
BTS ESI, -90 
XCHG RSI, RDI 
NOT DL 
SETB DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
