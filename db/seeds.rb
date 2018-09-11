brushes = {
  FANBLND3: '#3 Fan Blender',
  FANBLND6: '#6 Fan Blender',
  RNDHALF: 'Half Size Round',
  RND1FLG: '1" Round Foliage Brush',
  KNFPNT10: '#10 Painting Knife',
  KNFDTL5: '#5 Detail Knife',
  BLENDER2: '2" Blender',
  SCPTLIN2: '#2 Script Liner',
  FILBERT6: '#6 Filbert',
  BKGRND2: '2" Background',
  OVLBRST1: '1" Oval Bristle',
  LNDSCP1: '1" Landscape',
}

brushes.each do |sku, name|
  Brush.create!(sku: sku, name: name)
end
