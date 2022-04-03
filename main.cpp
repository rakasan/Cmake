#include <iostream>
#include <GLFW/glfw3.h>
#include <OLASConfig.h>

#ifdef USE_ADDER
#include "adder/adder.h"
#endif

int main(int argc, char* argv[])
{
    std::cout<<"Hello Zeus /n";

#ifdef USE_ADDER
    std::cout<<" Add sum using adder lib "<<add(23.1f,15.3f)<<"/n";
#else
    std::cout<<"Add wihtout the adder library"<<72.1f + 62.4f<<"\n";
#endif
    std::cout<<argv[0]<<"Version "<< OLAS_VERSION_MAJOR<<" . "<<OLAS_VERSION_MINOR <<"\n";

    GLFWwindow *window;
    if( !glfwInit() )
    {
        fprintf( stderr, "Failed to initialize GLFW\n" );
        exit( EXIT_FAILURE );
    }

        window = glfwCreateWindow( 300, 300, "Gears", NULL, NULL );
    if (!window)
    {
        fprintf( stderr, "Failed to open GLFW window\n" );
        glfwTerminate();
        exit( EXIT_FAILURE );
    }

        // Main loop
    while( !glfwWindowShouldClose(window) )
    {
        // Swap buffers
        glfwSwapBuffers(window);
        glfwPollEvents();
    }

    // Terminate GLFW
    glfwTerminate();

    return 0;
}