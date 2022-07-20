--
-- Table structure for table `ins_pl_udw_dscrt`
--

DROP TABLE IF EXISTS `ins_pl_udw_dscrt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_udw_dscrt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `lctcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '소재지코드',
  `rk_tpcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '위험유형코드',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `inp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입력구분코드',
  `bfyy_rt` decimal(12,6) NOT NULL COMMENT '전년도요율',
  `isamt` decimal(17,2) NOT NULL COMMENT '가입금액',
  `cc_rt` decimal(12,6) NOT NULL COMMENT '산출요율',
  `prm` decimal(17,2) NOT NULL COMMENT '보험료',
  `xclc_dscrt` decimal(12,6) NOT NULL COMMENT '우량할인율',
  `udw_dscrt` decimal(12,6) NOT NULL COMMENT '언더라이팅할인율',
  `yoy_dscrt` decimal(12,6) NOT NULL COMMENT '전년대비할인율',
  `ap_rt` decimal(15,7) NOT NULL COMMENT '적용요율',
  `ap_prm` decimal(17,2) NOT NULL COMMENT '적용보험료',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_pl_udw_dscrt_00` (`plno`,`cgaf_ch_seqno`,`lctcd`,`rk_tpcd`,`cvrcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계UDW할인율';
