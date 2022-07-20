--
-- Table structure for table `z_exm_cus_ctm`
--

DROP TABLE IF EXISTS `z_exm_cus_ctm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `z_exm_cus_ctm` (
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객식별번호',
  `hngl_ctmnm` varchar(150) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '한글고객명',
  `eng_ctmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영문고객명',
  `chnc_ctmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '한문고객명',
  `hngl_abrv_ctmnm` varchar(150) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '한글축약고객명',
  `eng_abrv_ctmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영문축약고객명',
  `ctm_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객유형코드',
  `cr_own_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량소유여부',
  `drve_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '운전여부',
  `empct` int(11) DEFAULT NULL COMMENT '종업원수',
  `slamt` decimal(15,0) DEFAULT NULL COMMENT '매출액',
  `capt` decimal(15,0) DEFAULT NULL COMMENT '자본금',
  `rltn_bzwpl_pstdt` date DEFAULT NULL COMMENT '연계사업장소속일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입력사용자id',
  `inp_dthms` datetime DEFAULT NULL COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수정사용자id',
  `mdf_dthms` datetime DEFAULT NULL COMMENT '수정일시',
  PRIMARY KEY (`ctmno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='z_예제_고객';
