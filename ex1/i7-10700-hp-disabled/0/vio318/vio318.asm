.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RCX], SIL 
CMOVNLE EBX, EDX 
BTC BX, 79 
CWD  
MOVSX ESI, DIL 
AND RDX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDX], RCX 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XCHG CL, BL 
BTC ESI, -22 
AND RBX, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RBX], 0 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RBX] 
CMOVNL SI, BX 
JMP .bb_main.2 
.bb_main.2:
CMPXCHG BL, BL 
CMOVS BX, DI 
AND RBX, 0b1111111111111 # instrumentation
XOR EBX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RSI], RDX 
AND RDI, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RDI] 
MOVZX EDI, DL 
CMOVNBE SI, CX 
CMOVNZ BX, CX 
CMOVNS BX, SI 
CMOVNZ RBX, RDX 
SETNO AL 
BT RDX, RAX 
CMOVBE EDI, ESI 
LOOP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVNB RCX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RSI], CX 
CMOVLE RBX, RBX 
BTS EBX, EDI 
AND SIL, 94 # instrumentation
SETS CL 
MOVSX RDX, BX 
SETNB DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RDI], RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
