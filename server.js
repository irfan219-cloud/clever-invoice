const express = require('express');
const dotenv = require('dotenv');
const nodemailer = require('nodemailer')
const cors = require('cors')
dotenv.config()
const app = express();

app.use(express.json());
app.use(cors());


const transporter = nodemailer.createTransport({
  service: 'gmail',
  auth: {
    user: 'syedirfana493@gmail.com',
    pass: process.env.PASSWORD
  }
});

app.post('/send-email', async (req, res) => {
  const { to, subject, text } = req.body;

  if (!to || !subject || !text) {
    return res.status(400).json({ error: 'Missing "to", "subject", or "text"' });
  }

  const mailOptions = {
    from: 'syedirfan493@gmail.com',
    to,
    subject,
    text
  };

  try {
    const info = await transporter.sendMail(mailOptions);
    res.status(200).json({ success: true, info });
  } catch (error) {
    console.error('Error sending email:', error);
    res.status(500).json({ success: false, error: 'Failed to send email' });
  }
});

app.get('/', (req, res) => {
  res.send('Backend is running');
});

const PORT = process.env.PORT;
app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});