--
-- Table structure for table `sam_crstf_acc`
--

DROP TABLE IF EXISTS `sam_crstf_acc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sam_crstf_acc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stf_acc_admno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '직원계정관리번호',
  `fnl_rq_seqno` decimal(5,0) NOT NULL COMMENT '최종신청순번',
  `psgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '소속기관코드',
  `nm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '성명',
  `rsno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '주민번호',
  `stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직원번호',
  `stf_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직원구분코드',
  `adx_file_pth` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부파일경로',
  `adx_file_kyvl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부파일키값',
  `stf_acc_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '직원계정상태코드',
  `stf_acc_strdt` date DEFAULT NULL COMMENT '직원계정시작일자',
  `stf_acc_nddt` date DEFAULT NULL COMMENT '직원계정만료일자',
  `stf_acc_ersdt` date DEFAULT NULL COMMENT '직원계정삭제일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_sam_crstf_acc_00` (`stf_acc_admno`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계약직원계정';
