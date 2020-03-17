package top.yjm.permission.service.impl;

import top.yjm.permission.entity.User;
import top.yjm.permission.mapper.UserMapper;
import top.yjm.permission.service.UserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author yjm
 * @since 2020-03-15
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {

}
