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
        Schema::create('isian', function (Blueprint $table) {
            $table->id();
            $table->string('Nama');
            $table->string('Survei');
            $table->date('Tanggal');
            $table->time('Jam_Mulai');
            $table->time('Jam_Selesai');
            $table->string('Coordinates');
            $table->string('Alamat');
            $table->string('NBS');
            $table->string('NUS');
            $table->string('Responden');
            $table->integer('Jumlah_ART');
            $table->string('Beras_Kg');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('isian');
    }
};
