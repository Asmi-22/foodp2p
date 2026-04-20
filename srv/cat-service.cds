using food from '../db/schema';

service FoodService {
  entity Items as projection on food.Items;
  entity PurchaseRequests as projection on food.PurchaseRequests;
  entity PurchaseOrders as projection on food.PurchaseOrders;
  entity WasteLog as projection on food.WasteLog;
}