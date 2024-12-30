const cors= require("cors")

const globalCorsSetter= cors({
  origin: true,
  allowedHeaders: ['Authorization', 'Content-Type'],
  credentials: true,
  optionsSuccessStatus: 200
})

module.exports= globalCorsSetter;