--
-- Table structure for table `ins_hpcar_srv_adm`
--

DROP TABLE IF EXISTS `ins_hpcar_srv_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_hpcar_srv_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `hpcar_srv_inp_dthms` datetime NOT NULL COMMENT '해피카서비스입력일시',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `srv_dt` date DEFAULT NULL COMMENT '서비스일자',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `chsno_or_tmpno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차대번호/임시번호',
  `nrdps_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자식별번호',
  `nrdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자명',
  `carno_hngl` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량번호한글',
  `srv_inp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '서비스입력구분코드',
  `emeg_mvo_srv_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '긴급출동서비스구분코드',
  `dl_emgmv_srvcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리긴급출동서비스코드',
  `xcdt` date DEFAULT NULL COMMENT '정산일자',
  `dmd_tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청자전화지역번호',
  `dmd_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청자전화국번',
  `dmd_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청자전화일련번호',
  `dmd_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청자성명',
  `emeg_mvo_rcpno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '긴급출동접수번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_hpcar_srv_adm_00` (`hpcar_srv_inp_dthms`,`sno`),
  KEY `idx_ins_hpcar_srv_adm_10` (`plyno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='해피카서비스관리';
