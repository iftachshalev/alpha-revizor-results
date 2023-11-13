.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 67 # instrumentation
STC  
CMOVLE DI, DI 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTC dword ptr [R14 + RBX], 6 
AND DIL, -18 # instrumentation
MOV EBX, EDX 
CMOVNLE EAX, EAX 
OR RAX, 589562492 
AND RBX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RBX], DIL 
XOR RAX, 108 
AND RDI, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
BTR dword ptr [R14 + RDI], EDI 
SETB AL 
BTC EDI, EDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVS SI, word ptr [R14 + RDI] 
CMOVNZ ESI, EBX 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RDI] 
BTS RAX, RAX 
AND DIL, -73 # instrumentation
CMOVNBE RSI, RAX 
MOV RDI, -8183510181612922883 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 28 
MOVSX CX, BL 
SETLE DL 
CMOVNLE DX, CX 
XOR SI, BX 
CWDE  
CWD  
XOR RDI, 127 
XOR EAX, -2087777217 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RDX] 
TEST EAX, 745594812 
CMOVNP EDX, ECX 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RCX], 6 
AND DIL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
