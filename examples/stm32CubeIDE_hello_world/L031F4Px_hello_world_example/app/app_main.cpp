#include "analog_signals.hpp"
#include "app_main.hpp"
#include "MCP4822.hpp"
#include "main.h"

/**
 * @brief Write an up-going ramp wave to the DAC as a demo of the hardware
 *
 * The ramp has variable rate and DC offset. The purpose of this is just to dempnstrate that the DAC and ADC are
 * both working, this is not expected to be useful for anything beyond verifying that the PCB is working. The template
 * function approach used here is kind of goofy, and is only used to keep the demo simple while avoiding repeated code.
 * I would not use this approach in a "real" application.
 *
 * This function must be regularly called at some fixed interval which determines the sample rate. This is a very
 * crude form of Direct Digital Synthesis.
 *
 * @tparam Channel: the MCP4822 DAC channel to write to
 * @tparam Rate: the Analog signal to use for the rate control
 * @tparam Offset: the Analog signal to use for the variable DC offset
 *
 * @pre all system initialization is complete
 *
 * @post an upgoing ramp voltage signal will appear at the output of the given DAC channel when this function is
 *    called repeatedly at fixed intervals
 */
template <MCP4822::Channel Channel, AnalogSignals::Channel Rate, AnalogSignals::Channel Offset>
void demo_ramp_tick()
{
  static uint16_t ramp = 0;

  // scale the rate control so the ramp frequency is easy to see with scope or LED, empirically scaled, tweak away
  uint16_t incr = (AnalogSignals::get(Rate) / 50u) + 1u;
  ramp += incr;

  // reset the ramp once we hit the top of the sawtooth pattern
  if (MCP4822::FULL_SCALE < ramp)
  {
    ramp = 0;
  }

  // add a variable DC offset to the ramp, we can push the ramp up and down with this offset
  int offset = AnalogSignals::get(Offset) - (AnalogSignals::FULL_SCALE / 2);
  int offset_ramp = ramp + offset;

  // clamp the offset ramp so it stays within the DAC range
  if (offset_ramp < 0)
  {
    offset_ramp = 0;
  }
  if (MCP4822::FULL_SCALE < offset_ramp)
  {
    offset_ramp = MCP4822::FULL_SCALE;
  }

  MCP4822::write((uint16_t)offset_ramp, Channel);
}

void app_main()
{
  // start the ADC, it will continuously convert all the channels after calling this
  AnalogSignals::start_DMA();

  while (1)
  {
    if (!HAL_GPIO_ReadPin(FREEZE_A_GPIO_Port, FREEZE_A_Pin))
    {
      demo_ramp_tick<MCP4822::Channel::A, AnalogSignals::Channel::RATE_A, AnalogSignals::Channel::OFFSET_A>();
    }

    if (!HAL_GPIO_ReadPin(FREEZE_B_GPIO_Port, FREEZE_B_Pin))
    {
      demo_ramp_tick<MCP4822::Channel::B, AnalogSignals::Channel::RATE_B, AnalogSignals::Channel::OFFSET_B>();
    }

    // generate a square wave on the CLK out pin at 1/2 the sample rate
    HAL_GPIO_TogglePin(CLK_OUT_GPIO_Port, CLK_OUT_Pin);

    // the delay time here is a crude way of setting the sample rate for the demo, the HAL_Delay(n) is
    // "at least n milliseconds", so to get 1msec delay we user zero here, play around with this if desired
    HAL_Delay(0);
  }
}
