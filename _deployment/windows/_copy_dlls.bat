@echo off
set PROJECT_DIR=D:\programowanie\projekty\Rust\gyroflow
set QT_DIR=D:\Programy\Qt\6.2.2\msvc2019_64
set FFMPEG_DIR=%PROJECT_DIR%\ext\ffmpeg-4.4.1-full_build-shared
set OPENCV_DIR=%PROJECT_DIR%\ext\opencv-4.5.4

set TARGET=%PROJECT_DIR%\_deployment\_binaries\win64
set CMD=xcopy /Y

:: Copy Qt
%CMD% %QT_DIR%\plugins\platforms\qwindows.dll                                                 %TARGET%\platforms\
%CMD% %QT_DIR%\plugins\iconengines\qsvgicon.dll                                               %TARGET%\iconengines\
%CMD% %QT_DIR%\plugins\imageformats\qsvg.dll                                                  %TARGET%\imageformats\
%CMD% %QT_DIR%\bin\Qt6Core.dll                                                                %TARGET%\
%CMD% %QT_DIR%\bin\Qt6Gui.dll                                                                 %TARGET%\
%CMD% %QT_DIR%\bin\Qt6LabsSettings.dll                                                        %TARGET%\
%CMD% %QT_DIR%\bin\Qt6Network.dll                                                             %TARGET%\
%CMD% %QT_DIR%\bin\Qt6OpenGL.dll                                                              %TARGET%\
%CMD% %QT_DIR%\bin\Qt6Qml.dll                                                                 %TARGET%\
%CMD% %QT_DIR%\bin\Qt6QmlModels.dll                                                           %TARGET%\
%CMD% %QT_DIR%\bin\Qt6QmlWorkerScript.dll                                                     %TARGET%\
%CMD% %QT_DIR%\bin\Qt6Quick.dll                                                               %TARGET%\
%CMD% %QT_DIR%\bin\Qt6QuickControls2.dll                                                      %TARGET%\
%CMD% %QT_DIR%\bin\Qt6QuickControls2Impl.dll                                                  %TARGET%\
%CMD% %QT_DIR%\bin\Qt6QuickDialogs2.dll                                                       %TARGET%\
%CMD% %QT_DIR%\bin\Qt6QuickDialogs2QuickImpl.dll                                              %TARGET%\
%CMD% %QT_DIR%\bin\Qt6QuickDialogs2Utils.dll                                                  %TARGET%\
%CMD% %QT_DIR%\bin\Qt6QuickTemplates2.dll                                                     %TARGET%\
%CMD% %QT_DIR%\bin\Qt6Svg.dll                                                                 %TARGET%\
:: Copy QtQuick
%CMD% %QT_DIR%\qml\Qt\labs\settings\qmldir                                                    %TARGET%\Qt\labs\settings\
%CMD% %QT_DIR%\qml\Qt\labs\settings\qmlsettingsplugin.dll                                     %TARGET%\Qt\labs\settings\
%CMD% %QT_DIR%\qml\QtQml\qmldir                                                               %TARGET%\QtQml\
%CMD% %QT_DIR%\qml\QtQml\qmlplugin.dll                                                        %TARGET%\QtQml\
%CMD% %QT_DIR%\qml\QtQml\WorkerScript\qmldir                                                  %TARGET%\QtQml\WorkerScript\
%CMD% %QT_DIR%\qml\QtQml\WorkerScript\workerscriptplugin.dll                                  %TARGET%\QtQml\WorkerScript\
%CMD% %QT_DIR%\qml\QtQuick\Controls\Basic\*.qml                                               %TARGET%\QtQuick\Controls\Basic\
%CMD% %QT_DIR%\qml\QtQuick\Controls\Basic\qmldir                                              %TARGET%\QtQuick\Controls\Basic\
%CMD% %QT_DIR%\qml\QtQuick\Controls\Basic\qtquickcontrols2basicstyleplugin.dll                %TARGET%\QtQuick\Controls\Basic\
%CMD% %QT_DIR%\qml\QtQuick\Controls\Basic\impl\qmldir                                         %TARGET%\QtQuick\Controls\Basic\impl\
%CMD% %QT_DIR%\qml\QtQuick\Controls\Basic\impl\qtquickcontrols2basicstyleimplplugin.dll       %TARGET%\QtQuick\Controls\Basic\impl\
%CMD% %QT_DIR%\qml\QtQuick\Controls\impl\qmldir                                               %TARGET%\QtQuick\Controls\impl\
%CMD% %QT_DIR%\qml\QtQuick\Controls\impl\qtquickcontrols2implplugin.dll                       %TARGET%\QtQuick\Controls\impl\
%CMD% %QT_DIR%\qml\QtQuick\Controls\Material\*.qml                                            %TARGET%\QtQuick\Controls\Material\
%CMD% %QT_DIR%\qml\QtQuick\Controls\Material\qmldir                                           %TARGET%\QtQuick\Controls\Material\
%CMD% %QT_DIR%\qml\QtQuick\Controls\Material\qtquickcontrols2materialstyleplugin.dll          %TARGET%\QtQuick\Controls\Material\
%CMD% %QT_DIR%\qml\QtQuick\Controls\Material\impl\*.qml                                       %TARGET%\QtQuick\Controls\Material\impl\
%CMD% %QT_DIR%\qml\QtQuick\Controls\Material\impl\qmldir                                      %TARGET%\QtQuick\Controls\Material\impl\
%CMD% %QT_DIR%\qml\QtQuick\Controls\Material\impl\qtquickcontrols2materialstyleimplplugin.dll %TARGET%\QtQuick\Controls\Material\impl\
%CMD% %QT_DIR%\qml\QtQuick\Controls\qmldir                                                    %TARGET%\QtQuick\Controls\
%CMD% %QT_DIR%\qml\QtQuick\Controls\qtquickcontrols2plugin.dll                                %TARGET%\QtQuick\Controls\
%CMD% %QT_DIR%\qml\QtQuick\Dialogs\qmldir                                                     %TARGET%\QtQuick\Dialogs\
%CMD% %QT_DIR%\qml\QtQuick\Dialogs\qtquickdialogsplugin.dll                                   %TARGET%\QtQuick\Dialogs\
%CMD% %QT_DIR%\qml\QtQuick\Dialogs\quickimpl\qml\+Material\*.qml                              %TARGET%\QtQuick\Dialogs\quickimpl\qml\+Material\
%CMD% %QT_DIR%\qml\QtQuick\Dialogs\quickimpl\qml\*.qml                                        %TARGET%\QtQuick\Dialogs\quickimpl\qml\
%CMD% %QT_DIR%\qml\QtQuick\Dialogs\quickimpl\qmldir                                           %TARGET%\QtQuick\Dialogs\quickimpl\
%CMD% %QT_DIR%\qml\QtQuick\Dialogs\quickimpl\qtquickdialogs2quickimplplugin.dll               %TARGET%\QtQuick\Dialogs\quickimpl\
%CMD% %QT_DIR%\qml\QtQuick\Layouts\qmldir                                                     %TARGET%\QtQuick\Layouts\
%CMD% %QT_DIR%\qml\QtQuick\Layouts\qquicklayoutsplugin.dll                                    %TARGET%\QtQuick\Layouts\
%CMD% %QT_DIR%\qml\QtQuick\qmldir                                                             %TARGET%\QtQuick\
%CMD% %QT_DIR%\qml\QtQuick\qtquick2plugin.dll                                                 %TARGET%\QtQuick\
%CMD% %QT_DIR%\qml\QtQuick\Templates\qmldir                                                   %TARGET%\QtQuick\Templates\
%CMD% %QT_DIR%\qml\QtQuick\Templates\qtquicktemplates2plugin.dll                              %TARGET%\QtQuick\Templates\
%CMD% %QT_DIR%\qml\QtQuick\Window\qmldir                                                      %TARGET%\QtQuick\Window\
%CMD% %QT_DIR%\qml\QtQuick\Window\quickwindowplugin.dll                                       %TARGET%\QtQuick\Window\

:: Copy ffmpeg
%CMD% %FFMPEG_DIR%\bin\avcodec-58.dll    %TARGET%\
%CMD% %FFMPEG_DIR%\bin\avdevice-58.dll   %TARGET%\
%CMD% %FFMPEG_DIR%\bin\avfilter-7.dll    %TARGET%\
%CMD% %FFMPEG_DIR%\bin\avformat-58.dll   %TARGET%\
%CMD% %FFMPEG_DIR%\bin\avutil-56.dll     %TARGET%\
%CMD% %FFMPEG_DIR%\bin\swresample-3.dll  %TARGET%\
%CMD% %FFMPEG_DIR%\bin\swscale-5.dll     %TARGET%\
%CMD% %FFMPEG_DIR%\bin\postproc-55.dll   %TARGET%\

:: Copy OpenCV
%CMD% %OPENCV_DIR%\bin\opencv_calib3d454.dll     %TARGET%\
%CMD% %OPENCV_DIR%\bin\opencv_core454.dll        %TARGET%\
%CMD% %OPENCV_DIR%\bin\opencv_features2d454.dll  %TARGET%\
%CMD% %OPENCV_DIR%\bin\opencv_flann454.dll       %TARGET%\
%CMD% %OPENCV_DIR%\bin\opencv_imgproc454.dll     %TARGET%\
%CMD% %OPENCV_DIR%\bin\opencv_video454.dll       %TARGET%\

:: Copy Gyroflow
%CMD% %PROJECT_DIR%\target\release\mdk.dll                        %TARGET%\
echo F | %CMD% %PROJECT_DIR%\target\release\gyroflow.exe          %TARGET%\Gyroflow.exe
%CMD% %PROJECT_DIR%\_deployment\windows\Gyroflow_with_console.bat %TARGET%\
%CMD% /E %PROJECT_DIR%\resources\camera_presets\*                 %TARGET%\resources\camera_presets\

:: Other
%CMD% %QT_DIR%\bin\d3dcompiler_47.dll                             %TARGET%\
:: vc_redist.x64.exe