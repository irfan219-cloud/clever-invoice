
import React from "react";

interface LogoProps {
  className?: string;
  size?: "small" | "medium" | "large";
  withText?: boolean;
}

const Logo: React.FC<LogoProps> = ({ className = "", size = "medium", withText = true }) => {
  let sizeClass: string;
  switch (size) {
    case "small":
      sizeClass = "w-8 h-8";
      break;
    case "large":
      sizeClass = "w-16 h-16";
      break;
    default:
      sizeClass = "w-10 h-10";
  }

  return (
    <div className={`flex items-center ${className}`}>
      <div className={`relative ${sizeClass}`}>
        <svg 
          viewBox="0 0 80 80" 
          fill="none" 
          xmlns="http://www.w3.org/2000/svg" 
          className="w-full h-full"
        >
          {/* Base shape with gradient */}
          <rect width="80" height="80" rx="20" className="fill-primary" />
          <rect x="56" y="20" width="8" height="40" rx="2" fill="white" />
          <rect x="16" y="20" width="32" height="8" rx="2" fill="white" />
          <rect x="16" y="36" width="32" height="8" rx="2" fill="white" />
          <rect x="16" y="52" width="32" height="8" rx="2" fill="white" />
          {/* Wave pattern overlay */}
          <path 
            d="M0 20C8 16 16 24 24 20C32 16 40 24 48 20C56 16 64 24 72 20C80 16 80 20 80 20V50C80 66.5685 66.5685 80 50 80H30C13.4315 80 0 66.5685 0 50V20Z" 
            fill="url(#paint0_linear)" 
            fillOpacity="0.3" 
          />

          <defs>
            <linearGradient id="paint0_linear" x1="40" y1="20" x2="40" y2="80" gradientUnits="userSpaceOnUse">
              <stop stopColor="white" stopOpacity="0.4" />
              <stop offset="1" stopColor="white" stopOpacity="0" />
            </linearGradient>
          </defs>
        </svg>
      </div>
      
      {withText && (
        <div className="ml-2 flex flex-col">
          <span className="font-heading font-bold text-primary text-lg leading-tight">Clever</span>
          <span className="font-heading font-medium text-secondary text-sm leading-tight">Invoice</span>

        </div>
      )}
    </div>
  );
};

export default Logo;
