as yet unclassified
renIcon
	"Private - Generated method"
	^ icon ifNil: [ icon :=  Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self renIconContents readStream) ].