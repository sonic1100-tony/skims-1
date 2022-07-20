--
-- Table structure for table `ins_cr_cr_dctp_milg`
--

DROP TABLE IF EXISTS `ins_cr_cr_dctp_milg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_cr_dctp_milg` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cr_seqno` decimal(7,0) NOT NULL COMMENT '발생순번',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `is_ndsno` decimal(4,0) NOT NULL COMMENT '가입배서번호',
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
  KEY `pix_ins_cr_cr_dctp_milg_00` (`plyno`,`cr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계약자동차할인형마일리지';
