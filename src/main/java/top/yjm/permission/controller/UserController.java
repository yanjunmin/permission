package top.yjm.permission.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;
import top.yjm.permission.entity.User;
import top.yjm.permission.service.UserService;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author yjm
 * @since 2020-03-15
 */
@RestController
@RequestMapping("/permission/user")
public class UserController {

    @Autowired
    private UserService userService;

    @PostMapping("save")
    public void save(){
        for (int i = 0; i < 50 ; i++) {
            User user = new User();
            user.setUserName("yanjunmin" + i);
            user.setPassword("yanjunmin");
            user.setPasswordSalt("123");
            userService.save(user);
        }
    }
}

