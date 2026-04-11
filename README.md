# 📊 E-commerce Funnel Analysis (SQL + Power BI)

## 🚀 Project Overview

This project analyzes user behavior in an e-commerce platform to identify drop-off points in the conversion funnel and uncover key factors affecting purchase decisions.

---

## 🎯 Problem Statement

Despite high user activity, a significant number of users do not complete purchases. The goal is to identify where users drop off in the funnel and determine the underlying reasons.

---

## 🗂 Dataset

* Clickstream events data (page_view, add_to_cart, checkout, purchase)
* Session-level data (device, source, country)
* Order-level data (pricing, discount, revenue)

---

## 🛠 Tools Used

* SQL (SQLite)
* Power BI
* Excel (data cleaning)

---

## 📈 Key Analysis

### 1. Funnel Analysis

* Page View → Add to Cart → Checkout → Purchase
* Identified ~45% drop-off between add-to-cart and checkout

---

### 2. Conversion Rates

* Cart Rate: ~68%
* Checkout Rate: ~55% (lowest stage)
* Purchase Rate: ~75%

---

### 3. Device Segmentation

* Conversion patterns were consistent across Desktop, Mobile, and Tablet
* Indicates the issue is not device-specific but related to overall checkout experience

---

### 4. Pricing & Discount Analysis

* Higher discounts did not significantly increase conversions
* High discount orders had lower average value
* Suggests discounts are not the primary driver of user drop-off

---

## 💡 Key Insights

* Major drop-off occurs before checkout, indicating cart abandonment
* Checkout friction (not pricing) is the primary issue
* Discounts alone are ineffective in improving conversion rates
* Problem is consistent across all devices

---

## 💼 Business Recommendations

* Simplify checkout process (reduce steps, enable guest checkout)
* Improve pricing transparency (show full cost earlier)
* Add trust signals (delivery info, return policy, secure payment icons)
* Enable faster payments (auto-fill, one-click checkout)
* Use targeted incentives instead of blanket discounts

---

## 📊 Dashboard Preview

<img width="1281" height="722" alt="image" src="https://github.com/user-attachments/assets/859bf9ba-f5fb-4c26-9b75-eb39f9d8645e" />


---

## 📈 Outcome

Identified key bottlenecks in the user funnel and provided actionable strategies to improve conversion and reduce cart abandonment.
