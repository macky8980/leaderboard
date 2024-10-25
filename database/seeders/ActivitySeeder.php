<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Activity;
use App\Models\User;
use Illuminate\Support\Facades\DB;

class ActivitySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $users = User::all();

        // Create random activities for each user
        foreach ($users as $user) {
            // Create between 1 and 5 activities for each user
            $activityCount = rand(1, 5);
            for ($i = 0; $i < $activityCount; $i++) {
                Activity::create([
                    'user_id' => $user->id,
                    'points' => 20, // Each activity earns 20 points
                    'created_at' => now(), // Set the created_at timestamp
                    'updated_at' => now(), // Set the updated_at timestamp
                ]);
            }
        }
    }
}
