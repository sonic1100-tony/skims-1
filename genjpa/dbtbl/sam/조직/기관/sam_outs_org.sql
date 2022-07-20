--
-- Table structure for table `sam_outs_org`
--

DROP TABLE IF EXISTS `sam_outs_org`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sam_outs_org` (
  `brc_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '지사기관코드',
  `brc_nm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '지사명',
  `brc_lead_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지사장성명',
  `rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주민번호',
  `agy_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '대리점직원번호',
  `brc_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '지사상태코드',
  `brc_stadt` date NOT NULL COMMENT '지사상태일자',
  `brc_rgtdt` date NOT NULL COMMENT '지사등록일자',
  `brc_adm_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지사관리직원번호',
  `brc_adm_stf_apodt` date DEFAULT NULL COMMENT '지사관리직원발령일자',
  `org_tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기관전화지역번호',
  `org_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기관전화국번',
  `org_tlsno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기관전화일련번호',
  `fax_areno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '팩스지역번호',
  `fax_tno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '팩스국번',
  `fax_sno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '팩스일련번호',
  `pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편번호',
  `sd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시도',
  `sgng` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시군구',
  `twmd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '읍면동',
  `ri_or_lrdlp` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '리/대량배달처',
  `dtadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상세주소',
  `brc_admno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지사관리번호',
  `ref_it` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '참고항목',
  `brc_clodt` date DEFAULT NULL COMMENT '지사폐쇄일자',
  `bf_pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전우편번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`brc_orgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='외부기관';
