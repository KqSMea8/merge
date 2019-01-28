.class public Lc8/Irf;
.super Ljava/lang/Object;
.source "EvaluateScore.java"


# instance fields
.field mBrandScore:I

.field mCpuHzScore:I

.field mGpuScore:I

.field mNoDeviceSystemScore:I

.field mTotalGcCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lc8/Irf;->mCpuHzScore:I

    return-void
.end method


# virtual methods
.method public evaluateActivityScore(Lc8/msf;Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;)I
    .locals 46
    .param p1, "onLineMonitor"    # Lc8/msf;
    .param p2, "info"    # Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    .prologue
    .line 574
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityVisibleViewCount:I

    move/from16 v41, v0

    if-eqz v41, :cond_0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->loadTime:I

    move/from16 v41, v0

    if-eqz v41, :cond_0

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->maxLayoutDepth:S

    move/from16 v41, v0

    if-nez v41, :cond_2

    .line 576
    :cond_0
    const/16 v31, 0x0

    .line 827
    :cond_1
    :goto_0
    return v31

    .line 578
    :cond_2
    const/16 v21, 0x1

    .line 580
    .local v21, "loadScore":I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityViewCount:I

    move/from16 v41, v0

    add-int/lit8 v41, v41, -0x14

    div-int/lit8 v41, v41, 0x32

    rsub-int/lit8 v38, v41, 0xa

    .line 581
    .local v38, "viewCountScore":I
    if-gez v38, :cond_3

    .line 582
    const/16 v38, 0x0

    .line 584
    :cond_3
    move-object/from16 v0, p1

    iget-short v0, v0, Lc8/msf;->mDevicesScore:S

    move/from16 v41, v0

    rsub-int/lit8 v12, v41, 0x64

    .line 585
    .local v12, "deviceScoreRemedy":I
    move-object/from16 v0, p1

    iget-short v0, v0, Lc8/msf;->mAvgSystemRunningScore:S

    move/from16 v41, v0

    rsub-int/lit8 v34, v41, 0x64

    .line 586
    .local v34, "sysScoreRemedy":I
    mul-int/lit8 v41, v12, 0xa

    move/from16 v0, v41

    add-int/lit16 v0, v0, 0x12c

    move/from16 v41, v0

    mul-int/lit8 v42, v34, 0xa

    add-int v9, v41, v42

    .line 587
    .local v9, "baseLoadTime":I
    mul-int/lit8 v41, v12, 0xa

    move/from16 v0, v41

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v41, v0

    mul-int/lit8 v42, v34, 0xa

    add-int v8, v41, v42

    .line 589
    .local v8, "baseIdleTime":I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->loadTime:I

    move/from16 v41, v0

    if-lez v41, :cond_12

    .line 590
    if-gtz v9, :cond_4

    .line 591
    const/16 v9, 0x12c

    .line 593
    :cond_4
    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->loadTime:I

    move/from16 v41, v0

    div-int v41, v41, v9

    rsub-int/lit8 v21, v41, 0xa

    .line 594
    if-gez v21, :cond_5

    .line 595
    const/16 v21, 0x0

    .line 611
    :cond_5
    :goto_1
    const/4 v15, 0x4

    .line 612
    .local v15, "idleScore":I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->idleTime:I

    move/from16 v41, v0

    if-lez v41, :cond_18

    .line 613
    if-gtz v8, :cond_6

    .line 614
    const/16 v8, 0x3e8

    .line 616
    :cond_6
    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->idleTime:I

    move/from16 v41, v0

    div-int v41, v41, v8

    rsub-int/lit8 v15, v41, 0xa

    .line 617
    if-gez v15, :cond_7

    .line 618
    const/4 v15, 0x0

    .line 635
    :cond_7
    :goto_2
    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->maxIdleDelayTime:S

    move/from16 v41, v0

    div-int/lit8 v41, v41, 0x32

    rsub-int/lit8 v14, v41, 0xa

    .line 636
    .local v14, "idleMaxDelayScore":I
    if-gez v14, :cond_8

    .line 637
    const/4 v14, 0x0

    .line 641
    :cond_8
    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->maxLayoutDepth:S

    move/from16 v41, v0

    add-int/lit8 v41, v41, -0x9

    rsub-int/lit8 v19, v41, 0xa

    .line 642
    .local v19, "layoutDepthScore":I
    const/16 v41, 0xa

    move/from16 v0, v19

    move/from16 v1, v41

    if-ge v0, v1, :cond_9

    .line 643
    const/16 v19, 0x0

    .line 647
    :cond_9
    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityVisibleViewCount:I

    move/from16 v41, v0

    div-int/lit8 v41, v41, 0x64

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->layoutTimesOnLoad:S

    move/from16 v42, v0

    sub-int v2, v41, v42

    .line 648
    .local v2, "allowTimes":I
    if-gez v2, :cond_a

    .line 649
    const/4 v2, 0x0

    .line 651
    :cond_a
    rsub-int/lit8 v20, v2, 0xa

    .line 652
    .local v20, "layoutTimesScore":I
    const/16 v41, 0xa

    move/from16 v0, v20

    move/from16 v1, v41

    if-ge v0, v1, :cond_b

    .line 653
    const/16 v20, 0x0

    .line 658
    :cond_b
    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->totalLayoutCount:S

    move/from16 v41, v0

    div-int/lit8 v41, v41, 0x6

    rsub-int/lit8 v37, v41, 0xa

    .line 659
    .local v37, "totalLayoutCountScore":I
    const/16 v41, 0xa

    move/from16 v0, v37

    move/from16 v1, v41

    if-ge v0, v1, :cond_c

    .line 660
    const/16 v37, 0x0

    .line 664
    :cond_c
    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->redundantLayout:S

    move/from16 v41, v0

    div-int/lit8 v41, v41, 0x5

    rsub-int/lit8 v30, v41, 0xa

    .line 665
    .local v30, "redundantLayoutScore":I
    if-gez v30, :cond_d

    .line 666
    const/16 v30, 0x0

    .line 671
    :cond_d
    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->maxRelativeLayoutDepth:S

    move/from16 v41, v0

    shl-int/lit8 v41, v41, 0x1

    rsub-int/lit8 v23, v41, 0xa

    .line 672
    .local v23, "maxRelativeLayoutDepthScore":I
    if-gez v23, :cond_e

    .line 673
    const/16 v23, 0x0

    .line 677
    :cond_e
    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memEnd:S

    move/from16 v41, v0

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memStart:S

    move/from16 v42, v0

    sub-int v26, v41, v42

    .line 678
    .local v26, "memInterval":I
    div-int/lit8 v41, v26, 0x2

    rsub-int/lit8 v28, v41, 0xa

    .line 679
    .local v28, "memScore":I
    if-gez v28, :cond_f

    .line 680
    const/16 v28, 0x0

    .line 684
    :cond_f
    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memMax:S

    move/from16 v41, v0

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memStart:S

    move/from16 v42, v0

    sub-int v26, v41, v42

    .line 685
    div-int/lit8 v41, v26, 0x4

    rsub-int/lit8 v27, v41, 0xa

    .line 686
    .local v27, "memMaxScore":I
    if-gez v27, :cond_10

    .line 687
    const/16 v27, 0x0

    .line 692
    :cond_10
    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->threadInterval:I

    move/from16 v41, v0

    rsub-int/lit8 v36, v41, 0xa

    .line 693
    .local v36, "threadScore":I
    if-gez v36, :cond_11

    .line 694
    const/16 v36, 0x0

    .line 698
    :cond_11
    const/4 v6, 0x0

    .line 699
    .local v6, "badSmScore":I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->dragFlingCount:I

    move/from16 v41, v0

    if-lez v41, :cond_1f

    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->avgSm:I

    move/from16 v41, v0

    if-lez v41, :cond_1f

    .line 704
    const v7, 0x3d4ccccd    # 0.05f

    .local v7, "base":F
    const/4 v10, 0x0

    .line 705
    .local v10, "count":F
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityBadSmoothStepCount:[I

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v41, v0

    move/from16 v0, v41

    if-ge v13, v0, :cond_1e

    .line 706
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityBadSmoothStepCount:[I

    move-object/from16 v41, v0

    aget v41, v41, v13

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    mul-float v35, v41, v7

    .line 707
    .local v35, "temp":F
    add-float v10, v10, v35

    .line 708
    const v41, 0x3d4ccccd    # 0.05f

    add-float v7, v7, v41

    .line 705
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 597
    .end local v2    # "allowTimes":I
    .end local v6    # "badSmScore":I
    .end local v7    # "base":F
    .end local v10    # "count":F
    .end local v13    # "i":I
    .end local v14    # "idleMaxDelayScore":I
    .end local v15    # "idleScore":I
    .end local v19    # "layoutDepthScore":I
    .end local v20    # "layoutTimesScore":I
    .end local v23    # "maxRelativeLayoutDepthScore":I
    .end local v26    # "memInterval":I
    .end local v27    # "memMaxScore":I
    .end local v28    # "memScore":I
    .end local v30    # "redundantLayoutScore":I
    .end local v35    # "temp":F
    .end local v36    # "threadScore":I
    .end local v37    # "totalLayoutCountScore":I
    :cond_12
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->stayTime:J

    move-wide/from16 v42, v0

    mul-int/lit8 v41, v9, 0x5

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v44, v0

    cmp-long v41, v42, v44

    if-ltz v41, :cond_13

    .line 598
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 599
    :cond_13
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->stayTime:J

    move-wide/from16 v42, v0

    shl-int/lit8 v41, v9, 0x2

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v44, v0

    cmp-long v41, v42, v44

    if-ltz v41, :cond_14

    .line 600
    const/16 v21, 0x2

    goto/16 :goto_1

    .line 601
    :cond_14
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->stayTime:J

    move-wide/from16 v42, v0

    mul-int/lit8 v41, v9, 0x3

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v44, v0

    cmp-long v41, v42, v44

    if-ltz v41, :cond_15

    .line 602
    const/16 v21, 0x4

    goto/16 :goto_1

    .line 603
    :cond_15
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->stayTime:J

    move-wide/from16 v42, v0

    shl-int/lit8 v41, v9, 0x1

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v44, v0

    cmp-long v41, v42, v44

    if-ltz v41, :cond_16

    .line 604
    const/16 v21, 0x6

    goto/16 :goto_1

    .line 605
    :cond_16
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->stayTime:J

    move-wide/from16 v42, v0

    int-to-long v0, v9

    move-wide/from16 v44, v0

    cmp-long v41, v42, v44

    if-ltz v41, :cond_17

    .line 606
    const/16 v21, 0x8

    goto/16 :goto_1

    .line 607
    :cond_17
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->stayTime:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x3e8

    cmp-long v41, v42, v44

    if-ltz v41, :cond_5

    .line 608
    const/16 v21, 0xa

    goto/16 :goto_1

    .line 620
    .restart local v15    # "idleScore":I
    :cond_18
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->stayTime:J

    move-wide/from16 v42, v0

    mul-int/lit8 v41, v8, 0x5

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v44, v0

    cmp-long v41, v42, v44

    if-ltz v41, :cond_19

    .line 621
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 622
    :cond_19
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->stayTime:J

    move-wide/from16 v42, v0

    shl-int/lit8 v41, v8, 0x2

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v44, v0

    cmp-long v41, v42, v44

    if-ltz v41, :cond_1a

    .line 623
    const/4 v15, 0x2

    goto/16 :goto_2

    .line 624
    :cond_1a
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->stayTime:J

    move-wide/from16 v42, v0

    mul-int/lit8 v41, v8, 0x3

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v44, v0

    cmp-long v41, v42, v44

    if-ltz v41, :cond_1b

    .line 625
    const/4 v15, 0x4

    goto/16 :goto_2

    .line 626
    :cond_1b
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->stayTime:J

    move-wide/from16 v42, v0

    shl-int/lit8 v41, v8, 0x1

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v44, v0

    cmp-long v41, v42, v44

    if-ltz v41, :cond_1c

    .line 627
    const/4 v15, 0x6

    goto/16 :goto_2

    .line 628
    :cond_1c
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->stayTime:J

    move-wide/from16 v42, v0

    int-to-long v0, v8

    move-wide/from16 v44, v0

    cmp-long v41, v42, v44

    if-ltz v41, :cond_1d

    .line 629
    const/16 v15, 0x8

    goto/16 :goto_2

    .line 630
    :cond_1d
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->stayTime:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x3e8

    cmp-long v41, v42, v44

    if-ltz v41, :cond_7

    .line 631
    const/16 v15, 0xa

    goto/16 :goto_2

    .line 710
    .restart local v2    # "allowTimes":I
    .restart local v6    # "badSmScore":I
    .restart local v7    # "base":F
    .restart local v10    # "count":F
    .restart local v13    # "i":I
    .restart local v14    # "idleMaxDelayScore":I
    .restart local v19    # "layoutDepthScore":I
    .restart local v20    # "layoutTimesScore":I
    .restart local v23    # "maxRelativeLayoutDepthScore":I
    .restart local v26    # "memInterval":I
    .restart local v27    # "memMaxScore":I
    .restart local v28    # "memScore":I
    .restart local v30    # "redundantLayoutScore":I
    .restart local v36    # "threadScore":I
    .restart local v37    # "totalLayoutCountScore":I
    :cond_1e
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v41

    rsub-int/lit8 v6, v41, 0xa

    .line 711
    if-gez v6, :cond_1f

    .line 712
    const/4 v6, 0x0

    .line 716
    .end local v7    # "base":F
    .end local v10    # "count":F
    .end local v13    # "i":I
    :cond_1f
    const/16 v25, 0x1

    .line 717
    .local v25, "measureTimesScore":I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityVisibleViewCount:I

    move/from16 v41, v0

    if-lez v41, :cond_21

    .line 718
    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->measureTimes:S

    move/from16 v41, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityVisibleViewCount:I

    move/from16 v42, v0

    div-int v41, v41, v42

    add-int/lit8 v41, v41, -0x1

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v24, v0

    .line 720
    .local v24, "measureRate":F
    const/16 v41, 0x0

    cmpg-float v41, v24, v41

    if-gez v41, :cond_20

    .line 721
    const/16 v24, 0x0

    .line 723
    :cond_20
    const/high16 v41, 0x40400000    # 3.0f

    mul-float v41, v41, v24

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->round(F)I

    move-result v41

    rsub-int/lit8 v25, v41, 0xa

    .line 724
    if-gez v25, :cond_21

    .line 725
    const/16 v25, 0x0

    .line 729
    .end local v24    # "measureRate":F
    :cond_21
    const/4 v5, 0x3

    .line 730
    .local v5, "badLayoutTimesScore":I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->dragFlingCount:I

    move/from16 v41, v0

    if-lez v41, :cond_23

    .line 731
    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityTotalSmLayoutTimes:I

    move/from16 v41, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->dragFlingCount:I

    move/from16 v42, v0

    div-int v41, v41, v42

    add-int/lit8 v41, v41, -0x1

    move/from16 v0, v41

    int-to-float v4, v0

    .line 732
    .local v4, "badLayoutRate":F
    const/16 v41, 0x0

    cmpg-float v41, v4, v41

    if-gez v41, :cond_22

    .line 733
    const/4 v4, 0x0

    .line 735
    :cond_22
    const/high16 v41, 0x40400000    # 3.0f

    mul-float v41, v41, v4

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->round(F)I

    move-result v41

    rsub-int/lit8 v25, v41, 0xa

    .line 736
    if-gez v25, :cond_23

    .line 737
    const/16 v25, 0x0

    .line 744
    .end local v4    # "badLayoutRate":F
    :cond_23
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lc8/msf;->mFileSchedIsNotExists:Z

    move/from16 v41, v0

    if-nez v41, :cond_2d

    .line 745
    move-object/from16 v0, p1

    iget v0, v0, Lc8/msf;->mPidPerCpuLoad:F

    move/from16 v41, v0

    move-object/from16 v0, p1

    iget-short v0, v0, Lc8/msf;->mCpuProcessCount:S

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v3, v41, v42

    .line 746
    .local v3, "avgPerCpu":F
    const/16 v41, 0x0

    cmpg-float v41, v3, v41

    if-gez v41, :cond_24

    .line 747
    const/4 v3, 0x0

    .line 749
    :cond_24
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v41

    rsub-int/lit8 v33, v41, 0xa

    .line 750
    .local v33, "sysLoadavgScore":I
    if-gez v33, :cond_25

    .line 751
    const/16 v33, 0x0

    .line 754
    :cond_25
    move-object/from16 v0, p1

    iget v0, v0, Lc8/msf;->mPidIoWaitCountOld:I

    move/from16 v41, v0

    move-object/from16 v0, p1

    iget v0, v0, Lc8/msf;->mPidIoWaitCount:I

    move/from16 v42, v0

    sub-int v39, v41, v42

    .line 755
    .local v39, "waitcount":I
    move-object/from16 v0, p1

    iget v0, v0, Lc8/msf;->mPidIoWaitSum:I

    move/from16 v41, v0

    move-object/from16 v0, p1

    iget v0, v0, Lc8/msf;->mPidIoWaitSumOld:I

    move/from16 v42, v0

    sub-int v40, v41, v42

    .line 756
    .local v40, "waittime":I
    div-int/lit8 v41, v39, 0xa

    rsub-int/lit8 v16, v41, 0xa

    .line 757
    .local v16, "ioScore":I
    if-gez v16, :cond_26

    .line 758
    const/16 v16, 0x0

    .line 760
    :cond_26
    div-int/lit8 v41, v40, 0x64

    rsub-int/lit8 v17, v41, 0xa

    .line 761
    .local v17, "ioTimeScore":I
    if-gez v17, :cond_27

    .line 762
    const/16 v17, 0x0

    .line 764
    :cond_27
    add-int v41, v16, v17

    div-int/lit8 v16, v41, 0x2

    .line 782
    .end local v3    # "avgPerCpu":F
    .end local v17    # "ioTimeScore":I
    .end local v39    # "waitcount":I
    .end local v40    # "waittime":I
    :cond_28
    :goto_4
    move-object/from16 v0, p1

    iget v0, v0, Lc8/msf;->mMyPidCPUPercent:I

    move/from16 v41, v0

    div-int/lit8 v41, v41, 0xa

    rsub-int/lit8 v11, v41, 0xa

    .line 783
    .local v11, "cpuPercentScore":I
    if-gez v11, :cond_29

    .line 784
    const/4 v11, 0x0

    .line 788
    :cond_29
    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->smoothViewOutRevLayoutDepth:I

    move/from16 v41, v0

    mul-int/lit8 v41, v41, 0x3

    rsub-int/lit8 v29, v41, 0xa

    .line 789
    .local v29, "outReLayoutDepthScore":I
    if-gez v29, :cond_2a

    .line 790
    const/16 v29, 0x0

    .line 794
    :cond_2a
    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v41, v0

    const v42, 0x3e99999a    # 0.3f

    mul-float v41, v41, v42

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v42, v0

    const v43, 0x3e99999a    # 0.3f

    mul-float v42, v42, v43

    add-float v41, v41, v42

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v42, v0

    const v43, 0x3ecccccd    # 0.4f

    mul-float v42, v42, v43

    add-float v41, v41, v42

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v42, v0

    const/high16 v43, 0x3f000000    # 0.5f

    mul-float v42, v42, v43

    add-float v41, v41, v42

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v42, v0

    const/high16 v43, 0x3f000000    # 0.5f

    mul-float v42, v42, v43

    add-float v41, v41, v42

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v42, v0

    const v43, 0x3f19999a    # 0.6f

    mul-float v42, v42, v43

    add-float v41, v41, v42

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v42, v0

    const v43, 0x3ecccccd    # 0.4f

    mul-float v42, v42, v43

    add-float v41, v41, v42

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v42, v0

    const/high16 v43, 0x3f000000    # 0.5f

    mul-float v42, v42, v43

    add-float v41, v41, v42

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v42, v0

    const/high16 v43, 0x3f000000    # 0.5f

    mul-float v42, v42, v43

    add-float v41, v41, v42

    int-to-float v0, v11

    move/from16 v42, v0

    const/high16 v43, 0x3f000000    # 0.5f

    mul-float v42, v42, v43

    add-float v41, v41, v42

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v42, v0

    const/high16 v43, 0x3f000000    # 0.5f

    mul-float v42, v42, v43

    add-float v41, v41, v42

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v42, v0

    const/high16 v43, 0x3f000000    # 0.5f

    mul-float v42, v42, v43

    add-float v41, v41, v42

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v42, v0

    const/high16 v43, 0x3f000000    # 0.5f

    mul-float v42, v42, v43

    add-float v32, v41, v42

    .line 800
    .local v32, "scoref":F
    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->dragFlingCount:I

    move/from16 v41, v0

    if-lez v41, :cond_2f

    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->avgSm:I

    move/from16 v41, v0

    if-lez v41, :cond_2f

    .line 802
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v41, v0

    add-float v41, v41, v32

    int-to-float v0, v15

    move/from16 v42, v0

    const/high16 v43, 0x3f000000    # 0.5f

    mul-float v42, v42, v43

    add-float v41, v41, v42

    int-to-float v0, v14

    move/from16 v42, v0

    const/high16 v43, 0x3f000000    # 0.5f

    mul-float v42, v42, v43

    add-float v41, v41, v42

    int-to-float v0, v5

    move/from16 v42, v0

    const/high16 v43, 0x3f000000    # 0.5f

    mul-float v42, v42, v43

    add-float v41, v41, v42

    int-to-float v0, v6

    move/from16 v42, v0

    const/high16 v43, 0x3f000000    # 0.5f

    mul-float v42, v42, v43

    add-float v41, v41, v42

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v42, v0

    add-float v32, v41, v42

    .line 807
    :goto_5
    invoke-static/range {v32 .. v32}, Ljava/lang/Math;->round(F)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v32, v0

    .line 809
    sget-boolean v41, Lc8/msf;->sIsDetailDebug:Z

    if-eqz v41, :cond_2b

    .line 810
    const-string/jumbo v41, "OnLineMonitor"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "\u754c\u9762\u5206\u521d\u59cb="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :cond_2b
    int-to-float v0, v12

    move/from16 v41, v0

    const v42, 0x3e19999a    # 0.15f

    mul-float v41, v41, v42

    add-float v41, v41, v32

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v42, v0

    const v43, 0x3e19999a    # 0.15f

    mul-float v42, v42, v43

    add-float v32, v41, v42

    .line 814
    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v31, v0

    .line 815
    .local v31, "score":I
    const/16 v41, 0x64

    move/from16 v0, v31

    move/from16 v1, v41

    if-le v0, v1, :cond_2c

    .line 816
    const/16 v31, 0x64

    .line 818
    :cond_2c
    sget-boolean v41, Lc8/msf;->sIsDetailDebug:Z

    if-eqz v41, :cond_1

    .line 819
    const-string/jumbo v41, "OnLineMonitor"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "\u754c\u9762\u5206="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, ", loadScore="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, ", idleScore="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, ",idleMaxDelayScore="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, ",badLayoutTimesScore="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, ",badSmScore="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, ",ioScore="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, ",viewCountScore="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, ",redundantLayoutScore="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, ",outReLayoutDepthScore="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, ",layoutTimesScore="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, ",totalLayoutCountScore="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, ",maxRelativeLayoutDepthScore="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, ",layoutDepthScore="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, ",layoutDepthScore="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, ",measureTimesScore="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, ",threadScore="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, ",cpuPercentScore="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, ",sysLoadavgScore="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, ",memScore="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, ",memMaxScore="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 766
    .end local v11    # "cpuPercentScore":I
    .end local v16    # "ioScore":I
    .end local v29    # "outReLayoutDepthScore":I
    .end local v31    # "score":I
    .end local v32    # "scoref":F
    .end local v33    # "sysLoadavgScore":I
    :cond_2d
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mRelIoWaitTime:I

    move/from16 v18, v0

    .line 767
    .local v18, "ioWait":I
    div-int/lit8 v41, v18, 0x14

    rsub-int/lit8 v16, v41, 0xa

    .line 769
    .restart local v16    # "ioScore":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/msf;->mSystemLoadAvg:[F

    move-object/from16 v41, v0

    const/16 v42, 0x0

    aget v41, v41, v42

    move-object/from16 v0, p1

    iget-short v0, v0, Lc8/msf;->mCpuProcessCount:S

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v22, v41, v42

    .line 770
    .local v22, "loadavg":F
    const/16 v41, 0x0

    cmpg-float v41, v22, v41

    if-gez v41, :cond_2e

    .line 771
    const/16 v22, 0x0

    .line 773
    :cond_2e
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v41

    rsub-int/lit8 v33, v41, 0xa

    .line 774
    .restart local v33    # "sysLoadavgScore":I
    if-gez v33, :cond_28

    .line 775
    const/16 v33, 0x0

    goto/16 :goto_4

    .line 805
    .end local v18    # "ioWait":I
    .end local v22    # "loadavg":F
    .restart local v11    # "cpuPercentScore":I
    .restart local v29    # "outReLayoutDepthScore":I
    .restart local v32    # "scoref":F
    :cond_2f
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v41, v0

    const v42, 0x3fa66666    # 1.3f

    mul-float v41, v41, v42

    add-float v41, v41, v32

    int-to-float v0, v15

    move/from16 v42, v0

    add-float v41, v41, v42

    int-to-float v0, v14

    move/from16 v42, v0

    const/high16 v43, 0x3f000000    # 0.5f

    mul-float v42, v42, v43

    add-float v41, v41, v42

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v42, v0

    const v43, 0x3f99999a    # 1.2f

    mul-float v42, v42, v43

    add-float v32, v41, v42

    goto/16 :goto_5
.end method

.method public evaluateDeviceScore(Lc8/msf;Lc8/Lrf;)I
    .locals 26
    .param p1, "onLineMonitor"    # Lc8/msf;
    .param p2, "info"    # Lc8/Lrf;

    .prologue
    .line 353
    if-nez p1, :cond_1

    .line 354
    const/4 v14, 0x0

    .line 487
    :cond_0
    :goto_0
    return v14

    .line 356
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lc8/Lrf;->getBrandScore()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Irf;->mBrandScore:I

    .line 357
    invoke-virtual/range {p2 .. p2}, Lc8/Lrf;->getCpuCountScore()I

    move-result v3

    .line 358
    .local v3, "cpuCountScore":I
    invoke-virtual/range {p2 .. p2}, Lc8/Lrf;->getCpuModleCore()I

    move-result v6

    .line 360
    .local v6, "cpuModleScore":I
    const/4 v2, 0x2

    .line 361
    .local v2, "apiScore":I
    sget v19, Lc8/msf;->sApiLevel:I

    const/16 v22, 0x17

    move/from16 v0, v19

    move/from16 v1, v22

    if-le v0, v1, :cond_c

    .line 363
    const/16 v2, 0xa

    .line 384
    :cond_2
    :goto_1
    const/4 v10, 0x1

    .line 385
    .local v10, "memScore":I
    move-object/from16 v0, p1

    iget-wide v0, v0, Lc8/msf;->mDeviceTotalMemory:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x1800

    cmp-long v19, v22, v24

    if-ltz v19, :cond_12

    .line 386
    const/16 v10, 0xa

    .line 400
    :cond_3
    :goto_2
    invoke-virtual/range {p0 .. p1}, Lc8/Irf;->getCpuHzScore(Lc8/msf;)V

    .line 401
    invoke-virtual/range {p2 .. p2}, Lc8/Lrf;->getScreenScore()I

    move-result v16

    .line 402
    .local v16, "screenScore":I
    invoke-virtual/range {p2 .. p2}, Lc8/Lrf;->getMemoryLimitScore()I

    move-result v7

    .line 404
    .local v7, "memLimitScore":I
    const/16 v18, 0x1

    .line 406
    .local v18, "storeScore":I
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 407
    .local v13, "path":Ljava/lang/String;
    new-instance v17, Landroid/os/StatFs;

    move-object/from16 v0, v17

    invoke-direct {v0, v13}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 408
    .local v17, "stat":Landroid/os/StatFs;
    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getBlockSize()I

    move-result v19

    move/from16 v0, v19

    int-to-long v4, v0

    .line 409
    .local v4, "blockSize":J
    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getBlockCount()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    .line 410
    .local v20, "totalBlocks":J
    mul-long v22, v4, v20

    const-wide/16 v24, 0x400

    div-long v22, v22, v24

    const-wide/16 v24, 0x400

    div-long v22, v22, v24

    const-wide/16 v24, 0x400

    div-long v8, v22, v24

    .line 411
    .local v8, "innerSize":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v19, v0

    long-to-int v0, v8

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->storeTotalSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 412
    const-wide/16 v22, 0x30

    cmp-long v19, v8, v22

    if-ltz v19, :cond_17

    .line 413
    const/16 v18, 0xa

    .line 431
    .end local v4    # "blockSize":J
    .end local v8    # "innerSize":J
    .end local v13    # "path":Ljava/lang/String;
    .end local v17    # "stat":Landroid/os/StatFs;
    .end local v20    # "totalBlocks":J
    :cond_4
    :goto_3
    const/high16 v12, 0x40000000    # 2.0f

    .line 433
    .local v12, "openglv":F
    :try_start_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/msf;->mOpenGlVersion:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    .line 434
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/msf;->mOpenGlVersion:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v12

    .line 439
    :cond_5
    :goto_4
    const/4 v11, 0x4

    .line 440
    .local v11, "openglScore":I
    float-to-double v0, v12

    move-wide/from16 v22, v0

    const-wide v24, 0x4008cccccccccccdL    # 3.1

    cmpl-double v19, v22, v24

    if-lez v19, :cond_1c

    .line 441
    const/16 v11, 0xa

    .line 449
    :cond_6
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lc8/Lrf;->getGpuScore()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Irf;->mGpuScore:I

    .line 450
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Irf;->mGpuScore:I

    move/from16 v19, v0

    if-nez v19, :cond_7

    .line 451
    int-to-float v0, v6

    move/from16 v19, v0

    int-to-float v0, v3

    move/from16 v22, v0

    const/high16 v23, 0x3f000000    # 0.5f

    mul-float v22, v22, v23

    add-float v19, v19, v22

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Irf;->mCpuHzScore:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x3f000000    # 0.5f

    mul-float v22, v22, v23

    add-float v19, v19, v22

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Irf;->mGpuScore:I

    .line 455
    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v19, v0

    shl-int/lit8 v22, v6, 0x1

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    int-to-float v0, v3

    move/from16 v23, v0

    const/high16 v24, 0x3f000000    # 0.5f

    mul-float v23, v23, v24

    add-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Irf;->mCpuHzScore:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x3f000000    # 0.5f

    mul-float v23, v23, v24

    add-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v22

    div-int/lit8 v22, v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->cpuScore:I

    .line 456
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->cpuScore:I

    move/from16 v19, v0

    const/16 v22, 0xa

    move/from16 v0, v19

    move/from16 v1, v22

    if-le v0, v1, :cond_8

    .line 457
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v19, v0

    const/16 v22, 0xa

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->cpuScore:I

    .line 460
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v19, v0

    int-to-float v0, v10

    move/from16 v22, v0

    const/high16 v23, 0x3fc00000    # 1.5f

    mul-float v22, v22, v23

    int-to-float v0, v7

    move/from16 v23, v0

    const/high16 v24, 0x3f000000    # 0.5f

    mul-float v23, v23, v24

    add-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->memScore:I

    .line 461
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->memScore:I

    move/from16 v19, v0

    const/16 v22, 0xa

    move/from16 v0, v19

    move/from16 v1, v22

    if-le v0, v1, :cond_9

    .line 462
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v19, v0

    const/16 v22, 0xa

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->memScore:I

    .line 465
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Irf;->mGpuScore:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->gpuScore:I

    .line 466
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->gpuScore:I

    move/from16 v19, v0

    const/16 v22, 0xa

    move/from16 v0, v19

    move/from16 v1, v22

    if-le v0, v1, :cond_a

    .line 467
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v19, v0

    const/16 v22, 0xa

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->gpuScore:I

    .line 470
    :cond_a
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput v11, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->eglScore:I

    .line 472
    int-to-float v0, v2

    move/from16 v19, v0

    int-to-float v0, v10

    move/from16 v22, v0

    const/high16 v23, 0x3fc00000    # 1.5f

    mul-float v22, v22, v23

    add-float v19, v19, v22

    int-to-float v0, v7

    move/from16 v22, v0

    const/high16 v23, 0x3f000000    # 0.5f

    mul-float v22, v22, v23

    add-float v19, v19, v22

    int-to-float v0, v6

    move/from16 v22, v0

    const/high16 v23, 0x3fc00000    # 1.5f

    mul-float v22, v22, v23

    add-float v19, v19, v22

    int-to-float v0, v3

    move/from16 v22, v0

    const/high16 v23, 0x3f000000    # 0.5f

    mul-float v22, v22, v23

    add-float v19, v19, v22

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Irf;->mCpuHzScore:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x3f000000    # 0.5f

    mul-float v22, v22, v23

    add-float v19, v19, v22

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Irf;->mGpuScore:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v19, v19, v22

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Irf;->mBrandScore:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v19, v19, v22

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    const v23, 0x3f333333    # 0.7f

    mul-float v22, v22, v23

    add-float v19, v19, v22

    int-to-float v0, v11

    move/from16 v22, v0

    const v23, 0x3ecccccd    # 0.4f

    mul-float v22, v22, v23

    add-float v19, v19, v22

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    const v23, 0x3ecccccd    # 0.4f

    mul-float v22, v22, v23

    add-float v15, v19, v22

    .line 474
    .local v15, "scoref":F
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v19

    move/from16 v0, v19

    int-to-float v15, v0

    .line 475
    float-to-int v14, v15

    .line 476
    .local v14, "score":I
    const/16 v19, 0x64

    move/from16 v0, v19

    if-le v14, v0, :cond_b

    .line 477
    const/16 v14, 0x64

    .line 479
    :cond_b
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {p2 .. p2}, Lc8/Lrf;->getCpuArch()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuArch:Ljava/lang/String;

    .line 480
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/msf;->mHardWareInfo:Lc8/Lrf;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lc8/Lrf;->saveCpuAndGpuInfo()V

    .line 481
    sget-boolean v19, Lc8/msf;->sIsDetailDebug:Z

    if-eqz v19, :cond_0

    .line 482
    const-string/jumbo v19, "OnLineMonitor"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "\u8bbe\u5907\u5206="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ",apiScore="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ",memScore="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ",memLimitScore="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", cpuModleScore="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ",cpuCountScore="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", CpuHzScore="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Irf;->mCpuHzScore:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ",GpuScore="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Irf;->mGpuScore:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ",screenScore="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", openglScore="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ",storeScore="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 364
    .end local v7    # "memLimitScore":I
    .end local v10    # "memScore":I
    .end local v11    # "openglScore":I
    .end local v12    # "openglv":F
    .end local v14    # "score":I
    .end local v15    # "scoref":F
    .end local v16    # "screenScore":I
    .end local v18    # "storeScore":I
    :cond_c
    sget v19, Lc8/msf;->sApiLevel:I

    const/16 v22, 0x17

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    .line 366
    const/16 v2, 0x9

    goto/16 :goto_1

    .line 367
    :cond_d
    sget v19, Lc8/msf;->sApiLevel:I

    const/16 v22, 0x15

    move/from16 v0, v19

    move/from16 v1, v22

    if-lt v0, v1, :cond_e

    .line 369
    const/4 v2, 0x7

    goto/16 :goto_1

    .line 370
    :cond_e
    sget v19, Lc8/msf;->sApiLevel:I

    const/16 v22, 0x13

    move/from16 v0, v19

    move/from16 v1, v22

    if-lt v0, v1, :cond_f

    .line 372
    const/4 v2, 0x5

    goto/16 :goto_1

    .line 373
    :cond_f
    sget v19, Lc8/msf;->sApiLevel:I

    const/16 v22, 0x12

    move/from16 v0, v19

    move/from16 v1, v22

    if-lt v0, v1, :cond_10

    .line 375
    const/4 v2, 0x4

    goto/16 :goto_1

    .line 376
    :cond_10
    sget v19, Lc8/msf;->sApiLevel:I

    const/16 v22, 0x11

    move/from16 v0, v19

    move/from16 v1, v22

    if-lt v0, v1, :cond_11

    .line 378
    const/4 v2, 0x3

    goto/16 :goto_1

    .line 379
    :cond_11
    sget v19, Lc8/msf;->sApiLevel:I

    const/16 v22, 0x10

    move/from16 v0, v19

    move/from16 v1, v22

    if-lt v0, v1, :cond_2

    .line 381
    const/4 v2, 0x2

    goto/16 :goto_1

    .line 387
    .restart local v10    # "memScore":I
    :cond_12
    move-object/from16 v0, p1

    iget-wide v0, v0, Lc8/msf;->mDeviceTotalMemory:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x1000

    cmp-long v19, v22, v24

    if-ltz v19, :cond_13

    .line 388
    const/16 v10, 0x9

    goto/16 :goto_2

    .line 389
    :cond_13
    move-object/from16 v0, p1

    iget-wide v0, v0, Lc8/msf;->mDeviceTotalMemory:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0xc00

    cmp-long v19, v22, v24

    if-ltz v19, :cond_14

    .line 390
    const/4 v10, 0x7

    goto/16 :goto_2

    .line 391
    :cond_14
    move-object/from16 v0, p1

    iget-wide v0, v0, Lc8/msf;->mDeviceTotalMemory:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x800

    cmp-long v19, v22, v24

    if-ltz v19, :cond_15

    .line 392
    const/4 v10, 0x5

    goto/16 :goto_2

    .line 393
    :cond_15
    move-object/from16 v0, p1

    iget-wide v0, v0, Lc8/msf;->mDeviceTotalMemory:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x400

    cmp-long v19, v22, v24

    if-ltz v19, :cond_16

    .line 394
    const/4 v10, 0x3

    goto/16 :goto_2

    .line 395
    :cond_16
    move-object/from16 v0, p1

    iget-wide v0, v0, Lc8/msf;->mDeviceTotalMemory:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x200

    cmp-long v19, v22, v24

    if-ltz v19, :cond_3

    .line 396
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 414
    .restart local v4    # "blockSize":J
    .restart local v7    # "memLimitScore":I
    .restart local v8    # "innerSize":J
    .restart local v13    # "path":Ljava/lang/String;
    .restart local v16    # "screenScore":I
    .restart local v17    # "stat":Landroid/os/StatFs;
    .restart local v18    # "storeScore":I
    .restart local v20    # "totalBlocks":J
    :cond_17
    const-wide/16 v22, 0x18

    cmp-long v19, v8, v22

    if-ltz v19, :cond_18

    .line 415
    const/16 v18, 0x8

    goto/16 :goto_3

    .line 416
    :cond_18
    const-wide/16 v22, 0xa

    cmp-long v19, v8, v22

    if-ltz v19, :cond_19

    .line 417
    const/16 v18, 0x5

    goto/16 :goto_3

    .line 418
    :cond_19
    const-wide/16 v22, 0x8

    cmp-long v19, v8, v22

    if-ltz v19, :cond_1a

    .line 419
    const/16 v18, 0x4

    goto/16 :goto_3

    .line 420
    :cond_1a
    const-wide/16 v22, 0x6

    cmp-long v19, v8, v22

    if-ltz v19, :cond_1b

    .line 421
    const/16 v18, 0x3

    goto/16 :goto_3

    .line 422
    :cond_1b
    const-wide/16 v22, 0x5

    cmp-long v19, v8, v22

    if-ltz v19, :cond_4

    .line 423
    const/16 v18, 0x2

    goto/16 :goto_3

    .line 442
    .end local v4    # "blockSize":J
    .end local v8    # "innerSize":J
    .end local v13    # "path":Ljava/lang/String;
    .end local v17    # "stat":Landroid/os/StatFs;
    .end local v20    # "totalBlocks":J
    .restart local v11    # "openglScore":I
    .restart local v12    # "openglv":F
    :cond_1c
    float-to-double v0, v12

    move-wide/from16 v22, v0

    const-wide v24, 0x4008cccccccccccdL    # 3.1

    cmpl-double v19, v22, v24

    if-ltz v19, :cond_1d

    .line 443
    const/16 v11, 0x9

    goto/16 :goto_5

    .line 444
    :cond_1d
    float-to-double v0, v12

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4008000000000000L    # 3.0

    cmpl-double v19, v22, v24

    if-ltz v19, :cond_1e

    .line 445
    const/16 v11, 0x8

    goto/16 :goto_5

    .line 446
    :cond_1e
    float-to-double v0, v12

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    cmpl-double v19, v22, v24

    if-ltz v19, :cond_6

    .line 447
    const/4 v11, 0x6

    goto/16 :goto_5

    .end local v11    # "openglScore":I
    :catch_0
    move-exception v19

    goto/16 :goto_4

    .end local v12    # "openglv":F
    :catch_1
    move-exception v19

    goto/16 :goto_3
.end method

.method public evaluatePidScore(Lc8/msf;)I
    .locals 44
    .param p1, "onLineMonitor"    # Lc8/msf;

    .prologue
    .line 22
    if-nez p1, :cond_1

    .line 23
    const/16 v25, 0x0

    .line 179
    :cond_0
    :goto_0
    return v25

    .line 25
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v36

    const-wide/32 v38, 0xf4240

    div-long v30, v36, v38

    .line 26
    .local v30, "t1":J
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    const/16 v36, 0x64

    move/from16 v0, v36

    if-ge v14, v0, :cond_2

    .line 28
    const-wide/16 v36, 0x1

    :try_start_0
    invoke-static/range {v36 .. v37}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 33
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v36

    const-wide/32 v38, 0xf4240

    div-long v32, v36, v38

    .line 34
    .local v32, "t2":J
    sub-long v36, v32, v30

    move-wide/from16 v0, v36

    move-object/from16 v2, p1

    iput-wide v0, v2, Lc8/msf;->mTestSleepTime:J

    .line 37
    move-object/from16 v0, p1

    iget-wide v0, v0, Lc8/msf;->mTestSleepTime:J

    move-wide/from16 v36, v0

    move-wide/from16 v0, v36

    long-to-int v0, v0

    move/from16 v36, v0

    add-int/lit8 v36, v36, -0x64

    div-int/lit8 v36, v36, 0x14

    rsub-int/lit8 v27, v36, 0xa

    .line 38
    .local v27, "sheduleScore":I
    if-gez v27, :cond_3

    .line 39
    const/16 v27, 0x0

    .line 41
    :cond_3
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p1

    iput-short v0, v1, Lc8/msf;->mTest:S

    .line 42
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v30

    .line 43
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v6

    .line 44
    .local v6, "cpu1":J
    const/4 v14, 0x0

    :goto_3
    const v36, 0x186a0

    move/from16 v0, v36

    if-ge v14, v0, :cond_4

    .line 45
    move-object/from16 v0, p1

    iget-short v0, v0, Lc8/msf;->mTest:S

    move/from16 v36, v0

    add-int v36, v36, v14

    move/from16 v0, v36

    int-to-short v0, v0

    move/from16 v36, v0

    move/from16 v0, v36

    move-object/from16 v1, p1

    iput-short v0, v1, Lc8/msf;->mTest:S

    .line 44
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 47
    :cond_4
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v8

    .line 48
    .local v8, "cpu2":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v32

    .line 49
    sub-long v10, v8, v6

    .line 50
    .local v10, "cpuTime":J
    sub-long v36, v32, v30

    move-wide/from16 v0, v36

    move-object/from16 v2, p1

    iput-wide v0, v2, Lc8/msf;->mTestForTime:J

    .line 51
    long-to-int v0, v10

    move/from16 v36, v0

    div-int/lit8 v12, v36, 0x5

    .line 53
    .local v12, "cputime5":I
    const-wide/16 v36, 0xa

    move-object/from16 v0, p1

    iget-wide v0, v0, Lc8/msf;->mTestForTime:J

    move-wide/from16 v38, v0

    sub-long v38, v38, v10

    int-to-long v0, v12

    move-wide/from16 v40, v0

    div-long v38, v38, v40

    sub-long v22, v36, v38

    .line 54
    .local v22, "runScore":J
    const-wide/16 v36, 0x0

    cmp-long v36, v22, v36

    if-gez v36, :cond_5

    .line 55
    const-wide/16 v22, 0x0

    .line 59
    :cond_5
    const/16 v16, 0x0

    .line 62
    .local v16, "ioTimeScore":I
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lc8/msf;->mFileSchedIsNotExists:Z

    move/from16 v36, v0

    if-nez v36, :cond_12

    .line 63
    move-object/from16 v0, p1

    iget v0, v0, Lc8/msf;->mPidPerCpuLoad:F

    move/from16 v36, v0

    move-object/from16 v0, p1

    iget-short v0, v0, Lc8/msf;->mCpuProcessCount:S

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    div-float v4, v36, v37

    .line 64
    .local v4, "avgPerCpu":F
    const/16 v36, 0x0

    cmpg-float v36, v4, v36

    if-gez v36, :cond_6

    .line 65
    const/4 v4, 0x0

    .line 67
    :cond_6
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v36

    rsub-int/lit8 v28, v36, 0xa

    .line 68
    .local v28, "sysloadavgScore":I
    if-gez v28, :cond_7

    .line 69
    const/16 v28, 0x0

    .line 72
    :cond_7
    move-object/from16 v0, p1

    iget v0, v0, Lc8/msf;->mPidIoWaitCount:I

    move/from16 v36, v0

    move-object/from16 v0, p1

    iget v0, v0, Lc8/msf;->mPidIoWaitCountOld:I

    move/from16 v37, v0

    sub-int v34, v36, v37

    .line 73
    .local v34, "waitcount":I
    move-object/from16 v0, p1

    iget v0, v0, Lc8/msf;->mPidIoWaitSum:I

    move/from16 v36, v0

    move-object/from16 v0, p1

    iget v0, v0, Lc8/msf;->mPidIoWaitSumOld:I

    move/from16 v37, v0

    sub-int v35, v36, v37

    .line 74
    .local v35, "waittime":I
    div-int/lit8 v36, v34, 0xa

    rsub-int/lit8 v15, v36, 0xa

    .line 75
    .local v15, "ioScore":I
    if-gez v15, :cond_8

    .line 76
    const/4 v15, 0x0

    .line 78
    :cond_8
    div-int/lit8 v36, v35, 0x64

    rsub-int/lit8 v16, v36, 0xa

    .line 79
    if-gez v16, :cond_9

    .line 80
    const/16 v16, 0x0

    .line 100
    .end local v4    # "avgPerCpu":F
    .end local v34    # "waitcount":I
    .end local v35    # "waittime":I
    :cond_9
    :goto_4
    move-object/from16 v0, p1

    iget v0, v0, Lc8/msf;->mRuntimeThreadCount:I

    move/from16 v36, v0

    add-int/lit8 v24, v36, -0xa

    .line 101
    .local v24, "runtimeThread":I
    if-gez v24, :cond_a

    .line 102
    const/16 v24, 0x0

    .line 104
    :cond_a
    div-int/lit8 v36, v24, 0xa

    rsub-int/lit8 v29, v36, 0xa

    .line 105
    .local v29, "vmThreadCountScore":I
    if-gez v29, :cond_b

    .line 106
    const/16 v29, 0x0

    .line 109
    :cond_b
    move-object/from16 v0, p1

    iget v0, v0, Lc8/msf;->mRunningThreadCount:I

    move/from16 v36, v0

    div-int/lit8 v36, v36, 0x5

    rsub-int/lit8 v21, v36, 0xa

    .line 110
    .local v21, "runningThreadCountScore":I
    if-gez v21, :cond_c

    .line 111
    const/16 v21, 0x0

    .line 115
    :cond_c
    move-object/from16 v0, p1

    iget v0, v0, Lc8/msf;->mMyPidCPUPercent:I

    move/from16 v36, v0

    div-int/lit8 v36, v36, 0xa

    rsub-int/lit8 v5, v36, 0xa

    .line 116
    .local v5, "cpuPercentScore":I
    if-gez v5, :cond_d

    .line 117
    const/4 v5, 0x0

    .line 120
    :cond_d
    const/4 v13, 0x1

    .line 121
    .local v13, "gcCountScore":I
    move-object/from16 v0, p1

    iget v0, v0, Lc8/msf;->mTotalGcCount:I

    move/from16 v36, v0

    .line 122
    sget v36, Lc8/msf;->sApiLevel:I

    const/16 v37, 0x17

    move/from16 v0, v36

    move/from16 v1, v37

    if-lt v0, v1, :cond_15

    .line 123
    const/16 v36, 0x0

    rsub-int/lit8 v13, v36, 0xa

    .line 136
    :cond_e
    :goto_5
    move-object/from16 v0, p1

    iget v0, v0, Lc8/msf;->mTotalGcCount:I

    move/from16 v36, v0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Irf;->mTotalGcCount:I

    .line 139
    move-object/from16 v0, p1

    iget-wide v0, v0, Lc8/msf;->mTotalUsedMemory:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x64

    mul-long v36, v36, v38

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->deviceTotalAvailMemory:J

    move-wide/from16 v38, v0

    div-long v36, v36, v38

    move-wide/from16 v0, v36

    long-to-int v0, v0

    move/from16 v20, v0

    .line 141
    .local v20, "mempercent":I
    div-int/lit8 v36, v20, 0xa

    rsub-int/lit8 v19, v36, 0xa

    .line 142
    .local v19, "memPercentScore":I
    if-gez v19, :cond_f

    .line 143
    const/16 v19, 0x0

    .line 145
    :cond_f
    const/16 v36, 0x2

    move/from16 v0, v19

    move/from16 v1, v36

    if-lt v0, v1, :cond_10

    .line 146
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lc8/msf;->mIsLowMemroy:Z

    move/from16 v36, v0

    if-eqz v36, :cond_18

    const/16 v36, 0x3

    move/from16 v0, v19

    move/from16 v1, v36

    if-lt v0, v1, :cond_18

    .line 147
    add-int/lit8 v19, v19, -0x3

    .line 158
    :cond_10
    :goto_6
    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v36, v0

    const v37, 0x3ecccccd    # 0.4f

    mul-float v36, v36, v37

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v37, v0

    const v38, 0x3ecccccd    # 0.4f

    mul-float v37, v37, v38

    add-float v36, v36, v37

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v37, v0

    const v38, 0x3ecccccd    # 0.4f

    mul-float v37, v37, v38

    add-float v36, v36, v37

    int-to-float v0, v5

    move/from16 v37, v0

    const/high16 v38, 0x3f000000    # 0.5f

    mul-float v37, v37, v38

    add-float v36, v36, v37

    int-to-float v0, v13

    move/from16 v37, v0

    const v38, 0x3e99999a    # 0.3f

    mul-float v37, v37, v38

    add-float v26, v36, v37

    .line 160
    .local v26, "scoref":F
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lc8/msf;->mFileSchedIsNotExists:Z

    move/from16 v36, v0

    if-nez v36, :cond_1a

    .line 161
    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v36, v0

    int-to-float v0, v15

    move/from16 v38, v0

    const v39, 0x3f666666    # 0.9f

    mul-float v38, v38, v39

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v39, v0

    const v40, 0x3f333333    # 0.7f

    mul-float v39, v39, v40

    add-float v38, v38, v39

    move/from16 v0, v38

    float-to-double v0, v0

    move-wide/from16 v38, v0

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v40, v0

    const-wide v42, 0x3fe3333333333333L    # 0.6

    mul-double v40, v40, v42

    add-double v38, v38, v40

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v40, v0

    const/high16 v41, 0x3f000000    # 0.5f

    mul-float v40, v40, v41

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v40, v0

    add-double v38, v38, v40

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v40, v0

    const v41, 0x3e99999a    # 0.3f

    mul-float v40, v40, v41

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v40, v0

    add-double v38, v38, v40

    add-double v36, v36, v38

    move-wide/from16 v0, v36

    double-to-float v0, v0

    move/from16 v26, v0

    .line 166
    :goto_7
    move-object/from16 v0, p1

    iget-short v0, v0, Lc8/msf;->mDevicesScore:S

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    const v37, 0x3e99999a    # 0.3f

    mul-float v36, v36, v37

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Irf;->mNoDeviceSystemScore:I

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    const v38, 0x3eaaa64c    # 0.3333f

    mul-float v37, v37, v38

    add-float v36, v36, v37

    add-float v26, v26, v36

    .line 169
    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->round(F)I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v26, v0

    .line 170
    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v25, v0

    .line 171
    .local v25, "score":I
    const/16 v36, 0x64

    move/from16 v0, v25

    move/from16 v1, v36

    if-le v0, v1, :cond_11

    .line 172
    const/16 v25, 0x64

    .line 174
    :cond_11
    sget-boolean v36, Lc8/msf;->sIsDetailDebug:Z

    if-eqz v36, :cond_0

    .line 175
    const-string/jumbo v36, "OnLineMonitor"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "\u8fdb\u7a0b\u5206="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, ",sheduleScore="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, ",runScore="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, ",cpuPercentScore="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, ",runningThreadCountScore="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, ",vmThreadCountScore="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, ", gcCountScore="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, ",ioScore="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, ", sysloadavgScore="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, ",sheduleScore="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, ",ioTimeScore="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 83
    .end local v5    # "cpuPercentScore":I
    .end local v13    # "gcCountScore":I
    .end local v15    # "ioScore":I
    .end local v19    # "memPercentScore":I
    .end local v20    # "mempercent":I
    .end local v21    # "runningThreadCountScore":I
    .end local v24    # "runtimeThread":I
    .end local v25    # "score":I
    .end local v26    # "scoref":F
    .end local v28    # "sysloadavgScore":I
    .end local v29    # "vmThreadCountScore":I
    :cond_12
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mTotalIoWaitPercent:I

    move/from16 v17, v0

    .line 84
    .local v17, "ioWait":I
    div-int/lit8 v36, v17, 0xa

    rsub-int/lit8 v15, v36, 0xa

    .line 85
    .restart local v15    # "ioScore":I
    if-gez v15, :cond_13

    .line 86
    const/4 v15, 0x0

    .line 88
    :cond_13
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/msf;->mSystemLoadAvg:[F

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aget v36, v36, v37

    move-object/from16 v0, p1

    iget-short v0, v0, Lc8/msf;->mCpuProcessCount:S

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    div-float v18, v36, v37

    .line 89
    .local v18, "loadavg":F
    const/16 v36, 0x0

    cmpg-float v36, v18, v36

    if-gez v36, :cond_14

    .line 90
    const/16 v18, 0x0

    .line 92
    :cond_14
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v36

    rsub-int/lit8 v28, v36, 0xa

    .line 93
    .restart local v28    # "sysloadavgScore":I
    if-gez v28, :cond_9

    .line 94
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 125
    .end local v17    # "ioWait":I
    .end local v18    # "loadavg":F
    .restart local v5    # "cpuPercentScore":I
    .restart local v13    # "gcCountScore":I
    .restart local v21    # "runningThreadCountScore":I
    .restart local v24    # "runtimeThread":I
    .restart local v29    # "vmThreadCountScore":I
    :cond_15
    sget v36, Lc8/msf;->sApiLevel:I

    const/16 v37, 0x15

    move/from16 v0, v36

    move/from16 v1, v37

    if-lt v0, v1, :cond_16

    .line 127
    const/4 v13, 0x6

    goto/16 :goto_5

    .line 128
    :cond_16
    sget v36, Lc8/msf;->sApiLevel:I

    const/16 v37, 0x13

    move/from16 v0, v36

    move/from16 v1, v37

    if-lt v0, v1, :cond_17

    .line 130
    const/4 v13, 0x4

    goto/16 :goto_5

    .line 131
    :cond_17
    sget v36, Lc8/msf;->sApiLevel:I

    const/16 v37, 0x11

    move/from16 v0, v36

    move/from16 v1, v37

    if-lt v0, v1, :cond_e

    .line 133
    const/4 v13, 0x2

    goto/16 :goto_5

    .line 149
    .restart local v19    # "memPercentScore":I
    .restart local v20    # "mempercent":I
    :cond_18
    move-object/from16 v0, p1

    iget v0, v0, Lc8/msf;->mTrimMemoryLevel:I

    move/from16 v36, v0

    const/16 v37, 0x3c

    move/from16 v0, v36

    move/from16 v1, v37

    if-lt v0, v1, :cond_19

    const/16 v36, 0x3

    move/from16 v0, v19

    move/from16 v1, v36

    if-lt v0, v1, :cond_19

    .line 150
    add-int/lit8 v19, v19, -0x3

    goto/16 :goto_6

    .line 151
    :cond_19
    move-object/from16 v0, p1

    iget v0, v0, Lc8/msf;->mTrimMemoryLevel:I

    move/from16 v36, v0

    const/16 v37, 0x3c

    move/from16 v0, v36

    move/from16 v1, v37

    if-lt v0, v1, :cond_10

    .line 152
    add-int/lit8 v19, v19, -0x2

    goto/16 :goto_6

    .line 163
    .restart local v26    # "scoref":F
    :cond_1a
    int-to-float v0, v15

    move/from16 v36, v0

    const/high16 v37, 0x3fc00000    # 1.5f

    mul-float v36, v36, v37

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v37, v0

    const/high16 v38, 0x3f000000    # 0.5f

    mul-float v37, v37, v38

    add-float v36, v36, v37

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v37, v0

    const v38, 0x3f19999a    # 0.6f

    mul-float v37, v37, v38

    add-float v36, v36, v37

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v37, v0

    const/high16 v38, 0x3f000000    # 0.5f

    mul-float v37, v37, v38

    add-float v36, v36, v37

    add-float v26, v26, v36

    goto/16 :goto_7

    .end local v5    # "cpuPercentScore":I
    .end local v6    # "cpu1":J
    .end local v8    # "cpu2":J
    .end local v10    # "cpuTime":J
    .end local v12    # "cputime5":I
    .end local v13    # "gcCountScore":I
    .end local v15    # "ioScore":I
    .end local v16    # "ioTimeScore":I
    .end local v19    # "memPercentScore":I
    .end local v20    # "mempercent":I
    .end local v21    # "runningThreadCountScore":I
    .end local v22    # "runScore":J
    .end local v24    # "runtimeThread":I
    .end local v26    # "scoref":F
    .end local v27    # "sheduleScore":I
    .end local v28    # "sysloadavgScore":I
    .end local v29    # "vmThreadCountScore":I
    .end local v32    # "t2":J
    :catch_0
    move-exception v36

    goto/16 :goto_2
.end method

.method public evaluateSystemScore(Lc8/msf;)I
    .locals 32
    .param p1, "onLineMonitor"    # Lc8/msf;

    .prologue
    .line 184
    if-nez p1, :cond_1

    .line 185
    const/16 v18, 0x0

    .line 348
    :cond_0
    :goto_0
    return v18

    .line 187
    :cond_1
    move-object/from16 v0, p1

    iget-short v7, v0, Lc8/msf;->mDevicesScore:S

    .line 188
    .local v7, "deviceScore":I
    const/16 v2, 0xf

    .local v2, "baseProgressCount":I
    const/16 v3, 0x19

    .line 190
    .local v3, "baseServiceCount":I
    const/16 v27, 0x5a

    move/from16 v0, v27

    if-lt v7, v0, :cond_14

    .line 191
    const/16 v2, 0x2d

    .line 192
    const/16 v3, 0x3c

    .line 208
    :cond_2
    :goto_1
    move-object/from16 v0, p1

    iget v0, v0, Lc8/msf;->mRunningProgress:I

    move/from16 v27, v0

    div-int v27, v27, v2

    rsub-int/lit8 v14, v27, 0xa

    .line 210
    .local v14, "progressCountcore":I
    if-gez v14, :cond_3

    .line 211
    const/4 v14, 0x0

    .line 215
    :cond_3
    move-object/from16 v0, p1

    iget v0, v0, Lc8/msf;->mRunningService:I

    move/from16 v27, v0

    div-int v27, v27, v3

    rsub-int/lit8 v21, v27, 0xa

    .line 216
    .local v21, "serviceCountScore":I
    if-gez v21, :cond_4

    .line 217
    const/16 v21, 0x0

    .line 220
    :cond_4
    const/4 v12, 0x1

    .line 221
    .local v12, "memUseScore":I
    move-object/from16 v0, p1

    iget-wide v0, v0, Lc8/msf;->mDeviceTotalMemory:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v27, v28, v30

    if-lez v27, :cond_6

    .line 222
    move-object/from16 v0, p1

    iget-wide v0, v0, Lc8/msf;->mDeviceTotalMemory:J

    move-wide/from16 v28, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lc8/msf;->mAvailMemory:J

    move-wide/from16 v30, v0

    sub-long v28, v28, v30

    const-wide/16 v30, 0x64

    mul-long v28, v28, v30

    move-object/from16 v0, p1

    iget-wide v0, v0, Lc8/msf;->mDeviceTotalMemory:J

    move-wide/from16 v30, v0

    div-long v28, v28, v30

    move-wide/from16 v0, v28

    long-to-int v15, v0

    .line 223
    .local v15, "remPercent":I
    const/16 v27, 0x3c

    move/from16 v0, v27

    if-ge v15, v0, :cond_5

    move-object/from16 v0, p1

    iget-wide v0, v0, Lc8/msf;->mAvailMemory:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x5dc

    cmp-long v27, v28, v30

    if-ltz v27, :cond_18

    .line 224
    :cond_5
    const/16 v12, 0xa

    .line 244
    .end local v15    # "remPercent":I
    :cond_6
    :goto_2
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lc8/msf;->mIsLowMemroy:Z

    move/from16 v27, v0

    if-eqz v27, :cond_7

    const/16 v27, 0x2

    move/from16 v0, v27

    if-le v12, v0, :cond_7

    .line 245
    add-int/lit8 v12, v12, -0x2

    .line 249
    :cond_7
    move-object/from16 v0, p1

    iget v0, v0, Lc8/msf;->mSysCPUPercent:I

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0xa

    rsub-int/lit8 v6, v27, 0xa

    .line 250
    .local v6, "cpuPercentScore":I
    if-gez v6, :cond_8

    .line 251
    const/4 v6, 0x0

    .line 254
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mTotalIoWaitPercent:I

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0xa

    rsub-int/lit8 v10, v27, 0xa

    .line 255
    .local v10, "ioScore":I
    if-gez v10, :cond_9

    .line 256
    const/4 v10, 0x0

    .line 260
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/msf;->mSystemLoadAvg:[F

    move-object/from16 v27, v0

    const/16 v28, 0x2

    aget v27, v27, v28

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/msf;->mSystemLoadAvg:[F

    move-object/from16 v28, v0

    const/16 v29, 0x1

    aget v28, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 261
    .local v11, "loadavg":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/msf;->mSystemLoadAvg:[F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    move/from16 v0, v27

    invoke-static {v11, v0}, Ljava/lang/Math;->min(FF)F

    move-result v27

    move-object/from16 v0, p1

    iget-short v0, v0, Lc8/msf;->mCpuProcessCount:S

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v11, v27, v28

    .line 262
    const/16 v27, 0x0

    cmpg-float v27, v11, v27

    if-gez v27, :cond_a

    .line 263
    const/4 v11, 0x0

    .line 265
    :cond_a
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v27

    rsub-int/lit8 v23, v27, 0xa

    .line 266
    .local v23, "sysloadavgScore":I
    if-gez v23, :cond_b

    .line 267
    const/16 v23, 0x0

    .line 270
    :cond_b
    const/16 v20, 0x1

    .line 272
    .local v20, "sdfreeScore":I
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 273
    .local v13, "path":Ljava/lang/String;
    new-instance v22, Landroid/os/StatFs;

    move-object/from16 v0, v22

    invoke-direct {v0, v13}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 274
    .local v22, "stat":Landroid/os/StatFs;
    invoke-virtual/range {v22 .. v22}, Landroid/os/StatFs;->getBlockSize()I

    move-result v27

    move/from16 v0, v27

    int-to-long v4, v0

    .line 275
    .local v4, "blockSize":J
    invoke-virtual/range {v22 .. v22}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v28, v0

    mul-long v28, v28, v4

    const-wide/16 v30, 0x400

    div-long v28, v28, v30

    const-wide/16 v30, 0x400

    div-long v8, v28, v30

    .line 276
    .local v8, "innerFree":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v27, v0

    long-to-int v0, v8

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->storeFreesize:I

    .line 277
    long-to-int v0, v8

    move/from16 v27, v0

    move/from16 v0, v27

    div-int/lit16 v0, v0, 0x400

    move/from16 v20, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    const/16 v27, 0xa

    move/from16 v0, v20

    move/from16 v1, v27

    if-le v0, v1, :cond_c

    .line 279
    const/16 v20, 0xa

    .line 287
    .end local v4    # "blockSize":J
    .end local v8    # "innerFree":J
    .end local v13    # "path":Ljava/lang/String;
    .end local v22    # "stat":Landroid/os/StatFs;
    :cond_c
    :goto_3
    const/16 v17, 0x1

    .line 288
    .local v17, "schedWaitSumScore":I
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lc8/msf;->mFileSchedIsNotExists:Z

    move/from16 v27, v0

    if-nez v27, :cond_28

    .line 289
    move-object/from16 v0, p1

    iget v0, v0, Lc8/msf;->mPidWaitMax:F

    move/from16 v27, v0

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x32

    rsub-int/lit8 v16, v27, 0xa

    .line 290
    .local v16, "schedWaitMaxScore":I
    if-gez v16, :cond_d

    .line 291
    const/16 v16, 0x0

    .line 294
    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mSystemTotalCpuTime:J

    move-wide/from16 v24, v0

    .line 296
    .local v24, "totalCpuTime":J
    move-object/from16 v0, p1

    iget v0, v0, Lc8/msf;->mPidWaitSum:F

    move/from16 v27, v0

    move-object/from16 v0, p1

    iget v0, v0, Lc8/msf;->mPidOldWaitSum:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    move-wide/from16 v0, v24

    long-to-float v0, v0

    move/from16 v28, v0

    div-float v26, v27, v28

    .line 297
    .local v26, "waitSum":F
    const/high16 v27, 0x3f800000    # 1.0f

    cmpl-float v27, v26, v27

    if-ltz v27, :cond_e

    .line 298
    const/high16 v26, 0x3f800000    # 1.0f

    .line 301
    :cond_e
    const/high16 v27, 0x3f800000    # 1.0f

    sub-float v27, v27, v26

    const/high16 v28, 0x41200000    # 10.0f

    mul-float v26, v27, v28

    .line 303
    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->round(F)I

    move-result v17

    .line 313
    .end local v24    # "totalCpuTime":J
    .end local v26    # "waitSum":F
    :goto_4
    if-gez v16, :cond_f

    .line 314
    const/16 v16, 0x0

    .line 317
    :cond_f
    if-lez v6, :cond_10

    .line 318
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iput v6, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->cpuPercentScore:I

    .line 320
    :cond_10
    if-lez v12, :cond_11

    .line 321
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iput v12, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->memPercentScore:I

    .line 323
    :cond_11
    if-lez v10, :cond_12

    .line 324
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iput v10, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->ioWaitScore:I

    .line 327
    :cond_12
    int-to-float v0, v12

    move/from16 v27, v0

    const/high16 v28, 0x3fc00000    # 1.5f

    mul-float v27, v27, v28

    int-to-float v0, v10

    move/from16 v28, v0

    add-float v27, v27, v28

    int-to-float v0, v6

    move/from16 v28, v0

    const/high16 v29, 0x3fc00000    # 1.5f

    mul-float v28, v28, v29

    add-float v27, v27, v28

    int-to-float v0, v14

    move/from16 v28, v0

    const/high16 v29, 0x3f000000    # 0.5f

    mul-float v28, v28, v29

    add-float v27, v27, v28

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v28, v0

    const v29, 0x3e99999a    # 0.3f

    mul-float v28, v28, v29

    add-float v27, v27, v28

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v28, v0

    const v29, 0x3e4ccccd    # 0.2f

    mul-float v28, v28, v29

    add-float v19, v27, v28

    .line 329
    .local v19, "scoref":F
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lc8/msf;->mFileSchedIsNotExists:Z

    move/from16 v27, v0

    if-nez v27, :cond_2a

    .line 330
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v19, v19, v27

    .line 331
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v27, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v28, v0

    const v29, 0x3ecccccd    # 0.4f

    mul-float v28, v28, v29

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v29, v0

    const v30, 0x3e4ccccd    # 0.2f

    mul-float v29, v29, v30

    add-float v28, v28, v29

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v29, v0

    const v30, 0x3ecccccd    # 0.4f

    mul-float v29, v29, v30

    add-float v28, v28, v29

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->round(F)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->schedWaitScore:I

    .line 336
    :goto_5
    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Irf;->mNoDeviceSystemScore:I

    .line 337
    move-object/from16 v0, p1

    iget-short v0, v0, Lc8/msf;->mDevicesScore:S

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const v28, 0x3ecccccd    # 0.4f

    mul-float v27, v27, v28

    add-float v19, v19, v27

    .line 338
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v19, v0

    .line 339
    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v18, v0

    .line 340
    .local v18, "score":I
    const/16 v27, 0x64

    move/from16 v0, v18

    move/from16 v1, v27

    if-le v0, v1, :cond_13

    .line 341
    const/16 v18, 0x64

    .line 343
    :cond_13
    sget-boolean v27, Lc8/msf;->sIsDetailDebug:Z

    if-eqz v27, :cond_0

    .line 344
    const-string/jumbo v27, "OnLineMonitor"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "\u7cfb\u7edf\u5206="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ",DevicesScore="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p1

    iget-short v0, v0, Lc8/msf;->mDevicesScore:S

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const v30, 0x3ecccccd    # 0.4f

    mul-float v29, v29, v30

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ",memUseScore="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ",ioScore="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ",cpuPercentScore="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ",progressCountcore="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ", serviceCountScore="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ",sdfreeScore="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ",sysloadavgScore="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ", schedWaitMaxScore="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ",schedWaitSumScore="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 193
    .end local v6    # "cpuPercentScore":I
    .end local v10    # "ioScore":I
    .end local v11    # "loadavg":F
    .end local v12    # "memUseScore":I
    .end local v14    # "progressCountcore":I
    .end local v16    # "schedWaitMaxScore":I
    .end local v17    # "schedWaitSumScore":I
    .end local v18    # "score":I
    .end local v19    # "scoref":F
    .end local v20    # "sdfreeScore":I
    .end local v21    # "serviceCountScore":I
    .end local v23    # "sysloadavgScore":I
    :cond_14
    const/16 v27, 0x55

    move/from16 v0, v27

    if-lt v7, v0, :cond_15

    .line 194
    const/16 v2, 0x28

    .line 195
    const/16 v3, 0x37

    goto/16 :goto_1

    .line 196
    :cond_15
    const/16 v27, 0x4b

    move/from16 v0, v27

    if-lt v7, v0, :cond_16

    .line 197
    const/16 v2, 0x1e

    .line 198
    const/16 v3, 0x2d

    goto/16 :goto_1

    .line 199
    :cond_16
    const/16 v27, 0x3c

    move/from16 v0, v27

    if-lt v7, v0, :cond_17

    .line 200
    const/16 v2, 0x19

    .line 201
    const/16 v3, 0x23

    goto/16 :goto_1

    .line 202
    :cond_17
    const/16 v27, 0x32

    move/from16 v0, v27

    if-lt v7, v0, :cond_2

    .line 203
    const/16 v2, 0x14

    .line 204
    const/16 v3, 0x19

    goto/16 :goto_1

    .line 225
    .restart local v12    # "memUseScore":I
    .restart local v14    # "progressCountcore":I
    .restart local v15    # "remPercent":I
    .restart local v21    # "serviceCountScore":I
    :cond_18
    const/16 v27, 0x37

    move/from16 v0, v27

    if-ge v15, v0, :cond_19

    move-object/from16 v0, p1

    iget-wide v0, v0, Lc8/msf;->mAvailMemory:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x514

    cmp-long v27, v28, v30

    if-ltz v27, :cond_1a

    .line 226
    :cond_19
    const/16 v12, 0x9

    goto/16 :goto_2

    .line 227
    :cond_1a
    const/16 v27, 0x32

    move/from16 v0, v27

    if-ge v15, v0, :cond_1b

    move-object/from16 v0, p1

    iget-wide v0, v0, Lc8/msf;->mAvailMemory:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x44c

    cmp-long v27, v28, v30

    if-ltz v27, :cond_1c

    .line 228
    :cond_1b
    const/16 v12, 0x8

    goto/16 :goto_2

    .line 229
    :cond_1c
    const/16 v27, 0x2d

    move/from16 v0, v27

    if-ge v15, v0, :cond_1d

    move-object/from16 v0, p1

    iget-wide v0, v0, Lc8/msf;->mAvailMemory:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x384

    cmp-long v27, v28, v30

    if-ltz v27, :cond_1e

    .line 230
    :cond_1d
    const/4 v12, 0x7

    goto/16 :goto_2

    .line 231
    :cond_1e
    const/16 v27, 0x28

    move/from16 v0, v27

    if-ge v15, v0, :cond_1f

    move-object/from16 v0, p1

    iget-wide v0, v0, Lc8/msf;->mAvailMemory:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x320

    cmp-long v27, v28, v30

    if-ltz v27, :cond_20

    .line 232
    :cond_1f
    const/4 v12, 0x6

    goto/16 :goto_2

    .line 233
    :cond_20
    const/16 v27, 0x23

    move/from16 v0, v27

    if-ge v15, v0, :cond_21

    move-object/from16 v0, p1

    iget-wide v0, v0, Lc8/msf;->mAvailMemory:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x2bc

    cmp-long v27, v28, v30

    if-ltz v27, :cond_22

    .line 234
    :cond_21
    const/4 v12, 0x5

    goto/16 :goto_2

    .line 235
    :cond_22
    const/16 v27, 0x1e

    move/from16 v0, v27

    if-ge v15, v0, :cond_23

    move-object/from16 v0, p1

    iget-wide v0, v0, Lc8/msf;->mAvailMemory:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x258

    cmp-long v27, v28, v30

    if-ltz v27, :cond_24

    .line 236
    :cond_23
    const/4 v12, 0x4

    goto/16 :goto_2

    .line 237
    :cond_24
    const/16 v27, 0x19

    move/from16 v0, v27

    if-ge v15, v0, :cond_25

    move-object/from16 v0, p1

    iget-wide v0, v0, Lc8/msf;->mAvailMemory:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x1f4

    cmp-long v27, v28, v30

    if-ltz v27, :cond_26

    .line 238
    :cond_25
    const/4 v12, 0x3

    goto/16 :goto_2

    .line 239
    :cond_26
    const/16 v27, 0x14

    move/from16 v0, v27

    if-ge v15, v0, :cond_27

    move-object/from16 v0, p1

    iget-wide v0, v0, Lc8/msf;->mAvailMemory:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x190

    cmp-long v27, v28, v30

    if-ltz v27, :cond_6

    .line 240
    :cond_27
    const/4 v12, 0x2

    goto/16 :goto_2

    .line 306
    .end local v15    # "remPercent":I
    .restart local v6    # "cpuPercentScore":I
    .restart local v10    # "ioScore":I
    .restart local v11    # "loadavg":F
    .restart local v17    # "schedWaitSumScore":I
    .restart local v20    # "sdfreeScore":I
    .restart local v23    # "sysloadavgScore":I
    :cond_28
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/msf;->mSystemLoadAvg:[F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    move-object/from16 v0, p1

    iget-short v0, v0, Lc8/msf;->mCpuProcessCount:S

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v27, v27, v28

    const/high16 v28, 0x3f800000    # 1.0f

    sub-float v11, v27, v28

    .line 308
    const/16 v27, 0x0

    cmpg-float v27, v11, v27

    if-gez v27, :cond_29

    .line 309
    const/4 v11, 0x0

    .line 311
    :cond_29
    const/high16 v27, 0x40200000    # 2.5f

    mul-float v27, v27, v11

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->round(F)I

    move-result v27

    rsub-int/lit8 v16, v27, 0xa

    .restart local v16    # "schedWaitMaxScore":I
    goto/16 :goto_4

    .line 333
    .restart local v19    # "scoref":F
    :cond_2a
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v19, v19, v27

    .line 334
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v27, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v28, v0

    const v29, 0x3f333333    # 0.7f

    mul-float v28, v28, v29

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v29, v0

    const v30, 0x3e99999a    # 0.3f

    mul-float v29, v29, v30

    add-float v28, v28, v29

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->round(F)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->schedWaitScore:I

    goto/16 :goto_5

    .end local v16    # "schedWaitMaxScore":I
    .end local v17    # "schedWaitSumScore":I
    .end local v19    # "scoref":F
    :catch_0
    move-exception v27

    goto/16 :goto_3
.end method

.method getCpuHzScore(Lc8/msf;)V
    .locals 10
    .param p1, "onLineMonitor"    # Lc8/msf;

    .prologue
    const v9, 0x3fb33333    # 1.4f

    const/high16 v8, 0x3fc00000    # 1.5f

    const v7, 0x3fa66666    # 1.3f

    const v6, 0x3f99999a    # 1.2f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 491
    iget v3, p0, Lc8/Irf;->mCpuHzScore:I

    if-gez v3, :cond_2

    .line 492
    const/4 v0, 0x1

    .line 493
    .local v0, "cpuHzScore":I
    iget-short v3, p1, Lc8/msf;->mCpuProcessCount:S

    const/16 v4, 0x8

    if-lt v3, v4, :cond_a

    .line 494
    iget v3, p1, Lc8/msf;->mCpuMaxFreq:F

    const v4, 0x3ff33333    # 1.9f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3

    .line 495
    const/16 v0, 0xa

    .line 530
    :cond_0
    :goto_0
    iget-object v3, p1, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v3, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget v2, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuMinFreq:F

    .line 531
    .local v2, "minFreq":F
    const/4 v1, 0x1

    .line 532
    .local v1, "cpuHzScore2":I
    iget-short v3, p1, Lc8/msf;->mCpuProcessCount:S

    const/16 v4, 0x8

    if-lt v3, v4, :cond_18

    .line 533
    const v3, 0x3fcccccd    # 1.6f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_12

    .line 534
    const/16 v1, 0xa

    .line 569
    :cond_1
    :goto_1
    add-int v3, v0, v1

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lc8/Irf;->mCpuHzScore:I

    .line 571
    .end local v0    # "cpuHzScore":I
    .end local v1    # "cpuHzScore2":I
    .end local v2    # "minFreq":F
    :cond_2
    return-void

    .line 496
    .restart local v0    # "cpuHzScore":I
    :cond_3
    iget v3, p1, Lc8/msf;->mCpuMaxFreq:F

    const v4, 0x3fe66666    # 1.8f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_4

    .line 497
    const/16 v0, 0x9

    goto :goto_0

    .line 498
    :cond_4
    iget v3, p1, Lc8/msf;->mCpuMaxFreq:F

    const v4, 0x3fd9999a    # 1.7f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_5

    .line 499
    const/16 v0, 0x8

    goto :goto_0

    .line 500
    :cond_5
    iget v3, p1, Lc8/msf;->mCpuMaxFreq:F

    cmpl-float v3, v3, v8

    if-ltz v3, :cond_6

    .line 501
    const/4 v0, 0x7

    goto :goto_0

    .line 502
    :cond_6
    iget v3, p1, Lc8/msf;->mCpuMaxFreq:F

    cmpl-float v3, v3, v9

    if-ltz v3, :cond_7

    .line 503
    const/4 v0, 0x6

    goto :goto_0

    .line 504
    :cond_7
    iget v3, p1, Lc8/msf;->mCpuMaxFreq:F

    cmpl-float v3, v3, v7

    if-ltz v3, :cond_8

    .line 505
    const/4 v0, 0x5

    goto :goto_0

    .line 506
    :cond_8
    iget v3, p1, Lc8/msf;->mCpuMaxFreq:F

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_9

    .line 507
    const/4 v0, 0x4

    goto :goto_0

    .line 508
    :cond_9
    iget v3, p1, Lc8/msf;->mCpuMaxFreq:F

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_0

    .line 509
    const/4 v0, 0x3

    goto :goto_0

    .line 512
    :cond_a
    iget v3, p1, Lc8/msf;->mCpuMaxFreq:F

    const v4, 0x4019999a    # 2.4f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_b

    .line 513
    const/16 v0, 0xa

    goto :goto_0

    .line 514
    :cond_b
    iget v3, p1, Lc8/msf;->mCpuMaxFreq:F

    const v4, 0x400ccccd    # 2.2f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_c

    .line 515
    const/16 v0, 0x9

    goto/16 :goto_0

    .line 516
    :cond_c
    iget v3, p1, Lc8/msf;->mCpuMaxFreq:F

    const/high16 v4, 0x40000000    # 2.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_d

    .line 517
    const/16 v0, 0x8

    goto/16 :goto_0

    .line 518
    :cond_d
    iget v3, p1, Lc8/msf;->mCpuMaxFreq:F

    const v4, 0x3fe66666    # 1.8f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_e

    .line 519
    const/4 v0, 0x7

    goto/16 :goto_0

    .line 520
    :cond_e
    iget v3, p1, Lc8/msf;->mCpuMaxFreq:F

    cmpl-float v3, v3, v8

    if-ltz v3, :cond_f

    .line 521
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 522
    :cond_f
    iget v3, p1, Lc8/msf;->mCpuMaxFreq:F

    cmpl-float v3, v3, v7

    if-ltz v3, :cond_10

    .line 523
    const/4 v0, 0x5

    goto/16 :goto_0

    .line 524
    :cond_10
    iget v3, p1, Lc8/msf;->mCpuMaxFreq:F

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_11

    .line 525
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 526
    :cond_11
    iget v3, p1, Lc8/msf;->mCpuMaxFreq:F

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_0

    .line 527
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 535
    .restart local v1    # "cpuHzScore2":I
    .restart local v2    # "minFreq":F
    :cond_12
    cmpl-float v3, v2, v8

    if-ltz v3, :cond_13

    .line 536
    const/16 v1, 0x9

    goto/16 :goto_1

    .line 537
    :cond_13
    cmpl-float v3, v2, v9

    if-ltz v3, :cond_14

    .line 538
    const/16 v1, 0x8

    goto/16 :goto_1

    .line 539
    :cond_14
    cmpl-float v3, v2, v7

    if-ltz v3, :cond_15

    .line 540
    const/4 v1, 0x6

    goto/16 :goto_1

    .line 541
    :cond_15
    cmpl-float v3, v2, v6

    if-ltz v3, :cond_16

    .line 542
    const/4 v1, 0x5

    goto/16 :goto_1

    .line 543
    :cond_16
    const v3, 0x3f8ccccd    # 1.1f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_17

    .line 544
    const/4 v1, 0x3

    goto/16 :goto_1

    .line 545
    :cond_17
    cmpl-float v3, v2, v5

    if-ltz v3, :cond_1

    .line 546
    const/4 v1, 0x2

    goto/16 :goto_1

    .line 549
    :cond_18
    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_19

    .line 550
    const/16 v1, 0xa

    goto/16 :goto_1

    .line 551
    :cond_19
    const v3, 0x3fe66666    # 1.8f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_1a

    .line 552
    const/16 v1, 0x9

    goto/16 :goto_1

    .line 553
    :cond_1a
    const v3, 0x3fcccccd    # 1.6f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_1b

    .line 554
    const/16 v1, 0x8

    goto/16 :goto_1

    .line 555
    :cond_1b
    cmpl-float v3, v2, v8

    if-ltz v3, :cond_1c

    .line 556
    const/4 v1, 0x7

    goto/16 :goto_1

    .line 557
    :cond_1c
    cmpl-float v3, v2, v9

    if-ltz v3, :cond_1d

    .line 558
    const/4 v1, 0x6

    goto/16 :goto_1

    .line 559
    :cond_1d
    cmpl-float v3, v2, v7

    if-ltz v3, :cond_1e

    .line 560
    const/4 v1, 0x5

    goto/16 :goto_1

    .line 561
    :cond_1e
    cmpl-float v3, v2, v6

    if-ltz v3, :cond_1f

    .line 562
    const/4 v1, 0x4

    goto/16 :goto_1

    .line 563
    :cond_1f
    const v3, 0x3f8ccccd    # 1.1f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_20

    .line 564
    const/4 v1, 0x3

    goto/16 :goto_1

    .line 565
    :cond_20
    cmpl-float v3, v2, v5

    if-ltz v3, :cond_1

    .line 566
    const/4 v1, 0x2

    goto/16 :goto_1
.end method
