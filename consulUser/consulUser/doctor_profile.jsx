import Image from "/assets/image/ayune.png";
import { Button } from "@/components/ui/button";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import { Input } from "@/components/ui/input";

export function DoctorProfile() {
  return (
    <div className="w-full max-w-md p-6 bg-white rounded-lg">
      <h2 className="text-2xl font-semibold mb-6">Profil Dokter</h2>
      
      <div className="flex items-center gap-4 mb-6">
        <Image
          src="/placeholder.svg?height=80&width=80"
          alt="Doctor profile"
          width={80}
          height={80}
          className="rounded-full"
        />
        <div>
          <h3 className="font-semibold">Dr. Emy Kusumaningsh, Sp.DV</h3>
          <p className="text-sm text-gray-600 mt-1">
            Beliau merupakan dokter spesialis dermatovenereologi estetika kulit yang sudah lama bergabung di klinik kecantikan, tentunya pengalaman beliau sudah banyak tentang masalah kulit yang sering dialami oleh kebanyakan orang
          </p>
        </div>
      </div>

      <div className="space-y-6">
        <h3 className="text-xl font-semibold">Masalah Kulit</h3>
        
        <div className="space-y-4">
          <div>
            <label className="text-sm font-medium">Tipe Kulit:</label>
            <Select>
              <SelectTrigger>
                <SelectValue placeholder="Pilih jenis kulit anda" />
              </SelectTrigger>
              <SelectContent>
                <SelectItem value="normal">Normal</SelectItem>
                <SelectItem value="kering">Kering</SelectItem>
                <SelectItem value="berminyak">Berminyak</SelectItem>
                <SelectItem value="kombinasi">Kombinasi</SelectItem>
              </SelectContent>
            </Select>
          </div>

          <div>
            <label className="text-sm font-medium">Masalah Kulit:</label>
            <Select>
              <SelectTrigger>
                <SelectValue placeholder="Kulit saya terasa sangat kering hingga terkelupas (Sangat kering). Dan juga sensitif (kulit sensitif)" />
              </SelectTrigger>
              <SelectContent>
                <SelectItem value="kering">Kulit Kering</SelectItem>
                <SelectItem value="sensitif">Kulit Sensitif</SelectItem>
                <SelectItem value="berjerawat">Berjerawat</SelectItem>
              </SelectContent>
            </Select>
          </div>

          <div>
            <label className="text-sm font-medium">Usia:</label>
            <Input type="number" placeholder="23" />
          </div>

          <Button className="w-full bg-[#008080] hover:bg-[#006666]">
            Rekomendasi
          </Button>
        </div>
      </div>
    </div>
  );
}