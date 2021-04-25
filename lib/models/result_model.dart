class ResultModel {
  double areaFloor;
  int piecesByWidth;
  int piecesByLength;
  double totalPrice;

  ResultModel(
      {this.areaFloor,
      this.piecesByWidth,
      this.piecesByLength,
      this.totalPrice});

  int get amountPieces => piecesByWidth * piecesByLength;
  int get amountFloor => piecesByWidth + piecesByLength;
  int get amountPiecesAndFooter => amountPieces + amountFloor;
  double get areaWithoutFooter => amountPieces * areaFloor;
  double get areaWithFooter => amountPiecesAndFooter * areaFloor;
  double totalPriceOfPieces(int pieces, double price) => pieces * price;
}
