--
-- Table structure for table `gd_rt_ky`
--

DROP TABLE IF EXISTS `gd_rt_ky`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gd_rt_ky` (
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `crr_seqno` decimal(5,0) NOT NULL COMMENT '이력순번',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `rt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '요율구분코드',
  `rt_ky_1` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요율키1',
  `rt_ky_2` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요율키2',
  `rt_ky_3` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요율키3',
  `rt_ky_4` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요율키4',
  `rt_ky_5` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요율키5',
  `rt_ky_6` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요율키6',
  `rt_ky_7` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요율키7',
  `rt_ky_8` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요율키8',
  `optr_1` varchar(3) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연산자1',
  `optr_2` varchar(3) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연산자2',
  `optr_3` varchar(3) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연산자3',
  `optr_4` varchar(3) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연산자4',
  `optr_5` varchar(3) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연산자5',
  `optr_6` varchar(3) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연산자6',
  `optr_7` varchar(3) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연산자7',
  `optr_8` varchar(3) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연산자8',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`gdcd`,`crr_seqno`,`cvrcd`,`rt_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상품요율키';
