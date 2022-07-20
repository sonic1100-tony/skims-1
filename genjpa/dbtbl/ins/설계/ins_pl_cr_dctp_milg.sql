--
-- Table structure for table `ins_pl_cr_dctp_milg`
--

DROP TABLE IF EXISTS `ins_pl_cr_dctp_milg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_cr_dctp_milg` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `dctp_milg_is_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '할인형마일리지가입유형코드',
  `bfcr_thcp_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전계약당사여부',
  `crsdt` date DEFAULT NULL COMMENT '차량등록일자',
  `istm_img_rgtdt` date DEFAULT NULL COMMENT '가입시이미지등록일자',
  `istm_dabrd_trvl_dst` decimal(10,0) DEFAULT NULL COMMENT '가입시계기판주행거리',
  `cr_nspdt` date DEFAULT NULL COMMENT '차량검사일자',
  `nsptm_dabrd_trvl_dst` decimal(10,0) DEFAULT NULL COMMENT '검사시계기판주행거리',
  `annu_trvl_dst` decimal(7,0) DEFAULT NULL COMMENT '년간주행거리',
  `isamt_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가입금액코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_pl_cr_dctp_milg_00` (`plno`,`cgaf_ch_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계자동차할인형마일리지';
