--
-- Table structure for table `ins_snstn_ldgr_dt_inq`
--

DROP TABLE IF EXISTS `ins_snstn_ldgr_dt_inq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_snstn_ldgr_dt_inq` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `tlm_seqno` varchar(14) COLLATE utf8mb4_bin NOT NULL COMMENT '전문순번',
  `rgbd_admno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '건축물대장관리번호',
  `snstn_lintn_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '건축물대장구분코드',
  `snstn_lintn_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '건축물대장종류코드',
  `ba_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본주소',
  `sd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시도',
  `sgng` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시군구',
  `twmd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '읍면동',
  `ri_or_lrdlp` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '리/대량배달처',
  `stno_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '번지구분코드',
  `stno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '번지',
  `house_or_not` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '호/노트',
  `dt_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '세부주소',
  `acm_lctn_gpno` varchar(15) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '누적소재지그룹번호',
  `ri` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '리',
  `sps_dong` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상가동',
  `sps_col` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상가열',
  `sps_sico` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상가호수',
  `pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편번호',
  `objnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '물건명',
  `adr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주소구분코드',
  `road_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '도로명',
  `bld_mn_bldno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '건물주건물번호',
  `bld_sub_bldno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '건물부건물번호',
  `undg_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지하구분코드',
  `ref_it` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '참고항목',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_snstn_ldgr_dt_inq_00` (`tlm_seqno`,`rgbd_admno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='건축물대장상세조회';
