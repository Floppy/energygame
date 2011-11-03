CardHeight=1039
CardWidth=697

CardHeightMM=88.0
CardWidthMM=59.0

MMToPx=CardHeight/CardHeightMM
PxToMM=CardHeightMM/CardHeight

TrimmedHeightMM=84
TrimmedWidthMM=55

SafeHeightMM=80
SafeWidthMM=51

SafeWidth=SafeWidthMM*MMToPx
SafeHeight=SafeHeightMM*MMToPx

SafeXOffset=(CardWidth-SafeWidth)/2
SafeYOffset=(CardHeight-SafeHeight)/2

ContentsXOffset=2*MMToPx
ContentsYOffset=2*MMToPx

ContentsWidth=SafeWidth
ContentsLeft=SafeXOffset+ContentsXOffset
ContentsRight=CardWidth-SafeXOffset-ContentsXOffset
ContentsBottom=CardHeight-SafeYOffset-ContentsYOffset
ContentsTop=SafeYOffset+ContentsYOffset
ContentsHeight=ContentsBottom-ContentsTop
Center=CardWidth/2

FrameWidth=2*MMToPx
TitleHeight=8*MMToPx
ArtTop=2*MMToPx
ArtHeight=30*MMToPx
FooterHeight=8*MMToPx
FillerTextHeight=8*MMToPx
RulesHeight=CardHeight-SafeYOffset*2-ContentsYOffset*6-TitleHeight-ArtHeight-FooterHeight-FillerTextHeight
BackArtX=40*MMToPx
BackArtY=30*MMToPx