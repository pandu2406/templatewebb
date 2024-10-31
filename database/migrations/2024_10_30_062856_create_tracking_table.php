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
        Schema::create('tracking', function (Blueprint $table) {
            $table->id();
            $table->datetime('Timestamp');
            $table->string('Username_Surveyor');
            $table->datetime('Waktu_Unique')->unique();
            $table->string('Nama_Survei');
            $table->string('Nama_Responden');
            $table->datetime('Timestamp_Tracking');
            $table->string('Coordinates');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tracking');
    }
};
