.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR ECX, dword ptr [R14 + RCX] 
BTC RDX, -80 
AND RDI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDI], DL 
XOR EDX, 106 
SETNS AL 
SETNP CL 
AND RDI, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RDI] 
XADD RAX, RAX 
BTR RAX, -47 
AND RBX, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
BTC word ptr [R14 + RBX], BX 
JRCXZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XADD SIL, AL 
XADD RBX, RDI 
AND RSI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RSI], CL 
AND EAX, -1904401615 
BTC EDX, EAX 
AND DIL, 46 # instrumentation
CMOVL DX, BX 
XOR EBX, EDI 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RCX] 
CMOVO RBX, RCX 
CMOVNS RCX, RBX 
SETLE DIL 
JMP .bb_main.2 
.bb_main.2:
AND DIL, 94 # instrumentation
SETB AL 
BT EAX, -40 
XCHG SI, AX 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTS dword ptr [R14 + RBX], 2 
SETB AL 
SETNB CL 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RSI 
XOR EDX, -98 
XCHG CX, CX 
CMOVZ AX, AX 
AND CX, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
