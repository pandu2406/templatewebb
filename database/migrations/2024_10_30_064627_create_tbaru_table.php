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
        Schema::create('tbaru', function (Blueprint $table) {
            $table->id();
            $table->string('namapetugas');
            $table->string('nama_survei');
            $table->string('idresponden');
            $table->datetime('waktu_unique')->unique();
            $table->time('waktu_kirim');
            $table->string('Coordinates');
            $table->integer('delete');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tbaru');
    }
};
