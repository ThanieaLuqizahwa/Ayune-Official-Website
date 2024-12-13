import Link from "next/link";
import Image from "next/image";
import { User } from 'lucide-react';

export function NavBar() {
  return (
    <nav className="flex items-center justify-between px-6 py-4 bg-white">
      <Link href="/">
        <Image 
          src="/placeholder.svg?height=40&width=120" 
          alt="Ayune Logo" 
          width={120} 
          height={40}
          className="text-[#008080]"
        />
      </Link>
      
      <div className="flex items-center gap-8">
        <Link href="/beranda" className="text-gray-700 hover:text-[#008080]">
          BERANDA
        </Link>
        <Link href="/tentang-kami" className="text-gray-700 hover:text-[#008080]">
          TENTANG KAMI
        </Link>
        <Link href="/produk" className="text-gray-700 hover:text-[#008080]">
          PRODUK
        </Link>
        <Link href="/konsultasi" className="text-gray-700 hover:text-[#008080]">
          KONSULTASI
        </Link>
      </div>

      <div className="flex items-center gap-2 px-4 py-2 text-[#008080] border border-[#008080] rounded-full">
        <User  className="w-4 h-4" />
        <span>Ayyunie</span>
      </div>
    </nav>
  );
}