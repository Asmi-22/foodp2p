namespace food;

entity Items {
  key ID        : Integer;
      name      : String;
      quantity  : Integer;
      expiryDate: Date;
      threshold : Integer;
}

entity PurchaseRequests {
  key ID : UUID;
  item : Association to Items;
  quantity : Integer;
  status : String;
}

entity PurchaseOrders {
  key ID : UUID;
  request : Association to PurchaseRequests;
  supplier : String;
  status : String;
}

entity WasteLog {
  key ID      : String;
  item_ID     : Integer;
  quantity    : Integer;
  date        : Date;
}