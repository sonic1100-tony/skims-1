--
-- Table structure for table `ins_cr_milxc_rst_info`
--

DROP TABLE IF EXISTS `ins_cr_milxc_rst_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_milxc_rst_info` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `istm_dabrd_trvl_dst` decimal(10,0) DEFAULT NULL COMMENT '가입시계기판주행거리',
  `xctm_dabrd_trvl_dst` decimal(10,0) DEFAULT NULL COMMENT '정산시계기판주행거리',
  `t_oper_dst` decimal(7,0) DEFAULT NULL COMMENT '총운행거리',
  `annu_trvl_dst` decimal(7,0) DEFAULT NULL COMMENT '년간주행거리',
  `istm_cvrcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가입시담보코드',
  `istm_is_amtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가입시가입금액코드',
  `xctm_cvrcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정산시담보코드',
  `xctm_is_amtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정산시가입금액코드',
  `istm_aprt` decimal(5,2) DEFAULT '0.00' COMMENT '가입시적용율',
  `xctm_aprt` decimal(5,2) DEFAULT '0.00' COMMENT '정산시적용율',
  `xc_prm` decimal(17,2) DEFAULT '0.00' COMMENT '정산보험료',
  `xc_stdt` date DEFAULT NULL COMMENT '정산기준일자',
  `trt_is_trm` decimal(5,0) DEFAULT NULL COMMENT '특약가입기간',
  `xc_dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정산처리구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_cr_milxc_rst_info_00` (`plyno`,`plno`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동차마일리지정산결과정보';
