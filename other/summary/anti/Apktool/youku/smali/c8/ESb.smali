.class public Lc8/ESb;
.super Ljava/lang/Object;
.source "CatcherManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/FSb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TracesFinder"
.end annotation


# instance fields
.field found:Z

.field mSystemTraceFile:Ljava/io/File;

.field strEndFlag:Ljava/lang/String;

.field strPid:Ljava/lang/String;

.field strProcessName:Ljava/lang/String;

.field strStartFlag:Ljava/lang/String;

.field strTriggerTime:Ljava/lang/String;

.field final synthetic this$1:Lc8/FSb;


# direct methods
.method public constructor <init>(Lc8/FSb;Ljava/io/File;)V
    .locals 1
    .param p2, "systemTraceFile"    # Ljava/io/File;

    .prologue
    .line 509
    iput-object p1, p0, Lc8/ESb;->this$1:Lc8/FSb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 501
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/ESb;->strStartFlag:Ljava/lang/String;

    .line 502
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/ESb;->strEndFlag:Ljava/lang/String;

    .line 503
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/ESb;->strPid:Ljava/lang/String;

    .line 504
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/ESb;->strTriggerTime:Ljava/lang/String;

    .line 505
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/ESb;->strProcessName:Ljava/lang/String;

    .line 506
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/ESb;->found:Z

    .line 510
    iput-object p2, p0, Lc8/ESb;->mSystemTraceFile:Ljava/io/File;

    .line 511
    return-void
.end method


# virtual methods
.method public find()V
    .locals 18

    .prologue
    .line 514
    const/4 v8, 0x0

    .line 516
    .local v8, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/ESb;->mSystemTraceFile:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v14, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .local v9, "reader":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line1":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 520
    invoke-static {v4}, Lc8/OTb;->isNotBlank(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v14

    if-eqz v14, :cond_0

    .line 522
    :cond_1
    if-nez v4, :cond_4

    .line 570
    if-eqz v9, :cond_3

    .line 572
    :try_start_2
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v8, v9

    .line 578
    .end local v4    # "line1":Ljava/lang/String;
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :goto_0
    return-void

    .line 573
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "line1":Ljava/lang/String;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 574
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v14, "close traces file"

    invoke-static {v14, v2}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    move-object v8, v9

    .line 575
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 525
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :cond_4
    :try_start_3
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v5

    .line 526
    .local v5, "line2":Ljava/lang/String;
    if-nez v5, :cond_6

    .line 570
    if-eqz v9, :cond_5

    .line 572
    :try_start_4
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v8, v9

    .line 575
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 573
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 574
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v14, "close traces file"

    invoke-static {v14, v2}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "e":Ljava/io/IOException;
    :cond_5
    move-object v8, v9

    .line 575
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 531
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :cond_6
    :try_start_5
    const-string/jumbo v14, "-----\\spid\\s(\\d+?)\\sat\\s(.+?)\\s-----"

    invoke-static {v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    .line 532
    .local v13, "triggerTimePattern":Ljava/util/regex/Pattern;
    invoke-virtual {v13, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 533
    .local v6, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 534
    const/4 v14, 0x1

    invoke-virtual {v6, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lc8/ESb;->strPid:Ljava/lang/String;

    .line 535
    const/4 v14, 0x2

    invoke-virtual {v6, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lc8/ESb;->strTriggerTime:Ljava/lang/String;

    .line 538
    const-string/jumbo v14, "Cmd\\sline:\\s(.+)"

    invoke-static {v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 539
    .local v7, "processPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v7, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 540
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 542
    const/4 v14, 0x1

    invoke-virtual {v6, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lc8/ESb;->strProcessName:Ljava/lang/String;

    .line 543
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/ESb;->strProcessName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/ESb;->this$1:Lc8/FSb;

    iget-object v15, v15, Lc8/FSb;->this$0:Lc8/KSb;

    iget-object v15, v15, Lc8/KSb;->mProcessName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 545
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/ESb;->this$1:Lc8/FSb;

    iget-object v14, v14, Lc8/FSb;->mProcessANRFlagFile:Ljava/io/File;

    invoke-static {v14}, Lc8/vTb;->readLine(Ljava/io/File;)Ljava/lang/String;

    move-result-object v11

    .line 547
    .local v11, "strLastTriggerTime":Ljava/lang/String;
    invoke-static {v11}, Lc8/OTb;->isNotBlank(Ljava/lang/CharSequence;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v14

    if-eqz v14, :cond_7

    .line 549
    :try_start_6
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string/jumbo v14, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v10, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 550
    .local v10, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 551
    .local v3, "lastTriggerTime":Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/ESb;->strTriggerTime:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v12

    .line 553
    .local v12, "triggerTime":Ljava/util/Date;
    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-lez v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/ESb;->this$1:Lc8/FSb;

    iget-object v14, v14, Lc8/FSb;->mProcessANRFlagFile:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/ESb;->strTriggerTime:Ljava/lang/String;

    invoke-static {v14, v15}, Lc8/vTb;->writeFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 556
    move-object/from16 v0, p0

    iput-object v4, v0, Lc8/ESb;->strStartFlag:Ljava/lang/String;

    .line 557
    const-string/jumbo v14, "----- end %s -----"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/ESb;->strPid:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lc8/ESb;->strEndFlag:Ljava/lang/String;

    .line 558
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lc8/ESb;->found:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 570
    .end local v3    # "lastTriggerTime":Ljava/util/Date;
    .end local v7    # "processPattern":Ljava/util/regex/Pattern;
    .end local v10    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    .end local v11    # "strLastTriggerTime":Ljava/lang/String;
    .end local v12    # "triggerTime":Ljava/util/Date;
    :cond_7
    :goto_1
    if-eqz v9, :cond_9

    .line 572
    :try_start_7
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    move-object v8, v9

    .line 575
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 560
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "processPattern":Ljava/util/regex/Pattern;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "strLastTriggerTime":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 561
    .local v2, "e":Ljava/lang/Exception;
    :try_start_8
    const-string/jumbo v14, "compare triggerTime"

    invoke-static {v14, v2}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    .line 567
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "line1":Ljava/lang/String;
    .end local v5    # "line2":Ljava/lang/String;
    .end local v6    # "matcher":Ljava/util/regex/Matcher;
    .end local v7    # "processPattern":Ljava/util/regex/Pattern;
    .end local v11    # "strLastTriggerTime":Ljava/lang/String;
    .end local v13    # "triggerTimePattern":Ljava/util/regex/Pattern;
    :catch_3
    move-exception v2

    move-object v8, v9

    .line 568
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/io/IOException;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :goto_2
    :try_start_9
    const-string/jumbo v14, "do scan traces file"

    invoke-static {v14, v2}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 570
    if-eqz v8, :cond_2

    .line 572
    :try_start_a
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_0

    .line 573
    :catch_4
    move-exception v2

    .line 574
    const-string/jumbo v14, "close traces file"

    invoke-static {v14, v2}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 573
    .end local v2    # "e":Ljava/io/IOException;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "line1":Ljava/lang/String;
    .restart local v5    # "line2":Ljava/lang/String;
    .restart local v6    # "matcher":Ljava/util/regex/Matcher;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "triggerTimePattern":Ljava/util/regex/Pattern;
    :catch_5
    move-exception v2

    .line 574
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v14, "close traces file"

    invoke-static {v14, v2}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v8, v9

    .line 575
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 570
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "line1":Ljava/lang/String;
    .end local v5    # "line2":Ljava/lang/String;
    .end local v6    # "matcher":Ljava/util/regex/Matcher;
    .end local v13    # "triggerTimePattern":Ljava/util/regex/Pattern;
    :catchall_0
    move-exception v14

    :goto_3
    if-eqz v8, :cond_8

    .line 572
    :try_start_b
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 575
    :cond_8
    :goto_4
    throw v14

    .line 573
    :catch_6
    move-exception v2

    .line 574
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v15, "close traces file"

    invoke-static {v15, v2}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 570
    .end local v2    # "e":Ljava/io/IOException;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v14

    move-object v8, v9

    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 567
    :catch_7
    move-exception v2

    goto :goto_2

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "line1":Ljava/lang/String;
    .restart local v5    # "line2":Ljava/lang/String;
    .restart local v6    # "matcher":Ljava/util/regex/Matcher;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "triggerTimePattern":Ljava/util/regex/Pattern;
    :cond_9
    move-object v8, v9

    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_0
.end method
