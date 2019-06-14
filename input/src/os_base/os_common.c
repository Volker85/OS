#include "os_firstinc.h"
#include "os_task_common.h"

void OS_SetSwBug(os_sw_bugs_t bug_nr, os_sw_bugs_function_t task_func_nr)
{
   OS_SW_BUG[task_func_nr] = bug_nr;
}
#define DWT_CTRL   ((volatile uint32)0xE0001000)
#define DWT_CYCCNT ((volatile uint32)0xE0001004)

#define DWT_LAR     ((volatile uint32)0xE0001FB0)
#define SCB_DEMCR   ((volatile uint32)0xE000EDFC)


unsigned_int32_t OS_GetCurrentTime(void)
{
   /* the only free running counter on STM32F4 is the DWT counter DWT_CYCCNT
   The counter will overflow every 25sec -> provide function OS_ClearCurrentTime to reset the value to 0, and !!! do not use the absolute value for calculations but use the difference between start and stop of timer
   */
   return *DWT_CYCCNT;
}

void OS_ResetCurrentTime(void)
{
   /* unlock the CoreSight (CM4) */
   *DWT_LAR = 0xC5ACCE55; 
   
   /* enable trace/debug block TRCENA */
   *SCB_DEMCR |= 0x01000000; 
   
   /* reset the counter to 0 cycle */
   *DWT_CYCCNT = 0;
   
   /* enable the counter */   
   *DWT_CTRL |= 1; 
}

typedef struct BigInt
{
  /*
  number 0x4000 is stored as {0x00,0x00,0x00,0x00,
                              0x00,0x00,0x00,0x00,
                              0x00,0x00,0x00,0x00,
                              0x00,0x00,0x40,0x00}
                              Big endian 
  */ 
  uint8  Number[BigIntSize]; 
};

void IntAdd(BBigInt* Summe, BigInt* ErsterSummand, BigInt* ZweiterSummand)
{
   uint16 carry  = 0;
   for(uint8 pos = BigIntSize-1; pos >= 0; pos--)
   {
      uint16 tmpSum = (uint16)ErsterSummand->Number[i] +(uint16)ZweiterSummand->Number[i] + carry;   
      Summe->Number[pos] = tmpSum & 0xFFu;
      carry = tmpSum & 0xFF00u;      
   }   
}
void IntSub(BigInt* Differenz, BigInt* Minuend, BigInt* Subtrahend)
{
   uint16 carry  = 0;
   for(uint8 pos = BigIntSize-1; pos >= 0; pos--)
   {
      uint16 tmpDiff;
      if(Minuend->Number[i]  >= (Subtrahend->Number[i] + carry))
      {
         tmpDiff = (uint16)Minuend->Number[i] - (uint16)Subtrahend->Number[i] - carry;   
      }
      else if((Minuend->Number[i]+0x100)  >= (Subtrahend->Number[i] + carry))
      {
         tmpDiff = 0x100+(uint16)Minuend->Number[i] - (uint16)Subtrahend->Number[i] - (uint16)carry;   
          
      }
      else      
      {
         /* not possible */
      }   
   }      
}
void IntMul(BigInt* Produkt, BigInt* Faktor1, BigInt* Faktor2)
{
   BigInt tmpBigInt;
   /* clear output */
   AssignNull(Produkt);
   
   for(uint8 i1 = 0; i1 < BigIntSize; i1++)
   {
      for(uint8 i2 = 0; i2 < BigIntSize; i2++)
      {         
         tmpProdukt = (uint16)Faktor1->Number[i1] * (uint16)Faktor2->Number[i2];      
         tmpShift = i1+i2;
         
         /* store the number in an temporary BigInt variable ...*/
         tmpBigInt->Number[BigIntSize-1] = tmpProdukt & 0xFFu;
         tmpBigInt->Number[BigIntSize-2] = (tmpProdukt & 0x100u)>>8;
         /* add tmpBigInt to Produkt*/
         IntAdd(Produkt, Produkt, tmpBigInt);         
      }   
   }   
   
}
void IntDiv(BigInt* Quotient, BigInt* Dividend, BigInt* Divisor)
{
   BigInt tmpBigInt;
   /* clear output */
   AssignNull(Produkt);
   
   for(uint8 i1 = 0; i1 < BigIntSize; i1++)
   {
      for(uint8 i2 = 0; i2 < BigIntSize; i2++)
      {         
         //tmpProdukt = (uint16)Faktor1->Number[i1] * (uint16)Faktor2->Number[i2];      
         //tmpShift = i1+i2;
         
         /* store the number in an temporary BigInt variable ...*/
         tmpBigInt->Number[BigIntSize-1] = tmpProdukt & 0xFFu;
         tmpBigInt->Number[BigIntSize-2] = (tmpProdukt & 0x100u)>>8;
         /* add tmpBigInt to Produkt*/
         IntAdd(Quotient, Quotient, tmpBigInt);         
         //TODO: not correct
      }   
   }            
}
boolean_t IsLess(BigInt* Operand1, BigInt* Operand2)
{
   boolean_t IsLess = False;/* in case no if was entered, the numbers are equal -> return False */
   for(uint8 pos = 0; pos < BigIntSize; pos++)
   {
      if(Operand1->Number[pos] < Operand2->Number[pos])
      {
         IsLess = True;
         break;
      }
      else if (Operand1->Number[pos] > Operand2->Number[pos])
      {
         IsLess = False;
         break;
      }
      else
      {
         /* don't break, but continue with next position */
      }        
   }   
}
boolean_t IsLessOrEqual(BigInt* Operand1, BigInt* Operand2)
{
   return IsLess(Operand1,Operand2) || IsEqual(Operand1,Operand2);   
}
boolean_t IsEqual(BigInt* Operand1, BigInt* Operand2)
{
   boolean_t IsEqual = True;/* in case no if/elseif) was entered, the numbers are equal -> return True */
   for(uint8 pos = 0; pos < BigIntSize; pos++)
   {
      if(Operand1->Number[pos] != Operand2->Number[pos])
      {
         IsEqual = False;
         break;
      }
      else
      {
         /* don't break, but continue with next position */
      }        
   }         
}
boolean_t IsGreater(BigInt* Operand1, BigInt* Operand2)
{
   boolean_t IsLess = False;/* in case no if was entered, the numbers are equal -> return False */
   for(uint8 pos = 0; pos < BigIntSize; pos++)
   {
      if(Operand1->Number[pos] < Operand2->Number[pos])
      {
         IsLess = True;
         break;
      }
      else if (Operand1->Number[pos] > Operand2->Number[pos])
      {
         IsLess = False;
         break;
      }
      else
      {
         /* don't break, but continue with next position */
      }        
   }      
}
boolean_t IsGreaterOrEqual(BigInt* Operand1, BigInt* Operand2)
{
   return IsGreater(Operand1,Operand2) || IsEqual(Operand1,Operand2);
}
void Assign(BigInt* leftOperand, BigInt* rightOperand)
{
   for (uint8 pos = 0; pos < BigIntSize; pos++)
   {
      leftOperand->Number[pos] = rightOperand->Number[pos];
   }
}
void AssignNull(BigInt* leftOperand)
{
   for (uint8 pos = 0; pos < BigIntSize; pos++)
   {
      leftOperand->Number[pos] = 0x00;
   }
}