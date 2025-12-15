# Task-3: Microservices Deployed Cost Estimation

## Objective
Is task ka objective ek real-world microservices-based application ka AWS par deployment cost estimate karna hai using AWS Pricing Calculator.

---

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



