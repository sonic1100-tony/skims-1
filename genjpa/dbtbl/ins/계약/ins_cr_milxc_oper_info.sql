--
-- Table structure for table `ins_cr_milxc_oper_info`
--

DROP TABLE IF EXISTS `ins_cr_milxc_oper_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_milxc_oper_info` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `vald_nds_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '유효배서여부',
  `nds_ap_str_dthms` datetime DEFAULT NULL COMMENT '배서승인시작일시',
  `nds_ap_nd_dthms` datetime DEFAULT NULL COMMENT '배서승인종료일시',
  `carno_hngl` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량번호한글',
  `chsno_or_tmpno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차대번호/임시번호',
  `carno_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량번호구분코드',
  `istm_dabrd_trvl_dst` decimal(10,0) DEFAULT NULL COMMENT '가입시계기판주행거리',
  `istm_avg_trvl_dst` decimal(10,0) DEFAULT NULL COMMENT '가입시평균주행거리',
  `istm_dabrd_cnf_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가입시계기판확인여부',
  `xctm_dabrd_trvl_dst` decimal(10,0) DEFAULT NULL COMMENT '정산시계기판주행거리',
  `oper_dst` decimal(7,0) DEFAULT NULL COMMENT '운행거리',
  `istm_img_rgtdt` date DEFAULT NULL COMMENT '가입시이미지등록일자',
  `xctm_img_rgtdt` date DEFAULT NULL COMMENT '정산시이미지등록일자',
  `istm_img_obd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가입시이미지OBD구분코드',
  `xctm_img_obd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정산시이미지OBD구분코드',
  `xc_dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정산처리구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_cr_milxc_oper_info_00` (`plyno`,`plno`,`ap_nddt`,`ap_strdt`,`ndsno`,`vald_nds_yn`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동차마일리지정산운행정보';
