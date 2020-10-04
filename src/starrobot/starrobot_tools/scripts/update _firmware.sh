echo "Welcome to starrobot"
echo "Start updating firmware"
cd ~/stm32_Firmware && stm32flash -R -i -rts,dtr,rts:dtr,dtr,dtr -w starrobot_F4_V1.1.0.bin -v -g 0x0 /dev/starrobotbase -b 115200
echo "Firmware update successful"
