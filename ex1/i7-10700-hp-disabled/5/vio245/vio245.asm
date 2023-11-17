.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 75 # instrumentation
CMOVNLE CX, AX 
SETL DIL 
BTR RSI, 14 
XOR EDI, 47 
AND RDI, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDI], 68 
AND RCX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RCX] 
CMOVB BX, SI 
MOV RCX, -7966423980727262362 
AND AL, -3 
AND RCX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RCX], 116 
JNLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
CLC  
AND RBX, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
BT qword ptr [R14 + RBX], RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTC dword ptr [R14 + RDX], 5 
BTS RBX, 81 
AND RDI, 0b1111111111111 # instrumentation
MOV EDI, dword ptr [R14 + RDI] 
OR AX, -16693 
XCHG DL, CL 
CMOVB SI, CX 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
BTC RDX, -31 
AND RCX, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RCX] 
BTR SI, CX 
MOVSX EBX, DL 
AND RDX, 0b1111111111111 # instrumentation
XOR CL, byte ptr [R14 + RDX] 
SETNBE DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RSI], CL 
MOV AX, BX 
SETS CL 
OR RCX, RSI 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RAX] 
MOVSX RBX, CL 
BT DX, DI 
CMOVNBE CX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
