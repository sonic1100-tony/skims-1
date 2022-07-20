--
-- Table structure for table `ins_cr_cr_dmgrt`
--

DROP TABLE IF EXISTS `ins_cr_cr_dmgrt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_cr_dmgrt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `stfno_or_orgcd` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호/기관코드',
  `stf_orgn_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '직원조직구분코드',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `stf_orgn_lvlcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '직원조직레벨코드',
  `rnd_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '경과보험료',
  `cr_dm_amt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '발생손해액',
  `dmgrt` decimal(15,7) NOT NULL DEFAULT '0.0000000' COMMENT '손해율',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_cr_cr_dmgrt_00` (`st_yymm`,`stfno_or_orgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험계약자동차손해율';
