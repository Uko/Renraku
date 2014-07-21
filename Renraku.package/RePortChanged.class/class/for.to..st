instance creation
for: aReport to: aFeedback

	^ self new
		affectedReport: aReport;
		newFeedback: aFeedback;
		yourself