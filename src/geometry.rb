# All measurements are in mm unless otherwise stated

HeightMM=88.0
WidthMM=63.5

Height=1125
Width=825
Bleed=50

MMToPx = Height / HeightMM
PxToMM = HeightMM / Height

OriginX = Bleed
OriginY = Bleed

OuterFrameWidth = 3.0 * MMToPx

ContentL = OriginX + OuterFrameWidth
ContentR = Width - (Bleed + OuterFrameWidth)
ContentT = OriginY + OuterFrameWidth
ContentB = Height - (Bleed + OuterFrameWidth)
ContentWidth = ContentR - ContentL
ContentHeight = ContentB - ContentT

TitleHeight = 8*MMToPx
ArtSize = 50*MMToPx
SectionGap = 1*MMToPx
DescriptionHeight = 5*MMToPx
