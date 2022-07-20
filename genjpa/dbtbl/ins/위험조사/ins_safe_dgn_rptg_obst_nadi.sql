--
-- Table structure for table `ins_safe_dgn_rptg_obst_nadi`
--

DROP TABLE IF EXISTS `ins_safe_dgn_rptg_obst_nadi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_safe_dgn_rptg_obst_nadi` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `obst_nm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '관측소명',
  `obst_sno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '관측소일련번호',
  `st_strdt` date DEFAULT NULL COMMENT '기준시작일자',
  `st_nddt` date DEFAULT NULL COMMENT '기준종료일자',
  `strm_cr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '폭풍발생구분코드',
  `volc_cr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화산발생구분코드',
  `flodd_cr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '침수발생구분코드',
  `typh_cr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '태풍발생구분코드',
  `tsun_cr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '쓰나미발생구분코드',
  `lhtn_cr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '낙뢰발생구분코드',
  `hail_cr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우박발생구분코드',
  `etqk_cr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지진발생구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_safe_dgn_rptg_obst_nadi_00` (`obst_nm`,`obst_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='안전진단보고서관측소자연재해';
