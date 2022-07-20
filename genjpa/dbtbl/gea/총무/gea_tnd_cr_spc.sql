--
-- Table structure for table `gea_tnd_cr_spc`
--

DROP TABLE IF EXISTS `gea_tnd_cr_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_tnd_cr_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cr_tndno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '계약입찰번호',
  `spc_seqno` decimal(5,0) NOT NULL COMMENT '내역순번',
  `itmcd` varchar(15) COLLATE utf8mb4_bin NOT NULL COMMENT '품목코드',
  `tnd_cr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '입찰계약구분코드',
  `gdnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '상품명',
  `gd_unprc` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '상품단가',
  `gd_std` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '상품규격',
  `gd_qant` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '상품수량',
  `gdamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '상품금액',
  `rcpr_org_ntty_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '수령예정기관실체구분코드',
  `rc_pr_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '수령예정기관코드',
  `pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편번호',
  `ba_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본주소',
  `dtadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상세주소',
  `usr_cntad` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사용자연락처',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `tnd_itm_unprc` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '입찰품목단가',
  `mdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모델명',
  `prdno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제조번호',
  `prd_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제조회사코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_gea_tnd_cr_spc_00` (`cr_tndno`,`spc_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='입찰계약내역';
