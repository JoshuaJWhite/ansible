#!/bin/bash
# __  __    _  _____ _        _    ____    ____  _             _               
#|  \/  |  / \|_   _| |      / \  | __ )  / ___|| |_ __ _ _ __| |_ _   _ _ __  
#| |\/| | / _ \ | | | |     / _ \ |  _ \  \___ \| __/ _` | '__| __| | | | '_ \ 
#| |  | |/ ___ \| | | |___ / ___ \| |_) |  ___) | || (_| | |  | |_| |_| | |_) |
#|_|  |_/_/   \_\_| |_____/_/   \_\____/  |____/ \__\__,_|_|   \__|\__,_| .__/ 
#                                                                       |_|    
#note: this script requires nvidia prime render offload drivers
__NV_PRIME_RENDER_OFFLOAD=1 \
	__GLX_VENDOR_LIBRARY_NAME=nvidia \
	/usr/local/bin/matlab -nosoftwareopengl
