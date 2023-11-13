.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RDX], EAX 
XCHG EBX, EAX 
SETB BL 
NOT RAX 
SETL BL 
BTR RDI, 69 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE EAX, dword ptr [R14 + RDX] 
CMOVNZ EDI, EDX 
OR SIL, -57 
SETO DIL 
XOR SIL, 18 
SETB BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RDI] 
BTC CX, -47 
TEST EAX, 1974321940 
XOR DL, SIL 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK BTC dword ptr [R14 + RCX], 0 
CMOVBE ECX, ESI 
CMOVBE SI, CX 
LEA EDI, qword ptr [RSI + RCX + 19998] 
AND RAX, RBX 
BTS DX, SI 
AND RBX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RBX], BL 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], AL 
MOVSX RDX, DIL 
NOT EDX 
CMOVNL EAX, EBX 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RCX] 
XCHG EBX, ECX 
CMOVS EDI, EDI 
CMOVNO EDX, EDI 
MOVZX RDX, SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
