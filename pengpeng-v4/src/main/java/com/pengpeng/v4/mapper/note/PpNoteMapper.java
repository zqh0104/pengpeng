package com.pengpeng.v4.mapper.note;
import com.pengpeng.v4.pojo.note.PpNote;

import java.util.List;

/**
 * 短信发送列Mapper接口
 * 
 * @author pengpeng
 * @date 2019-12-26
 */
public interface PpNoteMapper 
{
    /**
     * 查询短信发送列
     * 
     * @param id 短信发送列ID
     * @return 短信发送列
     */
    public PpNote selectPpNoteById(Long id);

    /**
     * 查询短信发送列列表
     * 
     * @param ppNote 短信发送列
     * @return 短信发送列集合
     */
    public List<PpNote> selectPpNoteList(PpNote ppNote);

    /**
     * 新增短信发送列
     * 
     * @param ppNote 短信发送列
     * @return 结果
     */
    public int insertPpNote(PpNote ppNote);

    /**
     * 修改短信发送列
     * 
     * @param ppNote 短信发送列
     * @return 结果
     */
    public int updatePpNote(PpNote ppNote);

    /**
     * 删除短信发送列
     * 
     * @param id 短信发送列ID
     * @return 结果
     */
    public int deletePpNoteById(Long id);

    /**
     * 批量删除短信发送列
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deletePpNoteByIds(String[] ids);
}
