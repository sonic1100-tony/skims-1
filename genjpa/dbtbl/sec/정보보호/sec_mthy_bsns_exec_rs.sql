--
-- Table structure for table `sec_mthy_bsns_exec_rs`
--

DROP TABLE IF EXISTS `sec_mthy_bsns_exec_rs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_mthy_bsns_exec_rs` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `rs_rgt_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사유등록상태코드',
  `nhgst_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차상위기관코드',
  `ppr_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상위기관코드',
  `crnt_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '현재기관코드',
  `admr_vrf_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리자검증여부',
  `admr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리자직원번호',
  `admr_vrf_dt` date DEFAULT NULL COMMENT '관리자검증일자',
  `ctl_dep_vrf_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통제부서검증여부',
  `ctl_dep_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통제부서직원번호',
  `ctl_dep_vrf_dt` date DEFAULT NULL COMMENT '통제부서검증일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_sec_mthy_bsns_exec_rs_00` (`st_yymm`,`stfno`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='월별업무수행사유';
