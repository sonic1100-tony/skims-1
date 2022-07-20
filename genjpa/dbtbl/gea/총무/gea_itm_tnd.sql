--
-- Table structure for table `gea_itm_tnd`
--

DROP TABLE IF EXISTS `gea_itm_tnd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_itm_tnd` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `tndno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '입찰번호',
  `tnddt` date NOT NULL COMMENT '입찰일자',
  `tndnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '입찰명',
  `tnd_rgt_clsdt` date DEFAULT NULL COMMENT '입찰등록마감일자',
  `tnd_rgt_plc` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입찰등록장소',
  `tnd_fmldc_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입찰구비서류내용',
  `tnamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '입찰금액',
  `axamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '부가세액',
  `tnd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입찰구분코드',
  `bi_fail_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '낙찰유찰구분코드',
  `bidt` date DEFAULT NULL COMMENT '낙찰일자',
  `bi_entp_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '낙찰업체고객번호',
  `sitg_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배석직원번호',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_gea_itm_tnd_00` (`tndno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='품목입찰';
