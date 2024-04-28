
#include "MCP4822.hpp"
#include "main.h"
#include "spi.h"

namespace MCP4822
{
  void write(uint16_t value_ui12, Channel channel)
  {
    // limit the input to 12 bits
    uint16_t word_to_write = value_ui12 & FULL_SCALE;
    // select channel, set gain to 1x, and enable vout
    word_to_write |= (channel << 15u) | (1u << 13u) | (1u << 12u);

    uint16_t buff[] = {
        word_to_write,
    };

    // we just write one 16 bit word
    constexpr uint16_t num_words_to_write = 1u;

    HAL_GPIO_WritePin(SPI1_NSS_GPIO_Port, SPI1_NSS_Pin, GPIO_PIN_RESET);
    HAL_SPI_Transmit(&hspi1, (uint8_t *)buff, num_words_to_write, HAL_MAX_DELAY);
    HAL_GPIO_WritePin(SPI1_NSS_GPIO_Port, SPI1_NSS_Pin, GPIO_PIN_SET);
  }
} // namespace MCP4822
