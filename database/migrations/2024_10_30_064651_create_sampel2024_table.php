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
        Schema::create('sampel2024', function (Blueprint $table) {
            $table->id();
            $table->string('nama_petugas');
            $table->string('nama_user');
            $table->string('nama_survei');
            $table->string('nama_responden');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('sampel2024');
    }
};
