--
-- Table structure for table `sam_stf_rltn`
--

DROP TABLE IF EXISTS `sam_stf_rltn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sam_stf_rltn` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '성명',
  `cral_tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴대전화번호',
  `wpc_tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직장전화번호',
  `mail_adr` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이메일주소',
  `crnt_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '현재기관코드',
  `ptncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직위코드',
  `dtycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직책코드',
  `stf_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직원구분코드',
  `crnt_pst_apodt` date DEFAULT NULL COMMENT '현재소속발령일자',
  `ntrdt` date DEFAULT NULL COMMENT '입사일자',
  `stf_bz_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직원영업상태코드',
  `retdt` date DEFAULT NULL COMMENT '퇴사일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=61943 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='연계_직원';
