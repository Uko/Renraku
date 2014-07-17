private
clearReports

	reports
		do: #selfDestruct
		displayingProgress: 'Removing old reports'.
	reports removeAll