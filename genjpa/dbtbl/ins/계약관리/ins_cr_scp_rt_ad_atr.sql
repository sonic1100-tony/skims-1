--
-- Table structure for table `ins_cr_scp_rt_ad_atr`
--

DROP TABLE IF EXISTS `ins_cr_scp_rt_ad_atr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_scp_rt_ad_atr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `nrdps_rsno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '피보험자주민번호',
  `carno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '차량번호',
  `ins_strdt` date NOT NULL COMMENT '보험시작일자',
  `scp_rt_seqno` decimal(5,0) NOT NULL COMMENT '자사요율순번',
  `car_seqno` decimal(5,0) NOT NULL COMMENT '차량순번',
  `scp_rt_atrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자사요율속성코드',
  `scp_rt_atrvl` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '자사요율속성값',
  `same_ply_carno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '동일증권차량번호',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_cr_scp_rt_ad_atr_00` (`nrdps_rsno`,`carno`,`ins_strdt`,`scp_rt_seqno`,`car_seqno`,`scp_rt_atrcd`)
) ENGINE=InnoDB AUTO_INCREMENT=4108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동차자사요율추가속성';
