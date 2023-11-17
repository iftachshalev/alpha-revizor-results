.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR AX, CX 
BTR RCX, -22 
AND SIL, 52 # instrumentation
SETNS BL 
BTR EAX, EBX 
TEST AL, -59 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RSI 
BTC EBX, ECX 
CMOVNZ EBX, EAX 
JNB .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVB RDX, qword ptr [R14 + RDX] 
OR DL, CL 
BTR DX, -65 
MOV BL, AL 
AND RDI, 0b1111111111111 # instrumentation
XOR ESI, dword ptr [R14 + RDI] 
JP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND DIL, -60 # instrumentation
XCHG RAX, RBX 
CMOVNB EAX, EBX 
CLD  
AND RCX, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RSI], RSI 
AND RDI, 0b1111111111111 # instrumentation
MOVZX BX, byte ptr [R14 + RDI] 
JO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND DIL, -18 # instrumentation
SETNB DL 
BTC AX, 14 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], AL 
AND RAX, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
BT qword ptr [R14 + RAX], RDX 
MOVZX EDX, DL 
XCHG EDX, ECX 
BTS DX, DI 
OR RAX, 2100731331 
LEA DI, qword ptr [RBX + RDI] 
OR EDI, 85 
AND RSI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RSI], 121 
SETNL AL 
NOT BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
