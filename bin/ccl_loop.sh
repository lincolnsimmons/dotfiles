#!/bin/bash

for i in `seq 1 10`;
do
	echo "CCL preping..."
	tejas_encrypt 5 DEV000E 0
	sleep 5
	echo "CCLing 22"
	pip --quiesce 22
	pip --reconfigure 22
	pip --unquiesce 22
	echo "CCLing 23"
	pip --quiesce 23
	pip --reconfigure 23
	pip --unquiesce 23
	echo "CCLing 24"
	pip --quiesce 24
	pip --reconfigure 24
	pip --unquiesce 24
	echo "CCLing 25"
	pip --quiesce 25
	pip --reconfigure 25
	pip --unquiesce 25
	echo "Sleeping..."
	sleep 8
	echo "Verifying..."
	echo "fkm.state" >> /proc/tms/root/gbe101#1.0.0/rs825#0/fpga_obj#3\:22/flashcard825#3\:22/sncon
	echo "fkm.state" >> /proc/tms/root/gbe101#1.0.0/rs825#0/fpga_obj#4\:23/flashcard825#4\:23/sncon
	echo "fkm.state" >> /proc/tms/root/gbe101#1.0.0/rs825#0/fpga_obj#5\:24/flashcard825#5\:24/sncon
	echo "fkm.state" >> /proc/tms/root/gbe101#1.0.0/rs825#0/fpga_obj#6\:25/flashcard825#6\:25/sncon
	echo "dma.dstr 22 -s 4k" >> /proc/tms/root/gbe101#1.0.0/rs825#0/raid_module#0/fpga_obj#0\:04/interface825#0\:04/sncon
	sleep 2
	echo "dma.co" >> /proc/tms/root/gbe101#1.0.0/rs825#0/raid_module#0/fpga_obj#0\:04/interface825#0\:04/sncon
	sleep 2
	echo "dma.co" >> /proc/tms/root/gbe101#1.0.0/rs825#0/raid_module#0/fpga_obj#0\:04/interface825#0\:04/sncon
	sleep 2
	echo "dma.co" >> /proc/tms/root/gbe101#1.0.0/rs825#0/raid_module#0/fpga_obj#0\:04/interface825#0\:04/sncon
	sleep 2
	echo "dma.co" >> /proc/tms/root/gbe101#1.0.0/rs825#0/raid_module#0/fpga_obj#0\:04/interface825#0\:04/sncon
	sleep 2
	echo "dma.dstr 23 -s 4k" >> /proc/tms/root/gbe101#1.0.0/rs825#0/raid_module#0/fpga_obj#0\:04/interface825#0\:04/sncon
	sleep 2
	echo "dma.co" >> /proc/tms/root/gbe101#1.0.0/rs825#0/raid_module#0/fpga_obj#0\:04/interface825#0\:04/sncon
	sleep 2
	echo "dma.co" >> /proc/tms/root/gbe101#1.0.0/rs825#0/raid_module#0/fpga_obj#0\:04/interface825#0\:04/sncon
	sleep 2
	echo "dma.co" >> /proc/tms/root/gbe101#1.0.0/rs825#0/raid_module#0/fpga_obj#0\:04/interface825#0\:04/sncon
	sleep 2
	echo "dma.co" >> /proc/tms/root/gbe101#1.0.0/rs825#0/raid_module#0/fpga_obj#0\:04/interface825#0\:04/sncon
	sleep 2
	echo "dma.dstr 24 -s 4k" >> /proc/tms/root/gbe101#1.0.0/rs825#0/raid_module#0/fpga_obj#0\:04/interface825#0\:04/sncon
	sleep 2
	echo "dma.co" >> /proc/tms/root/gbe101#1.0.0/rs825#0/raid_module#0/fpga_obj#0\:04/interface825#0\:04/sncon
	sleep 2
	echo "dma.co" >> /proc/tms/root/gbe101#1.0.0/rs825#0/raid_module#0/fpga_obj#0\:04/interface825#0\:04/sncon
	sleep 2
	echo "dma.co" >> /proc/tms/root/gbe101#1.0.0/rs825#0/raid_module#0/fpga_obj#0\:04/interface825#0\:04/sncon
	sleep 2
	echo "dma.co" >> /proc/tms/root/gbe101#1.0.0/rs825#0/raid_module#0/fpga_obj#0\:04/interface825#0\:04/sncon
	sleep 2
	echo "dma.dstr 25 -s 4k" >> /proc/tms/root/gbe101#1.0.0/rs825#0/raid_module#0/fpga_obj#0\:04/interface825#0\:04/sncon
	sleep 2
	echo "dma.co" >> /proc/tms/root/gbe101#1.0.0/rs825#0/raid_module#0/fpga_obj#0\:04/interface825#0\:04/sncon
	sleep 2
	echo "dma.co" >> /proc/tms/root/gbe101#1.0.0/rs825#0/raid_module#0/fpga_obj#0\:04/interface825#0\:04/sncon
	sleep 2
	echo "dma.co" >> /proc/tms/root/gbe101#1.0.0/rs825#0/raid_module#0/fpga_obj#0\:04/interface825#0\:04/sncon
	sleep 2
	echo "dma.co" >> /proc/tms/root/gbe101#1.0.0/rs825#0/raid_module#0/fpga_obj#0\:04/interface825#0\:04/sncon
	echo "DONE!"
	sleep 10
done
