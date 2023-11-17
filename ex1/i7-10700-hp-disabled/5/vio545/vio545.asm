.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -107 # instrumentation
MOVZX CX, AL 
CMOVZ EAX, EDX 
MOVZX EAX, AL 
CWDE  
XOR RCX, RCX 
XOR DL, AL 
JNZ .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RAX] 
CMOVNL RAX, RDX 
BTS EDX, EDX 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], 2098223394 
CMOVNB RCX, RDI 
CMC  
OR BL, AL 
JMP .bb_main.2 
.bb_main.2:
AND DIL, 82 # instrumentation
CMOVL RAX, RDI 
AND RDI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDI], DI 
CMOVLE ECX, EDX 
BT DI, 114 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RDX] 
XOR EDI, EAX 
SETS DL 
CMOVS EBX, ESI 
XOR RAX, -878535036 
LOOPNE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
TEST RBX, 1053352919 
CMOVNL RSI, RDX 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RAX], CX 
BTR RDI, -47 
CMOVZ CX, SI 
JMP .bb_main.4 
.bb_main.4:
OR EAX, -1921625447 
SETNS DIL 
CMOVNP RCX, RAX 
CMOVB RBX, RDX 
XCHG EDI, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
