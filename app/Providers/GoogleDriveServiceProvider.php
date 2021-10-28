<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use League\Flysystem\Filesystem;
use \Hypweb\Flysystem\GoogleDrive\GoogleDriveAdapter;

class GoogleDriveServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        \Storage::extend('google', function ($app, $config) {
            $client = new \Google_Client();

            $client->setClientId(env('GOOGLE_OAUTH_CLIENT_ID'));
            $client->setClientSecret(env('GOOGLE_OAUTH_CLIENT_SECRET'));
            $client->refreshToken("1//04hocoppqcf8HCgYIARAAGAQSNwF-L9IrsRw2kYPc5ezLFq8UaK6B6vaKq60GzFzpEeaxWlXPH_NNce8zXLjncjdVGqSbmi1Nvwo");
            $client->fetchAccessTokenWithRefreshToken("1//04hocoppqcf8HCgYIARAAGAQSNwF-L9IrsRw2kYPc5ezLFq8UaK6B6vaKq60GzFzpEeaxWlXPH_NNce8zXLjncjdVGqSbmi1Nvwo");
            $client->setAccessType("offline");
            $client->setScopes("https://www.googleapis.com/auth/drive.file");
            $client->setApprovalPrompt("force");
            $service = new \Google_Service_Drive($client);
            $adapter = new \Hypweb\Flysystem\GoogleDrive\GoogleDriveAdapter($service, $config['folderId']);

            return new \League\Flysystem\Filesystem($adapter);
        });
    }
}
