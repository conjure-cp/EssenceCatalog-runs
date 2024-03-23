
parallel --no-notice \
    'python3 scripts/analyse/descriptive.py problems/{} > problems/{}/descriptive.md' ::: \
        csplib-prob001-CarSequencing \
        csplib-prob002-TemplateDesign \
        csplib-prob006-GolombRuler \
        csplib-prob007-AllIntervalSeries \
        csplib-prob008-VesselLoading \
	csplib-prob010-SocialGolfers \
	csplib-prob013-ProgPartyFunction \
	csplib-prob013-ProgPartyFunctionDecision \
	csplib-prob013-ProgPartyPartition \
	csplib-prob015-SchursLemma \
	csplib-prob017-RamseyNumbers \
	csplib-prob018-WaterBuckets \
	csplib-prob019-MagicSquares \
	csplib-prob021-Crossfigures \
	csplib-prob022-BusDriverScheduling \
	csplib-prob023-AbnormalMagicHexagons

