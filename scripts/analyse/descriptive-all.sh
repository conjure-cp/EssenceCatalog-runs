
parallel --no-notice \
    'python3 scripts/analyse/descriptive.py problems/{} > problems/{}/descriptive.md' ::: \
        csplib-prob001-CarSequencing \
        csplib-prob002-TemplateDesign \
        csplib-prob006-GolombRuler \
        csplib-prob007-AllIntervalSeries \
        csplib-prob008-VesselLoading \
	csplib-prob010-SocialGolfers

