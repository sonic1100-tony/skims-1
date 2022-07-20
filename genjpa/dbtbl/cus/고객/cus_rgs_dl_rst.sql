--
-- Table structure for table `cus_rgs_dl_rst`
--

DROP TABLE IF EXISTS `cus_rgs_dl_rst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_rgs_dl_rst` (
  `rgsno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '등기번호',
  `rcpdt` date NOT NULL COMMENT '접수일자',
  `delr_ptof_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배달우체국명',
  `rgs_dlrdt` date DEFAULT NULL COMMENT '등기배달일자',
  `delr_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배달결과코드',
  `delr_rst_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배달결과내용',
  `ndelr_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '미배달사유코드',
  `ndelr_rs` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '미배달사유',
  `rtpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수취인명',
  `rcpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수령인명',
  `relcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관계코드',
  `rel` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관계',
  `ad_dh_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부가취급내용',
  `ten_bzdt` date DEFAULT NULL COMMENT '제10영업일자',
  `ndelr_et_rs` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '미배달기타사유',
  `et_relnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타관계자명',
  `ctm_dsc_spc` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객식별내역',
  `chbf_delr_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경전배달결과코드',
  `chbf_delr_rst_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경전배달결과내용',
  `chaf_delr_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경후배달결과코드',
  `chaf_delr_rst_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경후배달결과내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rgsno`,`rcpdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='등기처리결과';
