`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/18 14:33:09
// Design Name: 
// Module Name: watch
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module LogicSignalOut(
       input clk,
  input resetn,
  output reg [7:0] logic_out,
  output reg [3:0]common_digit
  );
  
  integer count=0;
  integer i=0;
  reg [7:0] bit_count=0;
  reg [7:0] second=0;  //1�ʴ��� ǥ��
  reg [7:0] min=0;    //1�д���
  reg [7:0] hour=0;
  reg [7:0] second_in=0;  //1�ʴ��� ǥ��
  reg [7:0] min_in=0;    //1�д���
  reg [7:0] hour_in=0;
  reg [7:0] second10_in=0;  //1�ʴ��� ǥ��
  reg [7:0] min10_in=0;    //1�д���
 reg [7:0] hour10_in=0;
  reg [3:0] digit=0; //�ڸ��� �����Ҷ� �ֱ� ���� ��.


always@(posedge clk, negedge resetn)begin
  
    if(!resetn) begin
    logic_out<=0;
    count<=0;
    common_digit<=0;
    bit_count<=0;
    second<=0;
    min<=0;
    hour<=0;
    min_in<=0;
    second_in<=0;
    second10_in<=0;
    min10_in<=0;
    end
             
     else begin

           
   if(count<95000000) begin   //1ns�� ���� 1Ŭ�� �� 1�ʰ��Ǳ� ���ؼ� ī��Ʈ ���� Ŀ��.
   //�Ʒ� if ���� digit�� 0~3���� ����ؼ� ���� �ݺ���Ű�� ���� ����
   //���� ��ª�� �ۼ� ���������� ���庸�忡�� �ʹ� ����� ���� �Ʒ�ó�� �ۼ�
    count<=count+1;  
    i<=i+1;
    if(i>100)i<=0;
   
  end     
    //��������� digit������
   else begin
     bit_count<=bit_count+8'b00000001;
     count<=0; 
     second<=second+1;
     
     end 
     end
   
  
  if(second==60) begin
       second<=0;
       min<=min+1;
       bit_count<=0;
        end   
   if(min==60) begin
     min<=0;
    hour<=hour+1;
    end   
   if(hour==24) hour<=0;
   
     
   if(i==20) digit=0;
   if(i==40)digit=1;
   if(i==60)digit=2;
   if(i==80)digit=3;
    end
    /* bit_count�� ��,10��,60��(1��),600��(10��) ������ ǥ�������� ���ĵ�
     second<=(bit_count%600%60%10);
     second10<=(bit_count%600%60/10);
     min<=(bit_count%600/60);
     min10<=(bit_count/600);   
     */
     
   
    
   
  always@(*)begin
  
  
  //����: seg�� a~dp���� ���� IO 0~7�� ����
     case(min%10) //case(1�ʹ�)
        4'd0:min_in<=8'b11000000;             // 8��Ʈ ����� �����϶� 0�̸� segment�� ������ 
        4'd1:min_in<=8'b11111001;
        4'd2:min_in<=8'b10100100;             
        4'd3:min_in<=8'b10110000;             
        4'd4:min_in<=8'b10011001;
        4'd5:min_in<=8'b10010010;             
        4'd6:min_in<=8'b10000010;           
        4'd7:min_in<=8'b11111000;
        4'd8:min_in<=8'b10000000;                      
        4'd9:min_in<=8'b10010000;        
        default:min_in<=8'b11000000 ;
     endcase
      
      
    case(min/10) //10�ʴ��� ����� 5������ ���´�.
        4'd0:min10_in<=8'b11000000  ;            
        4'd1:min10_in<=8'b11111001   ;
        4'd2:min10_in<=8'b10100100   ;             
        4'd3:min10_in<=8'b10110000   ;             
        4'd4:min10_in<=8'b10011001  ;
        4'd5:min10_in<=8'b10010010  ;             
        4'd6:min10_in<=8'b10000010  ;           
        4'd7:min10_in<=8'b11111000  ;
        4'd8:min10_in<=8'b10000000  ;                      
        4'd9:min10_in<=8'b10010000;        
        default:min10_in<=8'b11000000 ;   
       endcase   
      
    case(hour%10) //1�д���
             4'd0:hour_in<=8'b01000000  ;            
             4'd1:hour_in<=8'b01111001   ;
             4'd2:hour_in<=8'b00100100   ;             
             4'd3:hour_in<=8'b00110000   ;             
             4'd4:hour_in<=8'b00011001  ;
             4'd5:hour_in<=8'b00010010  ;             
             4'd6:hour_in<=8'b00000010  ;           
             4'd7:hour_in<=8'b01111000  ;
             4'd8:hour_in<=8'b00000000  ;                      
             4'd9:hour_in<=8'b00010000;        
             default:hour_in<=8'b01000000 ;    //DP�� �׻� �ѵд�.
       endcase
    case(hour/10) 
        4'd0: hour10_in<=8'b11000000;
        4'd1:hour10_in<=8'b11111001 ;  
        4'd2:hour10_in<=8'b10100100;
        4'd3:hour10_in<=8'b10110000;
        4'd4:hour10_in<=8'b10011001  ;
        4'd5:hour10_in<=8'b10010010  ;
        4'd6:hour10_in<=8'b10000010  ;
        4'd7:hour10_in<=8'b11111000  ;
        4'd8:hour10_in<=8'b10000000  ;
        4'd9:hour10_in<=8'b10010000;
        default:hour10_in<=8'b11000000;
        endcase
      
    
    case(digit) // ������ �ڸ����� ������ �����ٸ� �ݺ��ϱ� ���� case��. �׸��� ���� �ڸ������� logicout�� �ڸ������´� ���� �־���
        0: begin
            common_digit<=4'b0001;
            logic_out<=min_in;
            end
         1: begin
            common_digit<=4'b0010;
            logic_out<=min10_in;
            end
         2:begin
            common_digit<=4'b0100;
            logic_out<=hour_in;
            end
         3:begin
           common_digit<=4'b1000;
           logic_out<=hour10_in;
           end
        default: common_digit<=4'b0000;
    endcase
    end
              
        
    

endmodule

