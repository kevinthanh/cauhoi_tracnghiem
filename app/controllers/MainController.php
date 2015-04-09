<?php
class MainController extends BaseController {
    public function index() {
        return View::make('backend.index')->with('title','Ðây là trang index');
    }
    public function indexfrontend() {
        return View::make('frontend.tracnghiem.home')->with('title','Đây là trang front-end');
    }
	public function home() {
        return View::make('frontend.index')->with('title','Đây là trang front-end');
    }
}