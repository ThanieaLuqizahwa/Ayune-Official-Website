"use client"

import { Camera, Send } from 'lucide-react';
import { useState } from "react";

export function ChatInput({ onSendMessage }) {
  const [message, setMessage] = useState("");

  const handleSubmit = (e) => {
    e.preventDefault();
    if (message.trim()) {
      onSendMessage(message);
      setMessage("");
    }
  };

  return (
    <form onSubmit={handleSubmit} className="flex gap-2 p-4 border-t">
      <button
        type="button"
        className="p-2 text-gray-500 hover:text-[#008080] transition-colors"
      >
        <Camera className="w-6 h-6" />
      </button>
      <input
        type="text"
        value={message}
        onChange={(e) => setMessage(e.target.value)}
        placeholder="Ketik di sini..."
        className="flex-1 px-4 py-2 text-sm border rounded-full focus:outline-none focus:border-[#008080]"
      />
      <button
        type="submit"
        className="p-2 text-gray-500 hover:text-[#008080] transition-colors"
      >
        <Send className="w-6 h-6" />
      </button>
    </form>
  );
}