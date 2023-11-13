.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 119 # instrumentation
SETNO CL 
CMOVNB SI, DI 
XOR EAX, 2094560715 
AND RDX, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RDX] 
XOR SIL, 51 
AND RCX, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RCX], 3 
AND DIL, 57 # instrumentation
SETS BL 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RCX] 
TEST EDX, 1820146838 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ RSI, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RSI], DIL 
SETNZ DL 
BT DX, -61 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RSI, word ptr [R14 + RCX] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOVSX DX, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL RDX, qword ptr [R14 + RAX] 
SETNLE DL 
AND RAX, RCX 
CMOVP RDI, RAX 
XOR RAX, RDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RBX] 
NOP  
AND RCX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RCX], EDX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
CMOVNBE EDI, ESI 
AND RBX, 0b1111111111111 # instrumentation
MOVSX CX, byte ptr [R14 + RBX] 
CMOVS AX, DI 
CMOVNS SI, CX 
AND RCX, RCX 
CMOVZ RDX, RSI 
SETNBE DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
