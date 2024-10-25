<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Services\RankService;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        $this->app->singleton(RankService::class, function ($app) {
        return new RankService();
        });
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        //
    }
}
