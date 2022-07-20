--
-- Table structure for table `ins_oj_lctn`
--

DROP TABLE IF EXISTS `ins_oj_lctn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_oj_lctn` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `lctcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '소재지코드',
  `prs_objnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대표물건명',
  `dmos_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '국내외구분코드',
  `lctn_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소재지구분코드',
  `sd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시도',
  `sgng` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시군구',
  `twmd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '읍면동',
  `ri_or_lrdlp` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '리/대량배달처',
  `lctn_ri_or_lrdlp` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소재지리/대량배달처',
  `stno_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '번지구분코드',
  `stno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '번지',
  `house_or_not` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '호/노트',
  `dt_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '세부주소',
  `lctn_dt_adr` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소재지세부주소',
  `acm_lctn_gpno` varchar(15) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '누적소재지그룹번호',
  `sps_dong` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상가동',
  `sps_col` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상가열',
  `sps_sico` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상가호수',
  `ntncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '국가코드',
  `eng_ntnnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영문국가명',
  `eng_ctynm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영문도시명',
  `eng_dt_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영문세부주소',
  `ri` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '리',
  `mrkcd_a` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시장코드A',
  `mrkcd_b` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시장코드B',
  `mrkcd_c` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시장코드C',
  `mrkcd_d` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시장코드D',
  `bf_pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전우편번호',
  `road_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '도로명',
  `undg_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지하구분코드',
  `mn_bldno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주건물번호',
  `lctn_mn_bldno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소재지주건물번호',
  `sub_bldno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부건물번호',
  `ref_it` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '참고항목',
  `nw_adr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신규주소구분코드',
  `laco_dong_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법정동구분코드',
  `pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_oj_lctn_00` (`lctcd`)
) ENGINE=InnoDB AUTO_INCREMENT=387 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='목적물소재지';
