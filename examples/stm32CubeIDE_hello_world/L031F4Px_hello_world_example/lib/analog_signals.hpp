#ifndef ANALOG_SIGNALS_HPP_
#define ANALOG_SIGNALS_HPP_

#include <stdint.h>

namespace AnalogSignals
{
    /** @brief the number of bits in the ADC */
    constexpr uint16_t NUM_BITS = 12u;

    /** @brief the maximum value returned by the ADC */
    constexpr uint16_t FULL_SCALE = (1u << NUM_BITS) - 1u;

    /** @brief enumerated analog input channels */
    enum Channel
    {
        RATE_A = 0u, // do not change the order!
        OFFSET_A,
        RATE_B,
        OFFSET_B,

        NUM_CHANNELS
    };

    /**
     * @brief Start the DMA controller to automatically convert all ADC channels
     *
     * This must be called exactly once before using the ADC
     *
     * @pre ADC IN0..IN3 are configured as ADC inputs
     * @pre ADC is configured for 12-bit mode, right alignment, scan Forward, Continuous mode enabled, DMA continuous
     *      requests enabled, conversions launched by software
     * @pre DMA ADC request is configured for Periph to Mem, Circular mode, periph and mem width = Word, increment Memory
     * @pre All core system initialization is complete
     *
     * @post All analog channels will be continuously converted and available via the AnalogSignals::get(c) function
     */
    void start_DMA();

    /**
     * @brief AnalogSignals::get(c) is the value of analog signal channel c
     *
     * @param channel: the enumerated channel to get
     *
     * @return the integer value representing the digitized analog signal of the given channel in [0..FULL_SCALE]
     *
     * @pre AnalogSignals::start_DMA() has been called prior to calling this function
     */
    uint16_t get(Channel channel);

} // namespace AnalogSignals

#endif /* ANALOG_SIGNALS_HPP_ */
