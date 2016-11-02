initialization
initialize
	super initialize.
	data := ByteArray new: self tapeSize.
	dataPointer := 1.
	inputStream := ByteArray new readStream.
	outputStream := WriteStream on: ByteArray new