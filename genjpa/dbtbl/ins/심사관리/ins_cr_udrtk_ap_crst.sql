--
-- Table structure for table `ins_cr_udrtk_ap_crst`
--

DROP TABLE IF EXISTS `ins_cr_udrtk_ap_crst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_udrtk_ap_crst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `hdqt_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '본부기관코드',
  `aregp_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '지역단기관코드',
  `br_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '지점기관코드',
  `gn_co_obj_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '일반공동물건구분코드',
  `nw_nds_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '신규배서구분코드',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '담당자직원번호',
  `rq_gn_ct` decimal(15,0) DEFAULT NULL COMMENT '요청일반건수',
  `rq_co_udct` decimal(15,0) DEFAULT NULL COMMENT '요청공동인수건수',
  `rst_gn_ap_ct` decimal(15,0) DEFAULT NULL COMMENT '결과일반승인건수',
  `rst_co_ap_ct` decimal(15,0) DEFAULT NULL COMMENT '결과공동승인건수',
  `rst_udrtk_phbt_ct` decimal(15,0) DEFAULT NULL COMMENT '결과인수금지건수',
  `rst_cndl_ap_ct` decimal(15,0) DEFAULT NULL COMMENT '결과조건부승인건수',
  `rst_reex_ct` decimal(15,0) DEFAULT NULL COMMENT '결과재검토건수',
  `nd_hms_avg_ct` decimal(15,0) DEFAULT NULL COMMENT '소요시간평균건수',
  `nd_hms_10_min_wthin_ct` decimal(15,0) DEFAULT NULL COMMENT '소요시간10분이내건수',
  `nd_hms_20_min_wthin_ct` decimal(15,0) DEFAULT NULL COMMENT '소요시간20분이내건수',
  `nd_hms_20_min_spls_ct` decimal(15,0) DEFAULT NULL COMMENT '소요시간20분초과건수',
  `insst_gn_apct` decimal(15,0) DEFAULT NULL COMMENT '보험시기일반승인건수',
  `insst_co_apct` decimal(15,0) DEFAULT NULL COMMENT '보험시기공동승인건수',
  `insst_cndl_apct` decimal(15,0) DEFAULT NULL COMMENT '보험시기조건부승인건수',
  `gn_ap_cc_ct` decimal(15,0) DEFAULT NULL COMMENT '일반승인체결건수',
  `co_ap_cc_ct` decimal(15,0) DEFAULT NULL COMMENT '공동승인체결건수',
  `cndl_ap_cc_ct` decimal(15,0) DEFAULT NULL COMMENT '조건부승인체결건수',
  `tot_cr_cc_ct` decimal(15,0) DEFAULT NULL COMMENT '전체계약체결건수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_cr_udrtk_ap_crst_00` (`st_yymm`,`hdqt_orgcd`,`aregp_orgcd`,`br_orgcd`,`gn_co_obj_flgcd`,`nw_nds_flgcd`,`chrps_stfno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동차인수승인현황';
