# 🛒 E-Commerce Funnel Analysis — $6.4M Revenue Leakage Identified

## 📌 Project Summary
Analyzed user behavior across 120,000 sessions in an e-commerce platform 
to identify where and why users drop off before completing a purchase.
Quantified revenue impact and isolated root cause through multi-dimensional 
segmentation.

---

## 🔍 Key Finding
> **~$6.4M in revenue is lost to cart abandonment across 120K sessions.
> Checkout friction — not device, channel, or geography — is the confirmed 
> root cause.**

Recovering just 10% of abandoned sessions = **$641K in recoverable revenue.**

---

## 🧰 Tools Used
- **MySQL** — data storage, querying, funnel calculation
- **Power BI** — dashboard, KPI cards, funnel visual, segmentation charts
- **Excel** — data cleaning and CSV preparation

---

## 📦 Dataset
Three-table clickstream dataset:

| Table | Description |
|---|---|
| `events` | User actions — page_view, add_to_cart, purchase |
| `sessions` | Session context — device, source, country |
| `orders` | Purchase data — amount, discount, payment method |

---

## 🎯 Funnel Definition

Page View → Add to Cart → Purchase

| Stage | Sessions |
|---|---|
| Page Views | 120,000 |
| Add to Cart | 82,000 |
| Purchases | 34,000 |

**Biggest drop: Add to Cart → Purchase (58% abandonment)**

---

## 🔬 Segmentation Analysis

### Device
| Device | Conversion Rate |
|---|---|
| Mobile | ~28% |
| Desktop | ~28% |
| Tablet | ~28% |

✅ Device is NOT the cause.

### Acquisition Channel
| Source | Conversion Rate |
|---|---|
| Referral | 28.49% |
| Paid | 28.49% |
| Direct | 28.09% |
| Social | 27.97% |
| Email | 27.91% |
| Organic | 27.63% |

✅ Channel is NOT the cause.

### Geography
- Conversion range: 27% – 29% globally
  
✅ Geography is NOT the cause.

---

## 💣 Root Cause Elimination

| Factor | Finding | Verdict |
|---|---|---|
| Device | Uniform drop across all devices | ❌ Not the cause |
| Channel | 27–28% across all sources | ❌ Not the cause |
| Geography | 27–29% globally consistent | ❌ Not the cause |
| **Checkout UX** | Confirmed by elimination | ✅ **Root Cause** |

---

## 💰 Revenue Impact

| Metric | Value |
|---|---|
| Avg Order Value | $133.81 |
| Abandoned Sessions | 47,938 |
| Total Revenue at Risk | **$6.41M** |
| 10% Recovery Potential | **$641K** |

---

## 💼 Recommendations

1. **Simplify checkout flow** — reduce number of steps
2. **Show full pricing early** — avoid surprise costs at checkout
3. **Enable faster payments** — one-click, autofill, saved cards
4. **Add trust signals** — security badges, reviews at checkout
5. **Targeted re-engagement** — cart abandonment emails/push notifications

---

## 📊 Dashboard Preview
![Dashboard](updated-dashboard.png)

---

## 🧠 Skills Demonstrated
- SQL aggregation, DISTINCT counting, subqueries
- Funnel analysis and conversion logic
- Segmentation by device, channel, geography
- Revenue impact quantification
- Power BI DAX measures and dashboard design
- Business recommendation framing
