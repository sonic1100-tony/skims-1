--
-- Table structure for table `ins_bdl_nds`
--

DROP TABLE IF EXISTS `ins_bdl_nds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_bdl_nds` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `nds_wrk_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배서작업구분코드',
  `iptdt` date NOT NULL COMMENT '입력일자',
  `inp_seq` decimal(3,0) NOT NULL COMMENT '입력회차',
  `inp_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입력직원번호',
  `o1_inp_argu_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차입력인자명',
  `o2_inp_argu_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차입력인자명',
  `o3_inp_argu_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3차입력인자명',
  `o4_inp_argu_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '4차입력인자명',
  `o5_inp_argu_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '5차입력인자명',
  `o6_inp_argu_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '6차입력인자명',
  `o7_inp_argu_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '7차입력인자명',
  `o8_inp_argu_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '8차입력인자명',
  `o9_inp_argu_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '9차입력인자명',
  `o10_inp_argu_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '10차입력인자명',
  `o11_inp_argu_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '11차입력인자명',
  `o12_inp_argu_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '12차입력인자명',
  `o13_inp_argu_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '13차입력인자명',
  `o14_inp_argu_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '14차입력인자명',
  `o15_inp_argu_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '15차입력인자명',
  `o16_inp_argu_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '16차입력인자명',
  `o17_inp_argu_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '17차입력인자명',
  `o18_inp_argu_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '18차입력인자명',
  `o19_inp_argu_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '19차입력인자명',
  `o20_inp_argu_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '20차입력인자명',
  `wrk_cplyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '작업완료여부',
  `dl_rs` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리사유',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_bdl_nds_00` (`plyno`,`nds_wrk_flgcd`,`iptdt`,`inp_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='일괄배서';
