#=================== ImGui ===================
find_package(SDL2 REQUIRED)
target_link_libraries(ImGui PUBLIC SDL2::SDL2)

# Switch uses OpenGL ES via mesa
target_include_directories(ImGui PUBLIC ${DEVKITPRO}/portlibs/switch/include)
target_link_libraries(ImGui PUBLIC EGL glapi drm_nouveau nx)
add_compile_definitions(IMGUI_IMPL_OPENGL_ES3)
target_compile_definitions(ImGui PRIVATE IMGUI_DISABLE_DEFAULT_SHELL_FUNCTIONS)
