package top.yjm.permission.service.impl;

import top.yjm.permission.entity.UserInfo;
import top.yjm.permission.mapper.UserInfoMapper;
import top.yjm.permission.service.UserInfoService;
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
public class UserInfoServiceImpl extends ServiceImpl<UserInfoMapper, UserInfo> implements UserInfoService {

}
