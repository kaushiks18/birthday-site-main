import "./globals.css";

export const metadata = {
  title: "Happy Birthday!",
  description: "A special birthday countdown and celebration",
}

export default function RootLayout({ children }) {
  return (
    <html lang="en">
      <body className="font-sans antialiased">{children}</body>
    </html>
  )
}
