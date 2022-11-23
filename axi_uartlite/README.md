# AXI Lite-UART

UART采用AXI Lite-Slave接口与CPU通信，支持固定波特率，无奇偶校验

### 1、UART

有限状态机的编码风格：*Synthesizable Finite State Machine Design Techniques Using the New SystemVerilog 3.0 Enhancements*

### 2、AXI Lite-Slave接口

基于模板代码修改，生成模板为带4个32位寄存器的AXI Lite Slave接口

| 寄存器                 | 地址偏移 |
| ---------------------- | -------- |
| RX_FIFO                | 00h      |
| TX_FIFO                | 04h      |
| STAT_REG(表明UART状态) | 08h      |
| CTRL_REG(设置波特率)   | 0Ch      |

CPU->AXI（写地址、写数据、写相应通道）->TX_FIFO->TX

RX->RX_FIFO->AXI（读地址、读数据）->CPU

### 3、CPU

波特率设定：9600 b/s

采用轮询的方法保证FIFO数据被及时取走