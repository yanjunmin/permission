package top.yjm.permission.service.impl;

import top.yjm.permission.entity.OperationLog;
import top.yjm.permission.mapper.OperationLogMapper;
import top.yjm.permission.service.OperationLogService;
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
public class OperationLogServiceImpl extends ServiceImpl<OperationLogMapper, OperationLog> implements OperationLogService {

}
