<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Services\RankService;


class LeaderboardController extends Controller
{
    
    protected $rankService;

    public function __construct(RankService $rankService)
    {
        $this->rankService = $rankService;
    }

    // Display the leaderboard
    public function index()
    {  
    	$this->rankService->updateRanks();
        $users = User::withSum('activities', 'points')->orderByDesc('activities_sum_points')->get();
        return view('leaderboard', compact('users'));
    }

    public function filter($filterType)
    {
        $query = User::withSum('activities', 'points');

        switch ($filterType) {
            case 'day':
                $query->whereDate('created_at', now());
                break;
            case 'month':
                $query->whereYear('created_at', now()->year)
                      ->whereMonth('created_at', now()->month);
                break;
            case 'year':
                $query->whereYear('created_at', now()->year);
                break;
        }

        $users = $query->orderByDesc('activities_sum_points')->get();
        return view('partials.leaderboard_rows', compact('users'));
    }

    public function search($userId=0) {
           $users = User::withSum('activities', 'points')
                    ->orderByRaw('CASE WHEN id = '.$userId.' THEN 0 ELSE 1 END')
                    ->orderBy('activities_sum_points', 'desc')
                    ->get();
           return view('partials.leaderboard_rows', compact('users'));         
    }

    public function recalculate()
    {
        $this->rankService->updateRanks();

        $users = User::withSum('activities', 'points')->orderByDesc('activities_sum_points')->get();
        return view('partials.leaderboard_rows', compact('users'));
    }
}
