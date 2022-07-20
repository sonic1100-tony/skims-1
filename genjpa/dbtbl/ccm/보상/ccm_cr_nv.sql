--
-- Table structure for table `ccm_cr_nv`
--

DROP TABLE IF EXISTS `ccm_cr_nv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_cr_nv` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `ch_crr_seq` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '변경이력회차',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `photo_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사진유무',
  `photo_st_good_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사진상태양호여부',
  `prv_damag_par_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기파손부위유무',
  `cnfst_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '확인서유무',
  `prv_damag_dmamt` decimal(15,0) DEFAULT NULL COMMENT '기파손손해금액',
  `et_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_cr_nv_00` (`rcp_yymm`,`rcp_nv_seqno`,`ch_crr_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계약조사';
