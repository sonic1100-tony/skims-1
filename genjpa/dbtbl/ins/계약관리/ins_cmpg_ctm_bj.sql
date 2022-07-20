--
-- Table structure for table `ins_cmpg_ctm_bj`
--

DROP TABLE IF EXISTS `ins_cmpg_ctm_bj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cmpg_ctm_bj` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `vctr_id` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '벡터ID',
  `cell_id` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '셀ID',
  `bj_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '대상ID',
  `extdt` date NOT NULL COMMENT '추출일자',
  `bj_tp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대상유형구분코드',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `ctm_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객주민번호',
  `ctmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객명',
  `ctm_tlno_1` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객전화번호1',
  `cntad_flgcd_1` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연락처구분코드1',
  `ctm_tlno_2` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객전화번호2',
  `cntad_flgcd_2` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연락처구분코드2',
  `ctm_tlno_3` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객전화번호3',
  `cntad_flgcd_3` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연락처구분코드3',
  `cmpg_aldt` date DEFAULT NULL COMMENT '캠페인할당일자',
  `cmpg_cnser_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '캠페인상담원직원번호',
  `exc_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '실행구분코드',
  `exc_tlct` decimal(2,0) DEFAULT NULL COMMENT '실행총횟수',
  `cpldt` date DEFAULT NULL COMMENT '완료일자',
  `cplt_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '완료시간',
  `memo` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '메모',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보종군코드',
  `cro_dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '교차취급직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_cmpg_ctm_bj_00` (`vctr_id`,`cell_id`,`bj_id`,`extdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='캠페인고객대상';
