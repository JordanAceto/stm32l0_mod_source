#include "adc.h"
#include "analog_signals.hpp"

namespace AnalogSignals
{
    // buffer to be filled via DMA
    static volatile uint32_t buff[Channel::NUM_CHANNELS];

    void start_DMA()
    {
        HAL_ADCEx_Calibration_Start(&hadc, ADC_SINGLE_ENDED);
        HAL_ADC_Start_DMA(&hadc, (uint32_t *)buff, Channel::NUM_CHANNELS);
    }

    uint16_t get(Channel channel)
    {
        return (uint16_t)buff[channel];
    }

} // namespace AnalogSignals
