

 
 
 




window new WaveWindow  -name  "Waves for BMG Example Design"
waveform  using  "Waves for BMG Example Design"

      waveform add -signals /EXTERNAL_MEMORY_tb/status
      waveform add -signals /EXTERNAL_MEMORY_tb/EXTERNAL_MEMORY_synth_inst/bmg_port/CLKA
      waveform add -signals /EXTERNAL_MEMORY_tb/EXTERNAL_MEMORY_synth_inst/bmg_port/ADDRA
      waveform add -signals /EXTERNAL_MEMORY_tb/EXTERNAL_MEMORY_synth_inst/bmg_port/DINA
      waveform add -signals /EXTERNAL_MEMORY_tb/EXTERNAL_MEMORY_synth_inst/bmg_port/WEA
      waveform add -signals /EXTERNAL_MEMORY_tb/EXTERNAL_MEMORY_synth_inst/bmg_port/DOUTA

console submit -using simulator -wait no "run"
