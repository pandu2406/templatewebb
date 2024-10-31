<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('pengawasan', function (Blueprint $table) {
            $table->id();
            $table->string('Nama_Pengawas');
            $table->string('Kegiatan');
            $table->date('Tanggal');
            $table->time('Jam_Mulai');
            $table->time('Jam_Selesai');
            $table->string('Coordinates');
            $table->string('Alamat');
            $table->string('Petugas');
            $table->string('Catatan');
            $table->string('foto');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pengawasan');
    }
};
