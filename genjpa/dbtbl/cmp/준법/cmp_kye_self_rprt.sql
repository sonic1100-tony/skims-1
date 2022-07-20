--
-- Table structure for table `cmp_kye_self_rprt`
--

DROP TABLE IF EXISTS `cmp_kye_self_rprt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmp_kye_self_rprt` (
  `bj_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '대상년월',
  `bj_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '대상직원번호',
  `ans_dt` date DEFAULT NULL COMMENT '응답일자',
  `slc_1_vl` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '선택1값',
  `slc_2_vl` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '선택2값',
  `slc_3_vl` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '선택3값',
  `slc_4_vl` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '선택4값',
  `slc_5_vl` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '선택5값',
  `slc_6_vl` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '선택6값',
  `slc_7_vl` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '선택7값',
  `slc_8_vl` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '선택8값',
  `slc_9_vl` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '선택9값',
  `slc_10_vl` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '선택10값',
  `sjtv_1_answ_cn` varchar(3000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주관식1답안내용',
  `sjtv_2_answ_cn` varchar(3000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주관식2답안내용',
  `sjtv_3_answ_cn` varchar(3000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주관식3답안내용',
  `sjtv_4_answ_cn` varchar(3000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주관식4답안내용',
  `sjtv_5_answ_cn` varchar(3000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주관식5답안내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`bj_yymm`,`bj_stfno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='직원알기제도자기신고서';
