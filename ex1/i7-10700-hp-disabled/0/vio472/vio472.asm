.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOV RDI, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS BX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EAX, word ptr [R14 + RAX] 
OR DL, 78 
AND RSI, 0b1111111111111 # instrumentation
AND ECX, 0b111 # instrumentation
LOCK BTC dword ptr [R14 + RSI], ECX 
AND RDI, 0b1111111111111 # instrumentation
XOR CL, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EAX 
SETP AL 
AND RDX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDX], 1229884393 
SETNB AL 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, EDI 
AND DIL, 1 # instrumentation
CMOVLE EDI, EBX 
LEA RDX, qword ptr [RSI + RCX + 14166] 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
AND EBX, dword ptr [R14 + RBX] 
CWDE  
CMOVNO RAX, RAX 
BT RAX, -78 
TEST EAX, 1256599580 
XCHG DX, AX 
CDQ  
AND RSI, 0b1111111111111 # instrumentation
XOR RBX, qword ptr [R14 + RSI] 
LEA AX, qword ptr [RBX + RAX] 
LEA DX, qword ptr [RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RBX], 113 
TEST AL, DL 
XCHG AX, AX 
CDQ  
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], 49 
CMOVO AX, BX 
AND RAX, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RAX], 4 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE DX, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
