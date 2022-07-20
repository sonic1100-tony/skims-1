--
-- Table structure for table `str_cmpln_chrps_chk`
--

DROP TABLE IF EXISTS `str_cmpln_chrps_chk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_cmpln_chrps_chk` (
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `lwad_part_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '준법부문구분코드',
  `psgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '소속기관코드',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `thme_chk_adx_file_key` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주제점검첨부파일KEY',
  `mthy_chk_adx_file_key` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '월간점검첨부파일KEY',
  `edu_atdnc_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '교육출석여부',
  `rst_poct` decimal(10,2) NOT NULL COMMENT '결과점수',
  `thme_chk_poct` decimal(3,0) NOT NULL COMMENT '주제점검점수',
  `mthy_chk_poct` decimal(3,0) NOT NULL COMMENT '월간점검점수',
  `edu_prse_poct` decimal(5,0) NOT NULL COMMENT '교육참석점수',
  `ad_poct` decimal(3,0) NOT NULL COMMENT '가산점수',
  `dmk_poct` decimal(3,0) NOT NULL COMMENT '감점점수',
  `vl_spc` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '평가내역',
  `rgt_st_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록상태구분코드',
  `rgtdt` date DEFAULT NULL COMMENT '등록일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`st_yymm`,`lwad_part_flgcd`,`psgcd`,`stfno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='준법감시담당자점검';
