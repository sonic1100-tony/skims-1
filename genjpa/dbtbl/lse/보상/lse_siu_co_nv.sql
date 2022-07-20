--
-- Table structure for table `lse_siu_co_nv`
--

DROP TABLE IF EXISTS `lse_siu_co_nv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_siu_co_nv` (
  `siu_co_nv_admno` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'SIU공동조사관리번호',
  `nv_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '조사년도',
  `asso_no_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '협회번호년도',
  `asso_sno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '협회일련번호',
  `ers_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '삭제여부',
  `rgt_rs_ikdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '등록사유보종코드',
  `reqdt` date NOT NULL COMMENT '요청일자',
  `siu_co_nv_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'SIU공동조사유형코드',
  `siu_acdnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT 'SIU사건명',
  `detc_orgnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '수사기관명',
  `chr_dtctv_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당수사관성명',
  `thcp_pyamt` decimal(15,0) NOT NULL COMMENT '당사지급금액',
  `bscrl_pyamt` decimal(15,0) NOT NULL COMMENT '업계지급금액',
  `acd_cr_arenm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '사건발생지역명',
  `rstrn_psct` decimal(5,0) DEFAULT NULL COMMENT '구속인원수',
  `non_rstrn_psct` decimal(5,0) DEFAULT NULL COMMENT '불구속인원수',
  `siu_end_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'SIU종결상태코드',
  `siu_enddt` date DEFAULT NULL COMMENT 'SIU종결일자',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`siu_co_nv_admno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='SIU공동조사';
