###################################################
# Part of GDSiON example project                  #
# Copyright (c) 2024 Yuri Sizov and contributors  #
# Provided under MIT                              #
###################################################

## The manager component for voice presets.
class_name VoiceManager extends Object

var _preset_util: SiONVoicePresetUtil = null
var _voices: Array[Voice] = []
var _drumkits: Array[Drumkit] = []


func _init() -> void:
	# Generate presets with default flags.
	_preset_util = SiONVoicePresetUtil.generate_voices()

	# Full list of preset keys can be fetched with _preset_util.get_voice_preset_keys().
	_register_voices()
	_register_drumkits()


func _notification(what: int) -> void:
	if what == NOTIFICATION_PREDELETE:
		_preset_util.free()


func _register_voices() -> void:
	_register_voice("MIDI", "Grand Piano", "midi.piano1", 0)
	_register_voice("MIDI", "Bright Piano", "midi.piano2", 1)
	_register_voice("MIDI", "Electric Grand", "midi.piano3", 2)
	_register_voice("MIDI", "Honky Tonk", "midi.piano4", 3)
	_register_voice("MIDI", "Electric Piano 1", "midi.piano5", 4)
	_register_voice("MIDI", "Electric Piano 2", "midi.piano6", 5)
	_register_voice("MIDI", "Harpsichord", "midi.piano7", 0)
	_register_voice("MIDI", "Clavi", "midi.piano8", 1)
	_register_voice("MIDI", "Celesta", "midi.chrom1", 2)
	_register_voice("MIDI", "Glockenspiel", "midi.chrom2", 3)
	_register_voice("MIDI", "Music Box", "midi.chrom3", 4)
	_register_voice("MIDI", "Vibraphone", "midi.chrom4", 5)
	_register_voice("MIDI", "Marimba", "midi.chrom5", 0)
	_register_voice("MIDI", "Xylophone", "midi.chrom6", 1)
	_register_voice("MIDI", "Tubular Bells", "midi.chrom7", 2)
	_register_voice("MIDI", "Dulcimer", "midi.chrom8", 3)
	_register_voice("MIDI", "Drawbar Organ", "midi.organ1", 4)
	_register_voice("MIDI", "Percussive Organ", "midi.organ2", 5)
	_register_voice("MIDI", "Rock Organ", "midi.organ3", 0)
	_register_voice("MIDI", "Church Organ", "midi.organ4", 1)
	_register_voice("MIDI", "Reed Organ", "midi.organ5", 2)
	_register_voice("MIDI", "Accordion", "midi.organ6", 3)
	_register_voice("MIDI", "Harmonica", "midi.organ7", 4)
	_register_voice("MIDI", "Tango Accordion", "midi.organ8", 5)
	_register_voice("MIDI", "Nylon Guitar", "midi.guitar1", 0)
	_register_voice("MIDI", "Steel Guitar", "midi.guitar2", 1)
	_register_voice("MIDI", "Jazz Guitar", "midi.guitar3", 2)
	_register_voice("MIDI", "Electric Guitar", "midi.guitar4", 3)
	_register_voice("MIDI", "Muted Guitar", "midi.guitar5", 4)
	_register_voice("MIDI", "Overdrive Guitar", "midi.guitar6", 5)
	_register_voice("MIDI", "Distorted Guitar", "midi.guitar7", 0)
	_register_voice("MIDI", "Guitar harmonics", "midi.guitar8", 1)
	_register_voice("MIDI", "Acoustic Bass", "midi.bass1", 2)
	_register_voice("MIDI", "Finger Bass", "midi.bass2", 3)
	_register_voice("MIDI", "Pick Bass", "midi.bass3", 4)
	_register_voice("MIDI", "Fretless Bass", "midi.bass4", 5)
	_register_voice("MIDI", "Slap Bass 1", "midi.bass5", 0)
	_register_voice("MIDI", "Slap Bass 2", "midi.bass6", 1)
	_register_voice("MIDI", "Synth Bass 1", "midi.bass7", 2)
	_register_voice("MIDI", "Synth Bass 2", "midi.bass8", 3)
	_register_voice("MIDI", "Violin", "midi.strings1", 4)
	_register_voice("MIDI", "Viola", "midi.strings2", 5)
	_register_voice("MIDI", "Cello", "midi.strings3", 0)
	_register_voice("MIDI", "Contrabass", "midi.strings4", 1)
	_register_voice("MIDI", "Tremolo Strings", "midi.strings5", 2)
	_register_voice("MIDI", "Pizzicato Strings", "midi.strings6", 3)
	_register_voice("MIDI", "Harp", "midi.strings7", 4)
	_register_voice("MIDI", "Timpani", "midi.strings8", 5)
	_register_voice("MIDI", "String Ensemble 1", "midi.ensemble1", 0)
	_register_voice("MIDI", "String Ensemble 2", "midi.ensemble2", 1)
	_register_voice("MIDI", "Synth Strings 1", "midi.ensemble3", 2)
	_register_voice("MIDI", "Synth Strings 2", "midi.ensemble4", 3)
	_register_voice("MIDI", "Choir Aahs", "midi.ensemble5", 4)
	_register_voice("MIDI", "Voice Oohs", "midi.ensemble6", 5)
	_register_voice("MIDI", "Synth Voice", "midi.ensemble7", 0)
	_register_voice("MIDI", "Orchestra Hit", "midi.ensemble8", 1)
	_register_voice("MIDI", "Trumpet", "midi.brass1", 2)
	_register_voice("MIDI", "Trombone", "midi.brass2", 3)
	_register_voice("MIDI", "Tuba", "midi.brass3", 4)
	_register_voice("MIDI", "Muted Trumpet", "midi.brass4", 5)
	_register_voice("MIDI", "French Horn", "midi.brass5", 0)
	_register_voice("MIDI", "Brass Section", "midi.brass6", 1)
	_register_voice("MIDI", "Synth Brass 1", "midi.brass7", 2)
	_register_voice("MIDI", "Synth Brass 2", "midi.brass8", 3)
	_register_voice("MIDI", "Soprano Sax", "midi.reed1", 4)
	_register_voice("MIDI", "Alto Sax", "midi.reed2", 5)
	_register_voice("MIDI", "Tenor Sax", "midi.reed3", 0)
	_register_voice("MIDI", "Baritone Sax", "midi.reed4", 1)
	_register_voice("MIDI", "Oboe", "midi.reed5", 2)
	_register_voice("MIDI", "English Horn", "midi.reed6", 3)
	_register_voice("MIDI", "Bassoon", "midi.reed7", 4)
	_register_voice("MIDI", "Clarinet", "midi.reed8", 5)
	_register_voice("MIDI", "Piccolo", "midi.pipe1", 0)
	_register_voice("MIDI", "Flute", "midi.pipe2", 1)
	_register_voice("MIDI", "Recorder", "midi.pipe3", 2)
	_register_voice("MIDI", "Pan Flute", "midi.pipe4", 3)
	_register_voice("MIDI", "Bottle", "midi.pipe5", 4)
	_register_voice("MIDI", "Shakuhachi", "midi.pipe6", 5)
	_register_voice("MIDI", "Whistle", "midi.pipe7", 0)
	_register_voice("MIDI", "Ocarina", "midi.pipe8", 1)
	_register_voice("MIDI", "Square Lead", "midi.lead1", 2)
	_register_voice("MIDI", "Saw Lead", "midi.lead2", 3)
	_register_voice("MIDI", "Calliope Lead", "midi.lead3", 4)
	_register_voice("MIDI", "Chiff Lead", "midi.lead4", 5)
	_register_voice("MIDI", "Charang Lead", "midi.lead5", 0)
	_register_voice("MIDI", "Voice Lead", "midi.lead6", 1)
	_register_voice("MIDI", "Fifths Lead", "midi.lead7", 2)
	_register_voice("MIDI", "Bass and Lead", "midi.lead8", 3)
	_register_voice("MIDI", "New Age Pad", "midi.pad1", 4)
	_register_voice("MIDI", "Warm Pad", "midi.pad2", 5)
	_register_voice("MIDI", "Polysynth Pad", "midi.pad3", 0)
	_register_voice("MIDI", "Choir Pad", "midi.pad4", 1)
	_register_voice("MIDI", "Bowed Pad", "midi.pad5", 2)
	_register_voice("MIDI", "Metallic Pad", "midi.pad6", 3)
	_register_voice("MIDI", "Halo Pad", "midi.pad7", 4)
	_register_voice("MIDI", "Sweep Pad", "midi.pad8", 5)
	_register_voice("MIDI", "Rain", "midi.fx1", 0)
	_register_voice("MIDI", "Soundtrack", "midi.fx2", 1)
	_register_voice("MIDI", "Crystal", "midi.fx3", 2)
	_register_voice("MIDI", "Atmosphere", "midi.fx4", 3)
	_register_voice("MIDI", "Bright", "midi.fx5", 4)
	_register_voice("MIDI", "Goblins", "midi.fx6", 5)
	_register_voice("MIDI", "Echoes", "midi.fx7", 0)
	_register_voice("MIDI", "Sci-Fi", "midi.fx8", 1)
	_register_voice("MIDI", "Sitar", "midi.world1", 2)
	_register_voice("MIDI", "Banjo", "midi.world2", 3)
	_register_voice("MIDI", "Shamisen", "midi.world3", 4)
	_register_voice("MIDI", "Koto", "midi.world4", 5)
	_register_voice("MIDI", "Kalimba", "midi.world5", 0)
	_register_voice("MIDI", "Bagpipe", "midi.world6", 1)
	_register_voice("MIDI", "Fiddle", "midi.world7", 2)
	_register_voice("MIDI", "Shanai", "midi.world8", 3)
	_register_voice("MIDI", "Tinkle Bell", "midi.percus1", 4)
	_register_voice("MIDI", "Agogo", "midi.percus2", 5)
	_register_voice("MIDI", "Steel Drums", "midi.percus3", 0)
	_register_voice("MIDI", "Wood Block", "midi.percus4", 1)
	_register_voice("MIDI", "Taiko Drum", "midi.percus5", 2)
	_register_voice("MIDI", "Melodic Tom", "midi.percus6", 3)
	_register_voice("MIDI", "Synth Drum", "midi.percus7", 4)
	_register_voice("MIDI", "Reverse Cymbal", "midi.percus8", 5)
	_register_voice("MIDI", "Fret Noise", "midi.se1", 0)
	_register_voice("MIDI", "Breath Noise", "midi.se2", 1)
	_register_voice("MIDI", "Seashore", "midi.se3", 2)
	_register_voice("MIDI", "Tweet", "midi.se4", 3)
	_register_voice("MIDI", "Telephone", "midi.se5", 4)
	_register_voice("MIDI", "Helicopter", "midi.se6", 5)
	_register_voice("MIDI", "Applause", "midi.se7", 0)
	_register_voice("MIDI", "Gunshot", "midi.se8", 1)

	_register_voice("CHIPTUNE", "Square Wave", "square", 0, 6)
	_register_voice("CHIPTUNE", "Saw Wave", "saw", 1, 81)
	_register_voice("CHIPTUNE", "Triangle Wave", "triangle", 2, 80)
	_register_voice("CHIPTUNE", "Sine Wave", "sine", 3, 102)
	_register_voice("CHIPTUNE", "Noise", "noise", 20, 127)
	_register_voice("CHIPTUNE", "Dual Square", "dualsquare", 0, 4)
	_register_voice("CHIPTUNE", "Dual Saw", "dualsaw", 1, 7)
	_register_voice("CHIPTUNE", "Triangle LO-FI", "triangle8", 2, 72)
	_register_voice("CHIPTUNE", "Konami Wave", "konami", 4, 3)
	_register_voice("CHIPTUNE", "Ramp Wave", "ramp", 4, 18)
	_register_voice("CHIPTUNE", "Pulse Wave", "beep", 4, 29)
	_register_voice("CHIPTUNE", "MA3 Wave", "ma1", 4, 25)
	_register_voice("CHIPTUNE", "Noise (Bass)", "bassdrumm", 20, 115)
	_register_voice("CHIPTUNE", "Noise (Snare)", "snare", 20, 118)
	_register_voice("CHIPTUNE", "Noise (Hi-Hat)", "closedhh", 20, 126)

	_register_voice("BASS", "Analog Bass", "valsound.bass1", 2 % 6, 32)
	_register_voice("BASS", "Analog Bass #2", "valsound.bass2", 2 % 6, 33)
	_register_voice("BASS", "Analog Bass #2 (q2)", "valsound.bass3", 2 % 6, 34)
	_register_voice("BASS", "Chopper Bass 0", "valsound.bass4", 2 % 6, 35)
	_register_voice("BASS", "Chopper Bass 1", "valsound.bass5", 2 % 6, 36)
	_register_voice("BASS", "Chopper Bass 2 (CUT)", "valsound.bass6", 2 % 6, 37)
	_register_voice("BASS", "Chopper Bass 3", "valsound.bass7", 2 % 6, 38)
	_register_voice("BASS", "Elec.Chopper Bass", "valsound.bass8", 2 % 6, 39)
	_register_voice("BASS", "Effect Bass 1", "valsound.bass9", 2 % 6, 32)
	_register_voice("BASS", "Effect Bass 2 to UP", "valsound.bass10", 2 % 6, 33)
	_register_voice("BASS", "Effect Bass 3", "valsound.bass11", 2 % 6, 34)
	_register_voice("BASS", "Mohaaa", "valsound.bass12", 2 % 6, 35)
	_register_voice("BASS", "Effect FB Bass #5", "valsound.bass13", 2 % 6, 36)
	_register_voice("BASS", "Magical Bass", "valsound.bass14", 2 % 6, 37)
	_register_voice("BASS", "E.Bass #6", "valsound.bass15", 2 % 6, 38)
	_register_voice("BASS", "E.Bass #7", "valsound.bass16", 2 % 6, 39)
	_register_voice("BASS", "E.Bass 70", "valsound.bass17", 2 % 6, 32)
	_register_voice("BASS", "VAL006 Euro", "valsound.bass18", 2 % 6, 33)
	_register_voice("BASS", "E.Bass x2", "valsound.bass19", 2 % 6, 34)
	_register_voice("BASS", "E.Bass x4", "valsound.bass20", 2 % 6, 35)
	_register_voice("BASS", "Metal pick Bass X5", "valsound.bass21", 2 % 6, 36)
	_register_voice("BASS", "Groove Bass #1", "valsound.bass22", 2 % 6, 37)
	_register_voice("BASS", "Analog Groove #2", "valsound.bass23", 2 % 6, 38)
	_register_voice("BASS", "Harmonics #1", "valsound.bass24", 2 % 6, 39)
	_register_voice("BASS", "Low Bass x1", "valsound.bass25", 2 % 6, 32)
	_register_voice("BASS", "Low Bass x2", "valsound.bass26", 2 % 6, 33)
	_register_voice("BASS", "Low Bass Rezzo", "valsound.bass27", 2 % 6, 34)
	_register_voice("BASS", "Low Bass Picked", "valsound.bass28", 2 % 6, 35)
	_register_voice("BASS", "Metal Bass", "valsound.bass29", 2 % 6, 36)
	_register_voice("BASS", "E.N.Bass 1", "valsound.bass30", 2 % 6, 37)
	_register_voice("BASS", "PSG Bass 1", "valsound.bass31", 2 % 6, 38)
	_register_voice("BASS", "PSG Bass 2", "valsound.bass32", 2 % 6, 39)
	_register_voice("BASS", "Rezonance Bass", "valsound.bass33", 2 % 6, 32)
	_register_voice("BASS", "Slap Bass", "valsound.bass34", 2 % 6, 33)
	_register_voice("BASS", "Slap Bass 1", "valsound.bass35", 2 % 6, 34)
	_register_voice("BASS", "Slap Bass 2 (1+)", "valsound.bass36", 2 % 6, 35)
	_register_voice("BASS", "Slap Bass #3", "valsound.bass37", 2 % 6, 36)
	_register_voice("BASS", "Slap Bass pull", "valsound.bass38", 2 % 6, 37)
	_register_voice("BASS", "Slap Bass mute", "valsound.bass39", 2 % 6, 38)
	_register_voice("BASS", "Slap Bass pick", "valsound.bass40", 2 % 6, 39)
	_register_voice("BASS", "Super Bass #2", "valsound.bass41", 2 % 6, 32)
	_register_voice("BASS", "SP bass#3 soft", "valsound.bass42", 2 % 6, 33)
	_register_voice("BASS", "SP bass#4 soft*2", "valsound.bass43", 2 % 6, 34)
	_register_voice("BASS", "SP bass#5 attack", "valsound.bass44", 2 % 6, 35)
	_register_voice("BASS", "SP Bass#6 rezz", "valsound.bass45", 2 % 6, 36)
	_register_voice("BASS", "Synth Bass 1", "valsound.bass46", 2 % 6, 37)
	_register_voice("BASS", "Synth Bass 2 myon", "valsound.bass47", 2 % 6, 38)
	_register_voice("BASS", "Synth Bass #3 cho!", "valsound.bass48", 2 % 6, 39)
	_register_voice("BASS", "Synth Wind Bass #4", "valsound.bass49", 2 % 6, 32)
	_register_voice("BASS", "Synth Bass #5 q2", "valsound.bass50", 2 % 6, 33)
	_register_voice("BASS", "old wood Bass", "valsound.bass51", 2 % 6, 34)
	_register_voice("BASS", "W.Bass bright", "valsound.bass52", 2 % 6, 35)
	_register_voice("BASS", "W.Bass x2 bow", "valsound.bass53", 2 % 6, 36)
	_register_voice("BASS", "Wood Bass 3", "valsound.bass54", 2 % 6, 37)

	_register_voice("BRASS", "Brass strings", "valsound.brass1", 0, 56)
	_register_voice("BRASS", "E.mute Trampet", "valsound.brass2", 1, 57)
	_register_voice("BRASS", "HORN 2", "valsound.brass3", 2, 58)
	_register_voice("BRASS", "Alpine Horn #3", "valsound.brass4", 3, 59)
	_register_voice("BRASS", "Lead brass", "valsound.brass5", 4, 60)
	_register_voice("BRASS", "Normal HORN", "valsound.brass6", 5, 61)
	_register_voice("BRASS", "Synth Oboe", "valsound.brass7", 0, 62)
	_register_voice("BRASS", "Oboe 2", "valsound.brass8", 1, 63)
	_register_voice("BRASS", "Attack Brass (q2)", "valsound.brass9", 2, 56)
	_register_voice("BRASS", "SAX", "valsound.brass10", 3, 57)
	_register_voice("BRASS", "Soft brass(lead)", "valsound.brass11", 4, 58)
	_register_voice("BRASS", "Synth Brass 1 OLD", "valsound.brass12", 5, 59)
	_register_voice("BRASS", "Synth Brass 2 OLD", "valsound.brass13", 0, 60)
	_register_voice("BRASS", "Synth Brass 3", "valsound.brass14", 1, 61)
	_register_voice("BRASS", "Synth Brass #4", "valsound.brass15", 2, 62)
	_register_voice("BRASS", "Syn.Brass 5(long)", "valsound.brass16", 3, 63)
	_register_voice("BRASS", "Synth Brass 6", "valsound.brass17", 4, 56)
	_register_voice("BRASS", "Trumpet", "valsound.brass18", 5, 57)
	_register_voice("BRASS", "Trumpet 2", "valsound.brass19", 0, 58)
	_register_voice("BRASS", "Twin Horn (or OL=25)", "valsound.brass20", 1, 59)

	_register_voice("BELL", "Calm Bell", "valsound.bell1", 1%6, 8)
	_register_voice("BELL", "China Bell Double", "valsound.bell2", 2%6, 9)
	_register_voice("BELL", "Church Bell", "valsound.bell3", 3%6, 10)
	_register_voice("BELL", "Church Bell 2", "valsound.bell4", 4%6, 11)
	_register_voice("BELL", "Glocken 1", "valsound.bell5", 5%6, 12)
	_register_voice("BELL", "Harp #1", "valsound.bell6", 0%6, 13)
	_register_voice("BELL", "Harp #2", "valsound.bell7", 1%6, 14)
	_register_voice("BELL", "Kirakira", "valsound.bell8", 2%6, 15)
	_register_voice("BELL", "Marimba", "valsound.bell9", 3%6, 8)
	_register_voice("BELL", "Old Bell", "valsound.bell10", 4%6, 9)
	_register_voice("BELL", "Percus. Bell", "valsound.bell11", 5%6, 10)
	_register_voice("BELL", "Pretty Bell", "valsound.bell12", 0%6, 11)
	_register_voice("BELL", "Synth Bell #0", "valsound.bell13", 1%6, 12)
	_register_voice("BELL", "Synth Bell #1 o5", "valsound.bell14", 2%6, 13)
	_register_voice("BELL", "Synth Bell 2", "valsound.bell15", 3%6, 14)
	_register_voice("BELL", "Viberaphone", "valsound.bell16", 4%6, 15)
	_register_voice("BELL", "Twin Marinba", "valsound.bell17", 5%6, 8)
	_register_voice("BELL", "Bellend", "valsound.bell18", 0 % 6, 9)

	_register_voice("GUITAR", "Guitar VeloLow", "valsound.guitar1", 0, 24)
	_register_voice("GUITAR", "Guitar VeloHigh", "valsound.guitar2", 1, 25)
	_register_voice("GUITAR", "A.Guitar #3", "valsound.guitar3", 2, 26)
	_register_voice("GUITAR", "Cutting E.Guitar", "valsound.guitar4", 3, 27)
	_register_voice("GUITAR", "Dis. Synth (old)", "valsound.guitar5", 4, 28)
	_register_voice("GUITAR", "Dra-spi-Dis.G.", "valsound.guitar6", 5, 29)
	_register_voice("GUITAR", "Dis.Guitar 3-", "valsound.guitar7", 0, 30)
	_register_voice("GUITAR", "Dis.Guitar 3+", "valsound.guitar8", 1, 31)
	_register_voice("GUITAR", "Feed-back Guitar 1", "valsound.guitar9", 2, 24)
	_register_voice("GUITAR", "Hard Dis. Guitar 1", "valsound.guitar10", 3, 25)
	_register_voice("GUITAR", "Hard Dis.Guitar 3", "valsound.guitar11", 4, 26)
	_register_voice("GUITAR", "Dis.Guitar '94 Hard", "valsound.guitar12", 5, 27)
	_register_voice("GUITAR", "New Dis.Guitar 1", "valsound.guitar13", 0, 28)
	_register_voice("GUITAR", "New Dis.Guitar 2", "valsound.guitar14", 1, 29)
	_register_voice("GUITAR", "New Dis.Guitar 3", "valsound.guitar15", 2, 30)
	_register_voice("GUITAR", "Overdrive.G. (AL=013)", "valsound.guitar16", 3, 31)
	_register_voice("GUITAR", "METAL", "valsound.guitar17", 4, 24)
	_register_voice("GUITAR", "Soft Dis.Guitar", "valsound.guitar18", 5, 25)

	_register_voice("LEAD", "Aco code", "valsound.lead1", 0, 80)
	_register_voice("LEAD", "Analog synthe 1", "valsound.lead2", 1, 81)
	_register_voice("LEAD", "Bosco-lead", "valsound.lead3", 2, 82)
	_register_voice("LEAD", "Cosmo Lead", "valsound.lead4", 3, 83)
	_register_voice("LEAD", "Cosmo Lead 2", "valsound.lead5", 4, 84)
	_register_voice("LEAD", "Digital lead #1", "valsound.lead6", 5, 85)
	_register_voice("LEAD", "Double sin wave", "valsound.lead7", 0, 86)
	_register_voice("LEAD", "E.Organ 2 bright", "valsound.lead8", 1, 16)
	_register_voice("LEAD", "E.Organ 2 (voice)", "valsound.lead9", 2, 17)
	_register_voice("LEAD", "E.Organ 4 Click", "valsound.lead10", 3, 18)
	_register_voice("LEAD", "E.Organ 5 Click", "valsound.lead11", 4, 19)
	_register_voice("LEAD", "E.Organ 6", "valsound.lead12", 5, 20)
	_register_voice("LEAD", "E.Organ 7 Church", "valsound.lead13", 0, 21)
	_register_voice("LEAD", "Metal Lead", "valsound.lead14", 1, 87)
	_register_voice("LEAD", "Metal Lead 3", "valsound.lead15", 2, 80)
	_register_voice("LEAD", "MONO Lead", "valsound.lead16", 3, 81)
	_register_voice("LEAD", "PSG like PC88 (long)", "valsound.lead17", 4, 82)
	_register_voice("LEAD", "PSG Cut 1", "valsound.lead18", 5, 83)
	_register_voice("LEAD", "Attack Synth", "valsound.lead19", 0, 84)
	_register_voice("LEAD", "Sin wave", "valsound.lead20", 1, 85)
	_register_voice("LEAD", "Synth, Bell 2", "valsound.lead21", 2, 86)
	_register_voice("LEAD", "Chorus #2(Voice)+bell", "valsound.lead22", 3, 87)
	_register_voice("LEAD", "Synth Cut 8-4", "valsound.lead23", 4, 80)
	_register_voice("LEAD", "Synth long 8-4", "valsound.lead24", 5, 81)
	_register_voice("LEAD", "ACO_Code #2", "valsound.lead25", 0, 82)
	_register_voice("LEAD", "ACO_Code #3", "valsound.lead26", 1, 83)
	_register_voice("LEAD", "Synth FB long 4", "valsound.lead27", 2, 84)
	_register_voice("LEAD", "Synth FB long 5", "valsound.lead28", 3, 85)
	_register_voice("LEAD", "Synth Lead 0", "valsound.lead29", 4, 86)
	_register_voice("LEAD", "Synth Lead 1", "valsound.lead30", 5, 87)
	_register_voice("LEAD", "Synth Lead 2", "valsound.lead31", 0, 80)
	_register_voice("LEAD", "Synth Lead 3", "valsound.lead32", 1, 81)
	_register_voice("LEAD", "Synth Lead 4", "valsound.lead33", 2, 82)
	_register_voice("LEAD", "Synth Lead 5", "valsound.lead34", 3, 83)
	_register_voice("LEAD", "Synth Lead 6", "valsound.lead35", 4, 84)
	_register_voice("LEAD", "Synth Lead 7 (Soft FB)", "valsound.lead36", 5, 85)
	_register_voice("LEAD", "Synth PSG", "valsound.lead37", 0, 86)
	_register_voice("LEAD", "Synth PSG 2", "valsound.lead38", 1, 87)
	_register_voice("LEAD", "Synth PSG 3", "valsound.lead39", 2, 80)
	_register_voice("LEAD", "Synth PSG 4", "valsound.lead40", 3, 81)
	_register_voice("LEAD", "Synth PSG 5", "valsound.lead41", 4, 82)
	_register_voice("LEAD", "Sin water synth", "valsound.lead42", 5, 83)

	_register_voice("PIANO", "Aco Piano2 (Attack)", "valsound.piano1", 2, 0)
	_register_voice("PIANO", "Backing 1 (Clav.)", "valsound.piano2", 3, 1)
	_register_voice("PIANO", "Clav. coad", "valsound.piano3", 4, 2)
	_register_voice("PIANO", "Deep Piano 1", "valsound.piano4", 5, 3)
	_register_voice("PIANO", "Deep Piano 3", "valsound.piano5", 0, 4)
	_register_voice("PIANO", "E.piano #2", "valsound.piano6", 1, 5)
	_register_voice("PIANO", "E.piano #3", "valsound.piano7", 2, 6)
	_register_voice("PIANO", "E.piano #4(2+)", "valsound.piano8", 3, 7)
	_register_voice("PIANO", "E.(Bell)Piano #5", "valsound.piano9", 4, 0)
	_register_voice("PIANO", "E.Piano #6", "valsound.piano10", 5, 1)
	_register_voice("PIANO", "E.Piano #7", "valsound.piano11", 0, 2)
	_register_voice("PIANO", "Harpci chord 1", "valsound.piano12", 1, 3)
	_register_voice("PIANO", "Harpci 2", "valsound.piano13", 2, 4)
	_register_voice("PIANO", "Piano1 (ML1,10,05,01)", "valsound.piano14", 3, 5)
	_register_voice("PIANO", "Piano3", "valsound.piano15", 4, 6)
	_register_voice("PIANO", "Piano4", "valsound.piano16", 5, 7)
	_register_voice("PIANO", "Digital Piano #5", "valsound.piano17", 0, 0)
	_register_voice("PIANO", "Piano 6 High-tone", "valsound.piano18", 1, 1)
	_register_voice("PIANO", "Panning Harpci", "valsound.piano19", 2, 2)
	_register_voice("PIANO", "Yam Harpci chord", "valsound.piano20", 3, 3)

	_register_voice("SPECIAL", "S.E.(Detune is needed o2c)", "valsound.se1", 4, 120)
	_register_voice("SPECIAL", "S.E. 2 o0-1-2", "valsound.se2", 5, 121)
	_register_voice("SPECIAL", "S.E. 3(Feedin /noise add.)", "valsound.se3", 0, 122)
	_register_voice("SPECIAL", "Digital 1", "valsound.special1", 1, 123)
	_register_voice("SPECIAL", "Digital 2", "valsound.special2", 2, 124)
	_register_voice("SPECIAL", "Digital[BAS] 3 o2-o3", "valsound.special3", 3, 125)
	_register_voice("SPECIAL", "Digital[GTR] 3 o2-o3", "valsound.special4", 4, 126)
	_register_voice("SPECIAL", "Digital 4 o4a", "valsound.special5", 5, 127)

	_register_voice("STRINGS", "Accordion1", "valsound.strpad1", 0, 21)
	_register_voice("STRINGS", "Accordion2", "valsound.strpad2", 1, 22)
	_register_voice("STRINGS", "Accordion3", "valsound.strpad3", 2, 23)
	_register_voice("STRINGS", "Chorus #2(Voice)", "valsound.strpad4", 3, 40)
	_register_voice("STRINGS", "Chorus #3", "valsound.strpad5", 4, 41)
	_register_voice("STRINGS", "Chorus #4", "valsound.strpad6", 5, 42)
	_register_voice("STRINGS", "F.Strings 1", "valsound.strpad7", 0, 43)
	_register_voice("STRINGS", "F.Strings 2", "valsound.strpad8", 1, 44)
	_register_voice("STRINGS", "F.Strings 3", "valsound.strpad9", 2, 45)
	_register_voice("STRINGS", "F.Strings 4 (low)", "valsound.strpad10", 3, 46)
	_register_voice("STRINGS", "Pizzicate#1(KOTO2)", "valsound.strpad11", 4, 47)
	_register_voice("STRINGS", "sound truck modoki", "valsound.strpad12", 5, 40)
	_register_voice("STRINGS", "Strings", "valsound.strpad13", 0, 41)
	_register_voice("STRINGS", "Synth Accordion", "valsound.strpad14", 1, 42)
	_register_voice("STRINGS", "Phaser synthe.", "valsound.strpad15", 2, 43)
	_register_voice("STRINGS", "FB Synth.", "valsound.strpad16", 3, 44)
	_register_voice("STRINGS", "Synth Strings MB", "valsound.strpad17", 4, 45)
	_register_voice("STRINGS", "Synth Strings #2", "valsound.strpad18", 5, 46)
	_register_voice("STRINGS", "Synth.Sweep Pad #1", "valsound.strpad19", 0, 47)
	_register_voice("STRINGS", "Twin synth. #1 Calm", "valsound.strpad20", 1, 40)
	_register_voice("STRINGS", "Twin synth. #2 FB", "valsound.strpad21", 2, 41)
	_register_voice("STRINGS", "Twin synth. #3 FB", "valsound.strpad22", 3, 42)
	_register_voice("STRINGS", "Vocoder voice1", "valsound.strpad23", 4, 43)
	_register_voice("STRINGS", "Voice o3-o5", "valsound.strpad24", 5, 44)
	_register_voice("STRINGS", "Voice' o3-o5", "valsound.strpad25", 0, 45)

	_register_voice("WIND", "Clarinet #1", "valsound.wind1", 1, 72)
	_register_voice("WIND", "Clarinet #2 Brighter", "valsound.wind2", 2, 73)
	_register_voice("WIND", "E.Flute", "valsound.wind3", 3, 74)
	_register_voice("WIND", "E.Flute 2", "valsound.wind4", 4, 75)
	_register_voice("WIND", "Flute + Bell", "valsound.wind5", 5, 76)
	_register_voice("WIND", "Old flute", "valsound.wind6", 0, 77)
	_register_voice("WIND", "Whistle 1", "valsound.wind7", 1, 78)
	_register_voice("WIND", "Whistle 2", "valsound.wind8", 2, 79)

	_register_voice("WORLD", "Banjo (Harpci)", "valsound.world1", 3, 105)
	_register_voice("WORLD", "KOTO", "valsound.world2", 4, 107)
	_register_voice("WORLD", "Koto 2", "valsound.world3", 5, 108)
	_register_voice("WORLD", "Sitar 1", "valsound.world4", 0, 104)
	_register_voice("WORLD", "Shamisen 2", "valsound.world5", 1, 111)
	_register_voice("WORLD", "Shamisen 1", "valsound.world6", 2, 112)
	_register_voice("WORLD", "Synth Shamisen", "valsound.world7", 3, 113)

	_register_voice("DRUMKIT", "Simple Drumkit", "drumkit.1", 20)
	_register_voice("DRUMKIT", "SiON Drumkit", "drumkit.2", 20)
	_register_voice("DRUMKIT", "Midi Drumkit", "drumkit.3", 20)


func _register_voice(category: String, name: String, preset: String, palette: int, midi_mapping: int = -1) -> void:
	var voice := Voice.new()
	voice.category = category
	voice.name = name
	voice.preset = preset
	voice.palette = palette

	if voice.category == "DRUMKIT":
		voice.type = voice.preset.substr(8).to_int()

	if midi_mapping == -1:
		voice.midi_mapping = _voices.size() % 128
	else:
		voice.midi_mapping = midi_mapping

	_voices.push_back(voice)


func _register_drumkits() -> void:
	# Simple kit.

	_drumkits.push_back(Drumkit.new())
	_drumkits[0].kit_name = "Simple Drumkit"

	_register_drumkit(0, "Bass Drum 1", "valsound.percus1", 30)
	_register_drumkit(0, "Bass Drum 2", "valsound.percus13", 32)
	_register_drumkit(0, "Bass Drum 3", "valsound.percus3", 30)
	_register_drumkit(0, "Snare Drum", "valsound.percus30", 20)
	_register_drumkit(0, "Snare Drum 2", "valsound.percus29", 48)
	_register_drumkit(0, "Open Hi-Hat", "valsound.percus17", 60)
	_register_drumkit(0, "Closed Hi-Hat", "valsound.percus23", 72)
	_register_drumkit(0, "Crash Cymbal", "valsound.percus8", 48)

	# SiON kit.

	_drumkits.push_back(Drumkit.new())
	_drumkits[1].kit_name = "SiON Drumkit";

	_register_drumkit(1, "Bass Drum 2", "valsound.percus1", 30)
	_register_drumkit(1, "Bass Drum 3 o1f", "valsound.percus2")
	_register_drumkit(1, "RUFINA BD o2c", "valsound.percus3", 30)
	_register_drumkit(1, "B.D.(-vBend)", "valsound.percus4")
	_register_drumkit(1, "BD808_2(-vBend)", "valsound.percus5")
	_register_drumkit(1, "Cho cho 3 (o2e)", "valsound.percus6")
	_register_drumkit(1, "Cow-Bell 1", "valsound.percus7")
	_register_drumkit(1, "Crash Cymbal (noise)", "valsound.percus8", 48)
	_register_drumkit(1, "Crash Noise", "valsound.percus9")
	_register_drumkit(1, "Crash Noise Short", "valsound.percus10")
	_register_drumkit(1, "ETHNIC Percus.0", "valsound.percus11")
	_register_drumkit(1, "ETHNIC Percus.1", "valsound.percus12")
	_register_drumkit(1, "Heavy BD.", "valsound.percus13", 32)
	_register_drumkit(1, "Heavy BD2", "valsound.percus14")
	_register_drumkit(1, "Heavy SD1", "valsound.percus15")
	_register_drumkit(1, "Hi-Hat close 5_", "valsound.percus16")
	_register_drumkit(1, "Hi-Hat close 4", "valsound.percus17")
	_register_drumkit(1, "Hi-Hat close 5", "valsound.percus18")
	_register_drumkit(1, "Hi-Hat Close 6 -808-", "valsound.percus19")
	_register_drumkit(1, "Hi-hat #7 Metal o3-6", "valsound.percus20")
	_register_drumkit(1, "Hi-Hat Close #8 o4", "valsound.percus21")
	_register_drumkit(1, "Hi-hat Open o4e-g+", "valsound.percus22")
	_register_drumkit(1, "Open-hat2 Metal o4c-", "valsound.percus23")
	_register_drumkit(1, "Open-hat3 Metal", "valsound.percus24")
	_register_drumkit(1, "Hi-Hat Open #4 o4f", "valsound.percus25")
	_register_drumkit(1, "Metal ride o4c or o5c", "valsound.percus26")
	_register_drumkit(1, "Rim Shot #1 o3c", "valsound.percus27")
	_register_drumkit(1, "Snare Drum Light", "valsound.percus28")
	_register_drumkit(1, "Snare Drum Lighter", "valsound.percus29")
	_register_drumkit(1, "Snare Drum 808 o2-o3", "valsound.percus30", 20)
	_register_drumkit(1, "Snare4 -808type- o2", "valsound.percus31")
	_register_drumkit(1, "Snare5 o1-2(Franger)", "valsound.percus32")
	_register_drumkit(1, "Tom (old)", "valsound.percus33")
	_register_drumkit(1, "Synth tom 2 algo 3", "valsound.percus34")
	_register_drumkit(1, "Synth (Noisy) Tom #3", "valsound.percus35")
	_register_drumkit(1, "Synth Tom #3", "valsound.percus36")
	_register_drumkit(1, "Synth -DX7- Tom #4", "valsound.percus37")
	_register_drumkit(1, "Triangle 1 o5c", "valsound.percus38")

	# MIDI drums.

	_drumkits.push_back(Drumkit.new())
	_drumkits[2].kit_name = "Midi Drumkit";

	_register_drumkit(2, "Seq Click H", "midi.drum24", 24)
	_register_drumkit(2, "Brush Tap", "midi.drum25", 25)
	_register_drumkit(2, "Brush Swirl", "midi.drum26", 26)
	_register_drumkit(2, "Brush Slap", "midi.drum27", 27)
	_register_drumkit(2, "Brush Tap Swirl", "midi.drum28", 28)
	_register_drumkit(2, "Snare Roll", "midi.drum29")
	_register_drumkit(2, "Castanet", "midi.drum32")
	_register_drumkit(2, "Snare L", "midi.drum31")
	_register_drumkit(2, "Sticks", "midi.drum32")
	_register_drumkit(2, "Bass Drum L", "midi.drum33")
	_register_drumkit(2, "Open Rim Shot", "midi.drum34")
	_register_drumkit(2, "Bass Drum M", "midi.drum35")
	_register_drumkit(2, "Bass Drum H", "midi.drum36")
	_register_drumkit(2, "Closed Rim Shot", "midi.drum37")
	_register_drumkit(2, "Snare M", "midi.drum38")
	_register_drumkit(2, "Hand Clap", "midi.drum39")
	_register_drumkit(2, "Snare H", "midi.drum42")
	_register_drumkit(2, "Floor Tom L", "midi.drum41")
	_register_drumkit(2, "Hi-Hat Closed", "midi.drum42")
	_register_drumkit(2, "Floor Tom H", "midi.drum43")
	_register_drumkit(2, "Hi-Hat Pedal", "midi.drum44")
	_register_drumkit(2, "Low Tom", "midi.drum45")
	_register_drumkit(2, "Hi-Hat Open", "midi.drum46")
	_register_drumkit(2, "Mid Tom L", "midi.drum47")
	_register_drumkit(2, "Mid Tom H", "midi.drum48")
	_register_drumkit(2, "Crash Cymbal 1", "midi.drum49")
	_register_drumkit(2, "High Tom", "midi.drum52")
	_register_drumkit(2, "Ride Cymbal 1", "midi.drum51")
	_register_drumkit(2, "Chinese Cymbal", "midi.drum52")
	_register_drumkit(2, "Ride Cymbal Cup", "midi.drum53")
	_register_drumkit(2, "Tambourine", "midi.drum54")
	_register_drumkit(2, "Splash Cymbal", "midi.drum55")
	_register_drumkit(2, "Cowbell", "midi.drum56")
	_register_drumkit(2, "Crash Cymbal 2", "midi.drum57")
	_register_drumkit(2, "Vibraslap", "midi.drum58")
	_register_drumkit(2, "Ride Cymbal 2", "midi.drum59")
	_register_drumkit(2, "Bongo H", "midi.drum62")
	_register_drumkit(2, "Bongo L", "midi.drum61")
	_register_drumkit(2, "Conga H Mute", "midi.drum62")
	_register_drumkit(2, "Conga H Open", "midi.drum63")
	_register_drumkit(2, "Conga L", "midi.drum64")
	_register_drumkit(2, "Timbale H", "midi.drum65")
	_register_drumkit(2, "Timbale L", "midi.drum66")
	_register_drumkit(2, "Agogo H", "midi.drum67")
	_register_drumkit(2, "Agogo L", "midi.drum68")
	_register_drumkit(2, "Cabasa", "midi.drum69")
	_register_drumkit(2, "Maracas", "midi.drum72")
	_register_drumkit(2, "Samba Whistle H", "midi.drum71")
	_register_drumkit(2, "Samba Whistle L", "midi.drum72")
	_register_drumkit(2, "Guiro Short", "midi.drum73")
	_register_drumkit(2, "Guiro Long", "midi.drum74")
	_register_drumkit(2, "Claves", "midi.drum75")
	_register_drumkit(2, "Wood Block H", "midi.drum76")
	_register_drumkit(2, "Wood Block L", "midi.drum77")
	_register_drumkit(2, "Cuica Mute", "midi.drum78")
	_register_drumkit(2, "Cuica Open", "midi.drum79")
	_register_drumkit(2, "Triangle Mute", "midi.drum80")
	_register_drumkit(2, "Triangle Open", "midi.drum81")
	_register_drumkit(2, "Shaker", "midi.drum82")
	_register_drumkit(2, "Jingle Bells", "midi.drum83")
	_register_drumkit(2, "Bell Tree", "midi.drum84")


func _register_drumkit(kit_idx: int, name: String, voice: String, note: int = 60) -> void:
	if kit_idx == 2 && note == 60:
		note = 16

	_drumkits[kit_idx].voice_list.push_back(get_voice_preset(voice));
	_drumkits[kit_idx].voice_name.push_back(name);
	_drumkits[kit_idx].voice_note.push_back(note);

	# Special case for a MIDI drumkit.
	if kit_idx == 2:
		var drum_number := voice.replace("midi.drum", "").to_int()
		_drumkits[kit_idx].midi_voice.push_back(drum_number)

	_drumkits[kit_idx].size += 1


func get_voice_data_count() -> int:
	return _voices.size()


func get_voice_data_at(voice_idx: int) -> Voice:
	if voice_idx < 0 || voice_idx >= _voices.size():
		printerr("VoiceManager: Invalid voice index (%d)." % voice_idx)
		return null

	return _voices[voice_idx]


func get_voice_data(category: String, name: String) -> Voice:
	for i in _voices.size():
		var voice := _voices[i]
		if voice.category == category && voice.name == name:
			return voice

	printerr("VoiceManager: Invalid voice category or name (%s, %s)." % [ category, name ])
	return null


func get_voice_preset(name: String) -> SiONVoice:
	return _preset_util.get_voice_preset(name)


func get_drumkit(instrument_type: int) -> Drumkit:
	var drumkit_idx := instrument_type - 1
	if drumkit_idx < 0 || drumkit_idx >= _drumkits.size():
		printerr("VoiceManager: Invalid drumkit type (%d)." % drumkit_idx)
		return null

	return _drumkits[drumkit_idx]


class Voice:
	var type: int = 0
	var category: String = ""
	var name: String = ""
	var preset: String = ""
	var palette: int = -1

	var midi_mapping: int = -1
