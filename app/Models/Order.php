<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
	 protected $table = 'orders';
    protected $primaryKey = 'id';
    protected $fillable = ['mihpayid','amount','status','cardnum','payuMoneyId','mode','city','email','phone','bankcode','discount','address1','firstname','productinfo'];
}