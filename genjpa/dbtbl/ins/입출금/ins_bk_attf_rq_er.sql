--
-- Table structure for table `ins_bk_attf_rq_er`
--

DROP TABLE IF EXISTS `ins_bk_attf_rq_er`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_bk_attf_rq_er` (
  `rq_erno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '신청오류번호',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `auto_tf_cg_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자동이체요금종류코드',
  `rq_rst_rcpdt` date NOT NULL COMMENT '신청결과접수일자',
  `tf_rq_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이체신청구분코드',
  `bkcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '은행코드',
  `bk_brcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행지점코드',
  `dpsnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예금주명',
  `actno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '계좌번호',
  `nt_tf_hpdy_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이자이체희망일코드',
  `tf_dl_metcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이체처리방식코드',
  `auto_tf_rq_ptncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자동이체신청경로코드',
  `tf_dl_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이체처리상태코드',
  `dl_plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리증권번호',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객식별번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rq_erno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='은행자동이체신청오류';
