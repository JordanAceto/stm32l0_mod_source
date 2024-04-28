#ifndef MCP4822_
#define MCP4822_

#include <stdint.h>

/** @brief 12 bit SPI DAC */
namespace MCP4822
{
    /** @brief the number of bits in the DAC */
    constexpr uint16_t NUM_BITS = 12u;

    /** @brief the maximum value of the DAC */
    constexpr uint16_t FULL_SCALE = (1u << NUM_BITS) - 1u;

    /** @brief enumerated MCP4822 output channels */
    enum Channel
    {
        A = 0u,
        B = 1u
    };

    /**
     * @brief Write the given 12 bit value to the DAC.
     *
     * The output voltage of the DAC is proportional to the input value. The DAC has
     * an internal 2.048Vref and this module always sets the gain to 1x. So Vout =
     * (value_ui12 / 4095) * 2.048
     *
     * @param value_ui12 the 12 bit value to write, truncated to [0..FULL_SCALE]
     * @param channel the enumerated channel to write to, A or B
     *
     * @pre SPI1 is configured as Half-duplex master, 16 bit frame, MSB first, CPOL
     * low, CPHA 1 edge, NSS software trigger
     * @pre All core system initialization is complete
     *
     * @post The analog voltage represented by the input value will be present on
     * the given channel pin of the DAC
     */
    void write(uint16_t value_ui12, Channel channel);

} // namespace MCP4822

#endif /* MCP4822_ */
