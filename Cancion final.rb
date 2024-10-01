# Welcome to Sonic Pi

use_bpm 125


# Loop maestro para la sincronización de todos los loops
live_loop :master_sync do
  cue :tick  # Marca el tempo o tick de sincronización
  sleep 1   # Un beat
end

# Bombo
live_loop :bombo do
  sync :tick           #Sincroniza al ritmo del loop maestroD
  if get(:bombo) == 1  # Condicion if para sonar
    sample :bd_haus, amp: 3, lpf: 110
  end
end

# Hihat
live_loop :hihat do
  sync :tick
  if get(:hihat) == 1  # Condicion if para sonar
    sample :drum_cymbal_closed, amp: 0.9, rate: 1.3
    sleep 0.25
  end
end

# Snare
live_loop :snare_hihat do
  sync :tick
  if get(:snare_hihat) == 1   # Condicion if para sonar
    sample :drum_snare_soft, amp: 1.5
    sleep 0.5
  end
end

# Toms
live_loop :toms do
  sync :tick
  if get(:toms) == 1   # Condicion if para sonar
    sample :drum_tom_lo_soft, amp: 1.2, pan: rrand(-1, 1)
  end
end

# Rimshot
live_loop :rimshot do
  sync :tick
  if get(:rimshot) == 1  # Condicion if para sonar
    sample :drum_rimshot, amp: 1.5
  end
end

# Bajo
live_loop :bassline do
  sync :tick
  if get(:bassline) == 1    # Condicion if para sonar
    use_synth :fm
    play :e2, release: 1, amp: 1
    sleep 0.5
    play :g2, release: 1, amp: 1
    sleep 0.5
    play :a2, release: 1, amp: 1
    sleep 0.5
    play :b1, release: 1, amp: 1
    sleep 0.5
  end
end

# Techno pad
live_loop :techno_pad do
  sync :tick
  if get(:techno_pad) == 1     # Condicion if para sonar
    use_synth :prophet
    with_fx :reverb, room: 0.7, mix: 0.5 do
      play chord(:e3, :minor), release: 1, amp: 1.5
      sleep 2
      play chord(:g3, :major), release: 1, amp: 1.5
      sleep 2
      play chord(:a3, :minor), release: 2, amp: 1.5
      sleep 2
      play chord(:b3, :minor), release: 2, amp: 1.5
      sleep 2
    end
  end
end

# Guitarra
live_loop :guitar_melody do
  sync :tick
  if get(:guitar_melody) == 1    # Condicion if para sonar
    with_fx :distortion, distort: 0.4, amp: 1.2 do
      with_fx :reverb, room: 0.8 do
        play_pattern_timed [:e4, :g4, :a4, :b4], [0.5, 0.5, 0.5, 0.5], release: 0.3
      end
    end
    sleep 1.5
  end
end

# Cencerro
live_loop :cowbell do
  sync :tick
  if get(:cowbell) == 1     # Condicion if para sonar
    sample :drum_cowbell, amp: 1.2, rate: 1.5 if one_in(4)
    sleep 0.5
  end
end

# Triángulo
live_loop :triangle do
  sync :tick
  if get(:triangle) == 1     # Condicion if para sonar
    sample :perc_triangle, amp: 1.5, rate: 1
    sleep 1
  end
end

# Efectos aleatorios
live_loop :random_fx do
  sync :tick
  if get(:random_fx) == 1    # Condicion if para sonar
    with_fx :slicer, phase: 0.25 do
      sample :elec_filt_snare, rate: rrand(0.8, 1), amp: 0.5, pan: rrand(-1, 1)
      sleep rrand(4, 8)
    end
  end
end

# Arpegio
live_loop :arpeggio do
  sync :tick
  if get(:arpeggio) == 1    # Condicion if para sonar
    use_synth :tb303
    with_fx :echo, phase: 0.25, mix: 0.4 do
      play_pattern_timed [:e4, :g4, :b4, :a4], [0.25, 0.25, 0.25, 0.25], release: 0.3, amp: 0.8
    end
    sleep 1.5
  end
end

# Gol de Iniesta
live_loop :gol_iniestv do
  sync :tick
  if get(:gol_iniestv) == 1    # Condicion if para sonar
    sample "C:/Users/nacho/Desktop/Trabajos Nacho/Uni/Lenguajes y Paradigmas/Gol_Iniesta.wav", amp: 2
    sleep sample_duration("C:/Users/nacho/Desktop/Trabajos Nacho/Uni/Lenguajes y Paradigmas/Gol_Iniesta.wav")
  end
end

# Base Guapa
live_loop :Base_guapa do
  sync :tick
  if get(:Base_guapa) == 1     # Condicion if para sonar
    sample "C:/Users/nacho/Desktop/Trabajos Nacho/Musica/Samples tech house/Ghosthack_Advent_Calendar_2021_-_Day_1_-_Hyper_Tech_House/Ghosthack - Hyper Tech House/Loops/Full Drums Loops/Ghosthack-HTH_Full Drums 01_125.wav", amp: 2
    sleep sample_duration "C:/Users/nacho/Desktop/Trabajos Nacho/Musica/Samples tech house/Ghosthack_Advent_Calendar_2021_-_Day_1_-_Hyper_Tech_House/Ghosthack - Hyper Tech House/Loops/Full Drums Loops/Ghosthack-HTH_Full Drums 01_125.wav"
  end
end

# Base Guapa 1 (bajo)
live_loop :Base_guapa1 do
  sync :tick
  if get(:Base_guapa1) == 1    # Condicion if para sonar
    sample "C:/Users/nacho/Desktop/Trabajos Nacho/Musica/Samples tech house/Ghosthack_Advent_Calendar_2021_-_Day_1_-_Hyper_Tech_House/Ghosthack - Hyper Tech House/Loops/Bass Loops/Ghosthack-HTH_Bass Loop 05_125_D.wav", amp: 2
    sleep sample_duration "C:/Users/nacho/Desktop/Trabajos Nacho/Musica/Samples tech house/Ghosthack_Advent_Calendar_2021_-_Day_1_-_Hyper_Tech_House/Ghosthack - Hyper Tech House/Loops/Bass Loops/Ghosthack-HTH_Bass Loop 05_125_D.wav"
  end
end

# Base Guapa 2 (top loop)
live_loop :Base_guapa2 do
  sync :tick
  if get(:Base_guapa2) == 1     # Condicion if para sonar
    sample "C:/Users/nacho/Desktop/Trabajos Nacho/Musica/Samples tech house/Ghosthack_Advent_Calendar_2021_-_Day_1_-_Hyper_Tech_House/Ghosthack - Hyper Tech House/Loops/Top Loops/Ghosthack-HTH_Top Loop 14_125.wav", amp: 4
    sleep sample_duration "C:/Users/nacho/Desktop/Trabajos Nacho/Musica/Samples tech house/Ghosthack_Advent_Calendar_2021_-_Day_1_-_Hyper_Tech_House/Ghosthack - Hyper Tech House/Loops/Top Loops/Ghosthack-HTH_Top Loop 14_125.wav"
  end
end

# Buildup
live_loop :Buildup do
  sync :tick
  if get(:Buildup) == 1     # Condicion if para sonar
    sample "C:/Users/nacho/Desktop/Trabajos Nacho/Musica/Samples tech house/Ghosthack_Advent_Calendar_2021_-_Day_1_-_Hyper_Tech_House/Ghosthack - Hyper Tech House/One-Shots/Fills/Long/Ghosthack-HTH_Long Fill 01_125.wav", amp: 2
    sleep sample_duration "C:/Users/nacho/Desktop/Trabajos Nacho/Musica/Samples tech house/Ghosthack_Advent_Calendar_2021_-_Day_1_-_Hyper_Tech_House/Ghosthack - Hyper Tech House/One-Shots/Fills/Long/Ghosthack-HTH_Long Fill 01_125.wav"
  end
end

# Controlador para activar/desactivar loops
live_loop :controlador do
  set :bombo, 0
  set :hihat, 0
  set :snare_hihat, 0
  set :toms, 0
  set :rimshot, 0
  set :bassline, 0
  set :techno_pad, 0
  set :guitar_melody, 1
  set :cowbell, 0
  set :triangle,0
  set :random_fx, 0
  set :arpeggio, 0
  set :gol_iniestv, 0
  set :Base_guapa, 0
  set :Base_guapa1,0
  set :Base_guapa2, 0
  set :Buildup, 0
  sleep 0.5
end
