--
-- Table structure for table `fin_condt_pend_adm`
--

DROP TABLE IF EXISTS `fin_condt_pend_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_condt_pend_adm` (
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `condt_da_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '공동인수자료구분코드',
  `condt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '공동인수구분코드',
  `rlt_inscd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상대보험사코드',
  `uc_np_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '미수미지급구분코드',
  `condt_av_dt` date NOT NULL COMMENT '공동인수실적일자',
  `ikdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종코드',
  `condt_woamt` decimal(15,0) NOT NULL COMMENT '공동인수원화금액',
  `otcm_plyno` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '타사증권번호',
  `otcm_clm_rcpno` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '타사사고접수번호',
  `crt_cd` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자코드',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `clmno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고번호',
  `bzmno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업자번호',
  `ar_pl_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정리계획내용',
  `adx_dcunm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부문서명',
  `crrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cls_yymm`,`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='공동인수미결관리';
