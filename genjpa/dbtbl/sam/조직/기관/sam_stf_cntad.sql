--
-- Table structure for table `sam_stf_cntad`
--

DROP TABLE IF EXISTS `sam_stf_cntad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sam_stf_cntad` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `stf_cntad_seqno` decimal(3,0) NOT NULL COMMENT '직원연락처순번',
  `cntad_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '연락처구분코드',
  `cntad_us_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '연락처사용여부',
  `stf_tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직원전화지역번호',
  `stf_tltno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '직원전화국번',
  `stf_tlsno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원전화일련번호',
  `nlnno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '내선번호',
  `opb_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '공개여부',
  `prs_tl_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '대표전화여부',
  `dmyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'DM여부',
  `ch_rs_mtt` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경사유사항',
  `cm_bzps_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통신사업자종류코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_sam_stf_cntad_00` (`stfno`,`stf_cntad_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='직원연락처';
