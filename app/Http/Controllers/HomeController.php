<?php

namespace app\Http\Controllers;

use App\Article;
use App\Photo;
use App\PhotoAlbum;
use DB;

class HomeController extends Controller {

    /**
     * Show the application dashboard to the user.
     *
     * @return Response
     */
    public function index()
    {
        $articles = Article::with('author')->orderBy('position', 'DESC')->orderBy('created_at', 'DESC')->limit(4)->get();

        $album_image1 = Photo::select('filename')
            ->whereNull('deleted_at')
            ->where('album_cover', '=', 1)
            // ->whereRaw('photos.photo_album_id = photo_albums.id')
            ->take(5)
            ->get();

        dump($album_image1);

        // and photos.photo_album_id=photo_albums.id
        $album_image = PhotoAlbum::select(DB::raw('
            (
                select filename from photos
                WHERE album_cover=1
                AND deleted_at IS NULL
                AND photos.photo_album_id = photo_albums.id
                LIMIT 1
            )
            AS album_image'))->get();

        dump($album_image);

        $album_image_first = PhotoAlbum::select(DB::raw('(
                select filename from photos
                WHERE photos.photo_album_id=photo_albums.id
                AND deleted_at IS NULL
                ORDER BY position ASC, id ASC
                LIMIT 1
            ) AS album_image_first'))->get();

        dump($album_image_first);

        $photoAlbums = PhotoAlbum::select(array(
            'photo_albums.id',
            'photo_albums.name',
            'photo_albums.description',
            'photo_albums.folder_id',
            DB::raw('(select filename from photos WHERE album_cover=1 AND deleted_at IS NULL and photos.photo_album_id=photo_albums.id LIMIT 1) AS album_image'),
            DB::raw('(select filename from photos WHERE photos.photo_album_id=photo_albums.id AND deleted_at IS NULL ORDER BY position ASC, id ASC LIMIT 1) AS album_image_first')
        ))->limit(8)->get();

        return view('pages.home', compact('articles', 'photoAlbums'));
    }

}