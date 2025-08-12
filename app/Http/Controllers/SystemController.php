<?php
namespace App\Http\Controllers;

use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class SystemController extends Controller
{
    public function runMigrate()
    {
        // Get all migration file names
        $migrationFiles = collect(File::files(database_path('migrations')))
            ->map(fn($file) => pathinfo($file, PATHINFO_FILENAME));

        // Get already run migrations from DB
        $ranMigrations = collect(DB::table('migrations')->pluck('migration'));

        // Find pending migrations
        $pending = $migrationFiles->diff($ranMigrations);

        if ($pending->isEmpty()) {
            return response()->json([
                'status'  => 'info',
                'message' => 'Nothing to migrate.',
            ]);
        }

        // Run migration
        Artisan::call('migrate', ['--force' => true]);

        return response()->json([
            'status'  => 'success',
            'message' => 'Migration completed successfully.',
        ]);
    }
}
