--
-- Table structure for table `fin_mbsh_crd_is_rq`
--

DROP TABLE IF EXISTS `fin_mbsh_crd_is_rq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_mbsh_crd_is_rq` (
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `mbrs_crd_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '멤버스카드일련번호',
  `pnt_ctmno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '포인트고객번호',
  `nrdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자명',
  `carno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량번호',
  `ins_strdt` date NOT NULL COMMENT '보험시작일자',
  `ins_nddt` date NOT NULL COMMENT '보험종료일자',
  `cn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해지여부',
  `mbrs_crd_is_dl_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '멤버스카드발급처리상태코드',
  `rgtdt` date DEFAULT NULL COMMENT '등록일자',
  `mbrs_crd_sndpl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '멤버스카드발송지구분코드',
  `adr_ch_seq` decimal(10,0) DEFAULT NULL COMMENT '주소변경회차',
  `br_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '지점기관코드',
  `offc_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '점포기관코드',
  `dher_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '취급자직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`plyno`,`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='멤버십카드발급요청';
