--
-- Table structure for table `cus_cntrt_crr`
--

DROP TABLE IF EXISTS `cus_cntrt_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_cntrt_crr` (
  `cntrt_admno` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '접촉관리번호',
  `cntrt_dthms` datetime NOT NULL COMMENT '접촉일시',
  `cntrt_rq_dthms` datetime DEFAULT NULL COMMENT '접촉요청일시',
  `cntrt_bj_dscno_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접촉대상식별번호구분코드',
  `cntrt_bj_dscno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접촉대상식별번호',
  `cntrt_no` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접촉번호',
  `cntrt_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접촉방법코드',
  `itmcd` varchar(15) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '품목코드',
  `whol_bsns_dl_tpnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전사업무처리유형명',
  `whol_bsns_dl_tp_dtnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전사업무처리유형상세명',
  `cntrt_syscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접촉시스템코드',
  `cntrt_chncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접촉채널코드',
  `cntrt_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접촉기관코드',
  `cntrt_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접촉직원번호',
  `cntrt_bsns_rel_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접촉업무관계유형코드',
  `cntrt_bsnno_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접촉업무번호구분코드',
  `cntrt_bsnno` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접촉업무번호',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `cntrt_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접촉결과코드',
  `cntrt_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접촉상태코드',
  `doc_id` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'DOCID',
  `doc_id_seqno` bigint(20) DEFAULT NULL COMMENT 'DOCID순번',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`cntrt_admno`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='접촉이력';
