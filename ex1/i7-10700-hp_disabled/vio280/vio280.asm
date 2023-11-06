.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RBX], 0 
NOT AL 
SETNZ BL 
JB .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
TEST EAX, 335339233 
CMPXCHG RBX, RDX 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDI], BX 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RAX] 
XCHG EAX, EAX 
BTR DX, BX 
AND DIL, 39 # instrumentation
SETL DL 
MOV AL, -87 
OR BL, 52 
JMP .bb_main.2 
.bb_main.2:
AND SIL, -63 # instrumentation
CMOVNZ EAX, ECX 
AND RCX, 0b1111111111111 # instrumentation
XOR EDX, dword ptr [R14 + RCX] 
CLC  
LEA RAX, qword ptr [RSI + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], -31 
JB .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND SIL, -28 # instrumentation
SETS AL 
CMOVB EAX, ESI 
AND AL, -99 
AND AX, DX 
AND AL, 108 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RDX], AL 
TEST DIL, -116 
AND RBX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RBX] 
CMOVL RCX, RCX 
JMP .bb_main.4 
.bb_main.4:
BTC RBX, RSI 
AND DIL, -19 # instrumentation
SETNZ DL 
CMOVNL EDI, EDX 
AND EAX, -67153201 
MOV RCX, RSI 
AND RBX, 0b1111111111111 # instrumentation
MOVSX DX, byte ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
