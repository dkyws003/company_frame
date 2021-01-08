package com.szxx.recruit.entity;

import java.io.Serializable;
import java.util.Date;

public class CandidateInformation implements Serializable {
    private String id;

    private String needsId;

    private String processCode;

    private String candidateName;

    private String school;

    private String personWork;

    private String phone;

    private String idCard;

    private Date entryDate;

    private Date graduatedDate;

    private String profession;

    private Integer sex;

    private String pravidorName;

    private Integer contractNature;

    private Date arriveDate;

    private String isLeave;

    private String price;

    private String fileName;

    private String pathName;

    private Date createTime;

    private Date updateTime;

    private Integer deleted;

    private Integer status;

    private static final long serialVersionUID = 1L;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getNeedsId() {
        return needsId;
    }

    public void setNeedsId(String needsId) {
        this.needsId = needsId == null ? null : needsId.trim();
    }

    public String getProcessCode() {
        return processCode;
    }

    public void setProcessCode(String processCode) {
        this.processCode = processCode == null ? null : processCode.trim();
    }

    public String getCandidateName() {
        return candidateName;
    }

    public void setCandidateName(String candidateName) {
        this.candidateName = candidateName == null ? null : candidateName.trim();
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school == null ? null : school.trim();
    }

    public String getPersonWork() {
        return personWork;
    }

    public void setPersonWork(String personWork) {
        this.personWork = personWork == null ? null : personWork.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard == null ? null : idCard.trim();
    }

    public Date getEntryDate() {
        return entryDate;
    }

    public void setEntryDate(Date entryDate) {
        this.entryDate = entryDate;
    }

    public Date getGraduatedDate() {
        return graduatedDate;
    }

    public void setGraduatedDate(Date graduatedDate) {
        this.graduatedDate = graduatedDate;
    }

    public String getProfession() {
        return profession;
    }

    public void setProfession(String profession) {
        this.profession = profession == null ? null : profession.trim();
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public String getPravidorName() {
        return pravidorName;
    }

    public void setPravidorName(String pravidorName) {
        this.pravidorName = pravidorName == null ? null : pravidorName.trim();
    }

    public Integer getContractNature() {
        return contractNature;
    }

    public void setContractNature(Integer contractNature) {
        this.contractNature = contractNature;
    }

    public Date getArriveDate() {
        return arriveDate;
    }

    public void setArriveDate(Date arriveDate) {
        this.arriveDate = arriveDate;
    }

    public String getIsLeave() {
        return isLeave;
    }

    public void setIsLeave(String isLeave) {
        this.isLeave = isLeave == null ? null : isLeave.trim();
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price == null ? null : price.trim();
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName == null ? null : fileName.trim();
    }

    public String getPathName() {
        return pathName;
    }

    public void setPathName(String pathName) {
        this.pathName = pathName == null ? null : pathName.trim();
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

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", needsId=").append(needsId);
        sb.append(", processCode=").append(processCode);
        sb.append(", candidateName=").append(candidateName);
        sb.append(", school=").append(school);
        sb.append(", personWork=").append(personWork);
        sb.append(", phone=").append(phone);
        sb.append(", idCard=").append(idCard);
        sb.append(", entryDate=").append(entryDate);
        sb.append(", graduatedDate=").append(graduatedDate);
        sb.append(", profession=").append(profession);
        sb.append(", sex=").append(sex);
        sb.append(", pravidorName=").append(pravidorName);
        sb.append(", contractNature=").append(contractNature);
        sb.append(", arriveDate=").append(arriveDate);
        sb.append(", isLeave=").append(isLeave);
        sb.append(", price=").append(price);
        sb.append(", fileName=").append(fileName);
        sb.append(", pathName=").append(pathName);
        sb.append(", createTime=").append(createTime);
        sb.append(", updateTime=").append(updateTime);
        sb.append(", deleted=").append(deleted);
        sb.append(", status=").append(status);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}