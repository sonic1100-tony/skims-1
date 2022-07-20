--
-- Table structure for table `ccm_law_cnst`
--

DROP TABLE IF EXISTS `ccm_law_cnst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_law_cnst` (
  `law_cnst_rgt_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '법률자문등록년도',
  `law_cnst_seqno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '법률자문순번',
  `cnsdc_titl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자문서제목',
  `cnst_cn_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자문내용구분코드',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자직원번호',
  `law_cnst_rcpdt` date DEFAULT NULL COMMENT '법률자문접수일자',
  `law_cnst_rqtm_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법률자문의뢰팀기관코드',
  `naamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '계약금액',
  `law_cnst_enddt` date DEFAULT NULL COMMENT '법률자문종결일자',
  `law_cnst_requ_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법률자문의뢰내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`law_cnst_rgt_yr`,`law_cnst_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='법률자문';
