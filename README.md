# Clever Invoice

An intelligent invoice management system built with modern web technologies and smart automation features.

## 🚀 Features

- **Smart Invoice Creation**: Generate professional invoices with intelligent templates and smart suggestions
- **Smart Client Management**: Enhanced client organization and relationship management
- **Intelligent Payment Tracking**: Advanced analytics and predictive payment insights
- **Smart Time Tracking**: Intelligent billable hours analysis and optimization
- **Analytics Dashboard**: Business intelligence and performance insights
- **Responsive Design**: Works seamlessly on desktop, tablet, and mobile
- **Modern UI**: Built with shadcn/ui components and Tailwind CSS

## 🛠️ Technologies Used

This project is built with:

- **Frontend**: React 18 + TypeScript
- **Build Tool**: Vite
- **Styling**: Tailwind CSS + shadcn/ui
- **State Management**: React Context + React Query
- **Routing**: React Router DOM
- **Animations**: Framer Motion
- **Charts**: Recharts
- **Forms**: React Hook Form + Zod validation
- **Smart Integration**: Automation and intelligent features

## 📦 Installation

### Prerequisites

- Node.js 18+ 
- npm or yarn

### Setup

```bash
# Clone the repository
git clone <YOUR_REPOSITORY_URL>

# Navigate to the project directory
cd clever-invoice

# Install dependencies
npm install

# Start the development server
npm run dev
```

The application will be available at `http://localhost:8082` when running with npm, or at `http://localhost:8083` when running with Docker.

## 🏗️ Project Structure

```
src/
├── components/          # Reusable UI components
│   ├── Assistant/      # Smart invoice assistant and intelligent features
│   ├── Dashboard/      # Dashboard components
│   ├── Invoices/       # Intelligent invoice management
│   ├── Layout/         # Layout components
│   ├── Payments/       # Smart payment handling
│   ├── Templates/      # Enhanced invoice templates
│   └── ui/             # shadcn/ui components
├── contexts/           # React contexts
├── hooks/              # Custom React hooks
├── pages/              # Page components
├── types/              # TypeScript type definitions
└── lib/                # Utility functions
```

## 🚀 Available Scripts

- `npm run dev` - Start development server
- `npm run build` - Build for production
- `npm run build:dev` - Build for development
- `npm run preview` - Preview production build
- `npm run lint` - Run ESLint

## 🐳 Docker Support

This project includes Docker support for easy deployment and development.

### Running with Docker

1. Use the provided batch script (Windows) or shell script (Linux/Mac):
   - Windows: Double-click `docker-run.bat`
   - Linux/Mac: Run `./docker-run.sh`

2. Choose your preferred mode:
   - Development with hot reload (port 8083)
   - Standard development (port 8083)
   - Production (port 80)

3. Or use Docker Compose directly:
   ```bash
   # Development with hot reload
   docker-compose --profile dev-hot up --build
   
   # Standard development
   docker-compose --profile dev up --build
   
   # Production
   docker-compose --profile prod up --build
   ```

## 📱 Responsive Design

The application is fully responsive and optimized for:
- **Desktop**: Full-featured experience with sidebar navigation and smart tools
- **Tablet**: Adaptive layout with optimized touch interactions
- **Mobile**: Mobile-first design with intuitive navigation

## 🎨 Customization

- **Themes**: Light, dark, and system theme support
- **Templates**: Customizable invoice templates
- **Branding**: Easy to customize with your company colors and logo
- **Smart Features**: Configurable intelligent automation settings

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🆘 Support

If you encounter any issues or have questions:
- Check the existing issues
- Create a new issue with detailed information
- Contact the development team

---

Built with ❤️ using modern web technologies
