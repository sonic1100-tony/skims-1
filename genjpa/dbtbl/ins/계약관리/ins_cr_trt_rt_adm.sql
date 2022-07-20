--
-- Table structure for table `ins_cr_trt_rt_adm`
--

DROP TABLE IF EXISTS `ins_cr_trt_rt_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_trt_rt_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_strdt` date NOT NULL COMMENT '기준시작일자',
  `st_nddt` date NOT NULL COMMENT '기준종료일자',
  `trtcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '특약코드',
  `rgt_seqno` decimal(3,0) NOT NULL COMMENT '등록순번',
  `vald_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '유효여부',
  `isamt_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가입금액코드',
  `age_lmit_trtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연령한정특약코드',
  `drv_lmit_trtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '운전자한정특약코드',
  `sl_chncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '판매채널코드',
  `ins_itm_smccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목소분류코드',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `gn_co_obj_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일반공동물건구분코드',
  `psn_crp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개인법인구분코드',
  `crp_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법인유형코드',
  `catcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차종코드',
  `trt_ap_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특약적용담보코드',
  `cvr_kornm` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보한글명',
  `cvr_xpnm` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보설명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_cr_trt_rt_adm_00` (`st_strdt`,`st_nddt`,`trtcd`,`rgt_seqno`,`vald_yn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동차특약요율관리';
