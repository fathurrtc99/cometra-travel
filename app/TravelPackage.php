<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\softDeletes;

class TravelPackage extends Model
{
    use softDeletes;

    protected $fillable = [
    'title','slug','location','about','featured_event','language','foods','departured_date','duration','type','price'

    ];


    protected $hidden = [
        //
    ];


         /**
         * Get all of the comments for the TravelPackage
         *
         * @return \Illuminate\Database\Eloquent\Relations\HasMany
         */
        public function galleries()
        {
            return $this->hasMany(Gallery::class, 'travel_packages_id', 'id');
        }
}

