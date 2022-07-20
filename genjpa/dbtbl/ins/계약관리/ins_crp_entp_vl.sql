--
-- Table structure for table `ins_crp_entp_vl`
--

DROP TABLE IF EXISTS `ins_crp_entp_vl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_crp_entp_vl` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `gr_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '단체고객번호',
  `vl_seq` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '평가회차',
  `gr_ctmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '단체고객명',
  `bnnm` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업종명',
  `udwdt` date DEFAULT NULL COMMENT '심사일자',
  `vald_stdt` date DEFAULT NULL COMMENT '유효시기일자',
  `vald_clsdt` date DEFAULT NULL COMMENT '유효종기일자',
  `o1_aregp_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차지역단기관코드',
  `o1_br_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차지점기관코드',
  `o1_dher_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차취급자직원번호',
  `o2_aregp_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차지역단기관코드',
  `o2_br_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차지점기관코드',
  `o2_dher_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차취급자직원번호',
  `o3_aregp_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3차지역단기관코드',
  `o3_br_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3차지점기관코드',
  `o3_dher_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3차취급자직원번호',
  `o4_aregp_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '4차지역단기관코드',
  `o4_br_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '4차지점기관코드',
  `o4_dher_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '4차취급자직원번호',
  `o5_aregp_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '5차지역단기관코드',
  `o5_br_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '5차지점기관코드',
  `o5_dher_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '5차취급자직원번호',
  `bscrl_dmgrt` decimal(7,2) DEFAULT NULL COMMENT '업계손해율',
  `thcp_dmgrt` decimal(7,2) DEFAULT NULL COMMENT '당사손해율',
  `ud_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사결과코드',
  `inp_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입력직원번호',
  `bscrl_clmrt` decimal(7,2) DEFAULT NULL COMMENT '업계사고율',
  `thcp_clmrt` decimal(7,2) DEFAULT NULL COMMENT '당사사고율',
  `onl_gd_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '온라인상품여부',
  `offl_gd_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '오프라인상품여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_crp_entp_vl_00` (`gr_ctmno`,`vl_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='법인업체평가';
