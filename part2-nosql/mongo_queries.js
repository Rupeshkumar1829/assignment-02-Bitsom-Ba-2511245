// OP1: insertMany()
db.products.insertMany([
  {
    product_id: 1,
    name: "Samsung Smart TV",
    category: "Electronics",
    price: 45000,
    brand: "Samsung",
    warranty_years: 2,
    voltage: "220V"
  },
  {
    product_id: 2,
    name: "Men Casual Shirt",
    category: "Clothing",
    price: 1200,
    brand: "Levis",
    size: ["S","M","L","XL"],
    material: "Cotton"
  },
  {
    product_id: 3,
    name: "Organic Milk",
    category: "Groceries",
    price: 60,
    brand: "Amul",
    expiry_date: ISODate("2024-12-25"),
    nutrition: {
      protein: "3g",
      fat: "3.5g"
    }
  }
]);

// OP2: find() — Electronics with price > 20000
db.products.find({
  category: "Electronics",
  price: { $gt: 20000 }
});

// OP3: find() — Groceries expiring before 2025-01-01
db.products.find({
  category: "Groceries",
  expiry_date: { $lt: ISODate("2025-01-01") }
});

// OP4: updateOne() — add discount_percent
db.products.updateOne(
  { product_id: 1 },
  { $set: { discount_percent: 10 } }
);

// OP5: createIndex()
db.products.createIndex({ category: 1 });

// Reason:
// Index on category improves query performance when filtering products by category.
