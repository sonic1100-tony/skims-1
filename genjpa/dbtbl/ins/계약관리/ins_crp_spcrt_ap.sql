--
-- Table structure for table `ins_crp_spcrt_ap`
--

DROP TABLE IF EXISTS `ins_crp_spcrt_ap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_crp_spcrt_ap` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `gr_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '단체고객번호',
  `gr_ctmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '단체고객명',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date DEFAULT NULL COMMENT '적용종료일자',
  `udrtk_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수여부',
  `fnl_iptdt` date DEFAULT NULL COMMENT '최종입력일자',
  `fnl_inp_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종입력직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_crp_spcrt_ap_00` (`gr_ctmno`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='법인특별요율적용';
