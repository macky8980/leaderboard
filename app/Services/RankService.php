<?php
namespace App\Services;

use App\Models\User;

class RankService
{
    public function updateRanks()
    {
        // Fetch all users with their total points in descending order
        $users = User::withSum('activities', 'points')
            ->orderByDesc('activities_sum_points')
            ->orderBy('updated_at') // Sort by updated timestamp as a tie-breaker if needed
            ->get();

        $currentRank = 1;
        $previousPoints = null;
        $tieRank = 1;

        foreach ($users as $index => $user) {
            // Check if current user's points are the same as the previous user's points
            if ($user->activities_sum_points === $previousPoints) {
                // Assign the same rank as the previous user
                $user->rank = $tieRank;
            } else {
                // If not the same, assign the current rank and update the tieRank
                $user->rank = $currentRank;
                $tieRank = $currentRank; // Set tieRank to current rank
            }

            // Update points for comparison in the next iteration
            $previousPoints = $user->activities_sum_points;

            // Save the updated rank to the database
            $user->save();

            // Increment the rank for the next user (only if the current user didn't tie)
            $currentRank++;
        }
    }
}
