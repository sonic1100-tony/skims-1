--
-- Table structure for table `ins_cmpg_rst`
--

DROP TABLE IF EXISTS `ins_cmpg_rst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cmpg_rst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `vctr_id` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '벡터ID',
  `cell_id` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '셀ID',
  `bj_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '대상ID',
  `extdt` date NOT NULL COMMENT '추출일자',
  `react_dt` date NOT NULL COMMENT '반응일자',
  `react_id` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '반응ID',
  `exc_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '실행기관코드',
  `exc_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '실행직원번호',
  `react_tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '반응전화번호',
  `dlay_days` decimal(2,0) DEFAULT NULL COMMENT '지연일수',
  `react_ad_info` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '반응부가정보',
  `auto_pl_rq_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자동설계요청구분코드',
  `chr_snd_bj_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문자발송대상여부',
  `plno` varchar(17) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설계번호',
  `cmpg_dl_rst_cn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '캠페인처리결과내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_cmpg_rst_00` (`vctr_id`,`cell_id`,`bj_id`,`extdt`,`react_dt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='캠페인결과';
