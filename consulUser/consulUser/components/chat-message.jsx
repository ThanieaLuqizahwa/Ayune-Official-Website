import { cn } from "@/lib/utils";
import Image from "next/image";

export function ChatMessage({ message, timestamp, isUser , image }) {
  return (
    <div className={cn("flex gap-2 mb-4", isUser  && "justify-end")}>
      <div
        className={cn(
          "max-w-[80%] rounded-lg p-3",
          isUser  ? "bg-[#008080] text-white" : "bg-gray-100"
        )}
      >
        <p className="text-sm">{message}</p>
        {image && (
          <div className="mt-2">
            <Image
              src={image}
              alt="Consultation image"
              width={200}
              height={200}
              className="rounded-lg"
            />
          </div>
        )}
        <span className="text-xs text-gray-500 mt-1 block">
          {timestamp}
        </span>
      </div>
    </div>
  );
}