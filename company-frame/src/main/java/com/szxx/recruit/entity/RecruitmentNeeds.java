package com.szxx.recruit.entity;

import java.io.Serializable;
import java.util.Date;

public class RecruitmentNeeds implements Serializable {
    private String id;

    private String processCode;

    public String getProcessCode() {
        return processCode;
    }

    public void setProcessCode(String processCode) {
        this.processCode = processCode;
    }

    private String jdDescription;

    private String jdPath;

    private Integer status;

    private Date createTime;

    private Date updateTime;

    private Integer deleted;

    private static final long serialVersionUID = 1L;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }


    public String getJdDescription() {
        return jdDescription;
    }

    public void setJdDescription(String jdDescription) {
        this.jdDescription = jdDescription == null ? null : jdDescription.trim();
    }

    public String getJdPath() {
        return jdPath;
    }

    public void setJdPath(String jdPath) {
        this.jdPath = jdPath == null ? null : jdPath.trim();
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public Integer getDeleted() {
        return deleted;
    }

    public void setDeleted(Integer deleted) {
        this.deleted = deleted;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", processCode=").append(processCode);
        sb.append(", jdDescription=").append(jdDescription);
        sb.append(", jdPath=").append(jdPath);
        sb.append(", status=").append(status);
        sb.append(", createTime=").append(createTime);
        sb.append(", updateTime=").append(updateTime);
        sb.append(", deleted=").append(deleted);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}