# Task-3: Microservices Deployed Cost Estimation

## Objective
Is task ka objective ek real-world microservices-based application ka AWS par deployment cost estimate karna hai using AWS Pricing Calculator.

---<img width="1440" height="900" alt="Screenshot 2025-12-15 at 7 42 49 PM" src="https://github.com/user-attachments/assets/aab6c6c2-23fc-43a9-8064-59691b2a9546" />


<img width="1440" height="900" alt="Screenshot 2025-12-15 at 7 43 36 PM" src="https://github.com/user-attachments/assets/fb18e36f-3613-4217-a2d3-493b37d9f2a0" />




Experimaent 2.pdf

## Architecture Overview
Application ek microservices architecture follow karti hai, jisme alag-alag services independently deploy hoti hain aur API ke through communicate karti hain.

Architecture me following components shamil hain:
- API Gateway
- Microservices (AWS Lambda / ECS / EC2)
- AWS Fargate
- Database services
- Storage & CDN
- Monitoring & Logging services

---

## Microservices Application Description

Ye application ek **ride-based system** ko represent karti hai (Uber/OLA type).

### Ride Service Responsibilities
- New ride create karna
- Existing rides list karna
- Ride complete karna
- Fare calculate karna

---

## Ride Data Model

```js
const Ride = mongoose.model('Ride', new mongoose.Schema({
  riderName: String,
  driverName: String,
  pickup: { lat: Number, lng: Number },
  drop: { lat: Number, lng: Number },
  fare: Number,
  status: { type: String, enum: ['requested', 'matched', 'completed'] }
}));





