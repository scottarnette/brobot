REM optifine: https://optifine.net/downloadx?f=preview_OptiFine_1.15.2_HD_U_G1_pre13.jar&x=75fb89582dd082e032850e4946a3b2a1

SET MINEDIR="C:\Users\%USERNAME%\AppData\Roaming\.minecraft"
MKDIR %MINEDIR%\mods
MKDIR %MINEDIR%\resourcepacks
MKDIR %MINEDIR%\shaderpacks

curl "https://media.forgecdn.net/files/2887/104/MixinBootstrap-1.0.2.jar" --output %MINEDIR%\MixinBootstrap-1.0.2.jar
curl "https://media.forgecdn.net/files/2935/491/OptiForge-MC1.15.2-0.1.11.jar" --output %MINEDIR%\OptiForge-MC1.15.2-0.1.11.jar
curl "https://media.forgecdn.net/files/2935/138/forgemod_VoxelMap-1.9.17_for_1.15.2.jar" --output %MINEDIR%\forgemod_VoxelMap-1.9.17_for_1.15.2.jar
curl "https://media.forgecdn.net/files/2890/251/1.15.2-r1.zip" --output %MINEDIR%\faithful-1.15.2-r1.zip
curl "https://files.minecraftforge.net/maven/net/minecraftforge/forge/1.15.2-31.1.47/forge-1.15.2-31.1.47-installer.jar" --output %MINEDIR%\forge-1.15.2-31.1.47-installer.jar
