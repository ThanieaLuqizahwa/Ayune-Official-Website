"use client";

import { useState } from "react";
import { NavBar } from "@/components/nav-bar";
import { ChatMessage } from "@/components/chat-message";
import { ChatInput } from "@/components/chat-input";
import { DoctorProfile } from "@/components/doctor-profile";
import { Footer } from "@/components/footer";

const initialMessages = [
  {
    message: "Halo, Ayyunie bisakah anda menceritakan masalah kulit yang anda alami bisa juga dengan menyertakan foto agar mudah bagi kami untuk mengenalisa masalah kulit anda",
    timestamp: "12:00",
    isUser: false,
  },
  {
    message: "Begitulah kira kira kulit saya dok kering dan juga sensitif di beberapa bagian juga terdapat kulit yang mengelupas",
    timestamp: "12:02",
    isUser: true,
    image: "/placeholder.svg?height=200&width=200",
  },
  {
    message: "Baiklah Ayyunie untuk penanganan pertama disarankan untuk menggunakan moisturizer atau pelembab untuk mengurangi kering pada kulit anda silahkan di label skin product di samping agar anda bisa langsung melihat rekomendasi skincare yang cocok untuk masalah kulit anda",
    timestamp: "12:03",
    isUser: false,
  },
  {
    message: "Baiklah dok terimakasih atas sarannya saya akan melihat langsung skincare mana saja yang bisa membantu merawat kulit wajah saya",
    timestamp: "12:05",
    isUser: true,
  },
];

export default function KonsultasiPage() {
  const [messages, setMessages] = useState(initialMessages);

  const handleSendMessage = (message) => {
    setMessages([
      ...messages,
      {
        message,
        timestamp: new Date().toLocaleTimeString([], { 
          hour: '2-digit', 
          minute: '2-digit',
          hour12: false 
        }),
        isUser: true,
      },
    ]);
  };

  return (
    <div className="min-h-screen flex flex-col">
      <NavBar />
      
      <div className="bg-[#E6F3F0] py-8">
        <h1 className="text-3xl font-bold text-center">KONSULTASI</h1>
      </div>

      <div className="flex-1 container mx-auto px-6 py-8">
        <div className="grid grid-cols-2 gap-8">
          <div className="border rounded-lg bg-white">
            <div className="h-[600px] overflow-y-auto p-4">
              {messages.map((msg, index) => (
                <ChatMessage key={index} {...msg} />
              ))}
            </div>
            <ChatInput onSendMessage={handleSendMessage} />
          </div>
          
          <DoctorProfile />
        </div>
      </div>

      <Footer />
    </div>
  );
}