.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG ECX, EAX 
CMPXCHG CL, CL 
CMOVP RDI, RDI 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RSI], EDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ RCX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RAX], ECX 
CWDE  
AND RSI, 0b1111111111111 # instrumentation
BT word ptr [R14 + RSI], 3 
AND SIL, 38 # instrumentation
CMOVZ CX, CX 
CMOVL CX, CX 
XCHG DL, CL 
BTC RDI, RAX 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RSI], SIL 
NOT AL 
CMPXCHG DL, CL 
XCHG RAX, RAX 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
NOT CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE CX, word ptr [R14 + RBX] 
CMOVLE BX, SI 
OR BX, 114 
CMOVNP ESI, EAX 
BTS EBX, EDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVO RBX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
BT word ptr [R14 + RCX], BX 
BTC CX, CX 
AND RCX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RCX], AL 
AND RSI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RSI], CL 
CMOVP RAX, RBX 
AND AX, AX 
SETS DL 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RCX 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RBX], DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
