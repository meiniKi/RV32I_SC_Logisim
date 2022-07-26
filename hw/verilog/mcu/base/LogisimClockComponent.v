/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : LogisimClockComponent                                        **
 **                                                                          **
 ******************************************************************************/

module LogisimClockComponent( ClockTick,
                              GlobalClock,
                              ClockBus);

   /***************************************************************************
    ** Here all module parameters are defined with a dummy value             **
    ***************************************************************************/
   parameter NrOfBits = 1;
   parameter LowTicks = 1;
   parameter HighTicks = 1;


   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  ClockTick;
   input  GlobalClock;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[4:0] ClockBus;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire s_counter_is_zero;
   wire[NrOfBits-1:0] s_counter_next;
   reg[NrOfBits-1:0] s_counter_reg;
   reg s_derived_clock_reg;
   reg[3:0] s_output_regs;

   /***************************************************************************
    ** Here the output signals are defines; we synchronize them all on the   **
    ** main clock                                                            **
    ***************************************************************************/
   assign ClockBus = {GlobalClock,s_output_regs};
   always @(posedge GlobalClock)
   begin
      s_output_regs[0] <= s_derived_clock_reg;
      s_output_regs[1] <= ~s_derived_clock_reg;
      s_output_regs[2] <= ~s_derived_clock_reg & ClockTick & s_counter_is_zero;
      s_output_regs[3] <= s_derived_clock_reg & ClockTick & s_counter_is_zero;
   end

   /***************************************************************************
    ** Here the control signals are defined                                  **
    ***************************************************************************/
   assign s_counter_is_zero = (s_counter_reg == 0) ? 1'b1 : 1'b0;
   assign s_counter_next = (s_counter_is_zero == 1'b0) ? s_counter_reg - 1 :
                           (s_derived_clock_reg == 1'b1) ? LowTicks - 1 :
                                                           HighTicks - 1;

   /***************************************************************************
    ** Here the initial values are defined (for simulation only)             **
    ***************************************************************************/
   initial
   begin
      s_output_regs = 0;
      s_derived_clock_reg = 0;
      s_counter_reg = 0;
   end

   /***************************************************************************
    ** Here the state registers are defined                                  **
    ***************************************************************************/
   always @(posedge GlobalClock)
   begin
      if (s_counter_is_zero & ClockTick)
      begin
         s_derived_clock_reg <= ~s_derived_clock_reg;
      end
   end

   always @(posedge GlobalClock)
   begin
      if (ClockTick)
      begin
         s_counter_reg <= s_counter_next;
      end
   end


endmodule
