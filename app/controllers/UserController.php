<?php
class UserController extends BaseController {
    public function getList() {
        $users = User::paginate(3);
        return View::make('backend.user.list')->with('title','Danh sách user')->with('users',$users);
    }
    public function getDelte($id) {
        $user = User::find($id);
        
        if($user) {
            $user->delete();
            return Redirect::route('listuser_get')->with('success','Xóa user thành công');
        }else {
            return Redirect::route('listuser_get')->with('error','Không tồn tại user này');
        }
    }
}