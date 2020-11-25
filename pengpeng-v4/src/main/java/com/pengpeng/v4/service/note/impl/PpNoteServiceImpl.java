package com.pengpeng.v4.service.note.impl;

import java.util.List;
import com.pengpeng.common.utils.DateUtils;
import com.pengpeng.v4.mapper.note.PpNoteMapper;
import com.pengpeng.v4.pojo.note.PpNote;
import com.pengpeng.v4.service.note.IPpNoteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.pengpeng.common.core.text.Convert;

/**
 * 短信发送列Service业务层处理
 * 
 * @author pengpeng
 * @date 2019-12-26
 */
@Service
public class PpNoteServiceImpl implements IPpNoteService
{
    @Autowired
    private PpNoteMapper ppNoteMapper;

    /**
     * 查询短信发送列
     * 
     * @param id 短信发送列ID
     * @return 短信发送列
     */
    @Override
    public PpNote selectPpNoteById(Long id)
    {
        return ppNoteMapper.selectPpNoteById(id);
    }

    /**
     * 查询短信发送列列表
     * 
     * @param ppNote 短信发送列
     * @return 短信发送列
     */
    @Override
    public List<PpNote> selectPpNoteList(PpNote ppNote)
    {
        return ppNoteMapper.selectPpNoteList(ppNote);
    }

    /**
     * 新增短信发送列
     * 
     * @param ppNote 短信发送列
     * @return 结果
     */
    @Override
    public int insertPpNote(PpNote ppNote)
    {
        ppNote.setCreateTime(DateUtils.getNowDate());
        return ppNoteMapper.insertPpNote(ppNote);
    }

    /**
     * 修改短信发送列
     * 
     * @param ppNote 短信发送列
     * @return 结果
     */
    @Override
    public int updatePpNote(PpNote ppNote)
    {
        ppNote.setUpdateTime(DateUtils.getNowDate());
        return ppNoteMapper.updatePpNote(ppNote);
    }

    /**
     * 删除短信发送列对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deletePpNoteByIds(String ids)
    {
        return ppNoteMapper.deletePpNoteByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除短信发送列信息
     * 
     * @param id 短信发送列ID
     * @return 结果
     */
    @Override
    public int deletePpNoteById(Long id)
    {
        return ppNoteMapper.deletePpNoteById(id);
    }
}
