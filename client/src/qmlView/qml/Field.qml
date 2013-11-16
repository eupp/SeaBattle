import QtQuick 2.0
import "FieldBuilder.js" as FieldBuilder

Rectangle {
	id: main
	property int mSize: 150
	onHeightChanged: FieldBuilder.startNewGame(mSize)

	width: mSize
	height: mSize

	signal attack(int id);
	signal placeShip(int firstId, int secondId);
	signal deleteShip(int id);

	property variant array

	AnimatedImage{
		id: sea
		source: "qrc:/pictures/sea_animation.gif"
		height: mSize
		width: mSize
	}
}