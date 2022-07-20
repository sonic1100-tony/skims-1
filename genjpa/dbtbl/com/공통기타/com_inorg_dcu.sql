--
-- Table structure for table `com_inorg_dcu`
--

DROP TABLE IF EXISTS `com_inorg_dcu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_inorg_dcu` (
  `inorg_dcu_bzpl_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '대외기관문서사업계획년도',
  `inorg_dcu_sno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '대외기관문서일련번호',
  `inorg_dcu_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대외기관문서구분코드',
  `inorg_dcu_dpc_plac_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대외기관문서발신처명',
  `inorg_dcu_dpcnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대외기관문서발신자명',
  `inorg_dcuno` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대외기관문서번호',
  `opedt` date DEFAULT NULL COMMENT '시행일자',
  `asr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '회신여부',
  `asr_rqdt` date DEFAULT NULL COMMENT '회신요구일자',
  `dl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리여부',
  `inorg_dcunm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대외기관문서명',
  `inorg_dcu_doc_finm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대외기관문서공문파일명',
  `inorg_dcu_doc_1_finm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대외기관문서공문1파일명',
  `inorg_dcu_asr_finm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대외기관문서회신파일명',
  `inorg_dcu_asr_1_finm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대외기관문서회신1파일명',
  `memo_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '메모내용',
  `elec_prv_dcu_id` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전자결재문서아이디',
  `whol_pbwns_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전사공유여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`inorg_dcu_bzpl_yr`,`inorg_dcu_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='대외기관문서';
