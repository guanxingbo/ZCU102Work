onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib dmadesign_opt

do {wave.do}

view wave
view structure
view signals

do {dmadesign.udo}

run -all

quit -force
