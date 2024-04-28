/**
 * Description:
 * Main entry point for the user application
 */

#ifndef APP_MAIN_HPP_
#define APP_MAIN_HPP_

#ifdef __cplusplus
extern "C"
{
#endif

    /**
     * @brief User application main entry point. Enters an infinite loop and never
     * returns
     *
     * Preconditions:
     * - All core system initialization is complete
     */
    void app_main(void);

#ifdef __cplusplus
}
#endif

#endif /* APP_MAIN_HPP_ */
