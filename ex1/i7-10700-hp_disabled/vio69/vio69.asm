.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 113 # instrumentation
CMOVZ EBX, EDI 
BT EDX, EBX 
AND SIL, -37 
CMOVLE CX, BX 
LOOPE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND SIL, -37 # instrumentation
SETNS AL 
XADD EBX, EAX 
OR DIL, -26 
SETO CL 
BTR EAX, -76 
SETNB CL 
AND RSI, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RSI] 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, -71 # instrumentation
SETNP AL 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], BL 
CDQ  
AND EAX, 669595494 
CMOVNLE RAX, RDX 
JB .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RBX], 7 
AND SIL, -26 # instrumentation
CMOVLE ECX, EAX 
CMOVB RAX, RAX 
XCHG EBX, EAX 
CMOVB RDX, RSI 
OR RAX, -1899627439 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 90 
SETS BL 
MOV RBX, -2327701826121334441 
JMP .bb_main.4 
.bb_main.4:
OR CX, 0b1000000000000000 # instrumentation
BSF DX, CX 
NOP  
AND RAX, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RAX], 3 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], SIL 
AND SI, BX 
AND EAX, -1590694935 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
