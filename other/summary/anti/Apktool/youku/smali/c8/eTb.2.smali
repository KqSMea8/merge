.class public final Lc8/eTb;
.super Lc8/fTb;
.source "ReportBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/iTb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ANRReportPrintWrite"
.end annotation


# instance fields
.field mTracesFinder:Lc8/ESb;

.field final synthetic this$0:Lc8/iTb;


# direct methods
.method constructor <init>(Lc8/iTb;Landroid/content/Context;Lc8/kTb;Lc8/LSb;Ljava/lang/String;JLjava/io/File;Lc8/ESb;)V
    .locals 14
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "reporterContext"    # Lc8/kTb;
    .param p4, "configuration"    # Lc8/LSb;
    .param p5, "reportName"    # Ljava/lang/String;
    .param p6, "timestamp"    # J
    .param p8, "reportFile"    # Ljava/io/File;
    .param p9, "tracesFinder"    # Lc8/ESb;

    .prologue
    .line 526
    iput-object p1, p0, Lc8/eTb;->this$0:Lc8/iTb;

    .line 527
    const-string/jumbo v9, "anr"

    const/4 v13, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-wide/from16 v10, p6

    move-object/from16 v12, p8

    invoke-direct/range {v3 .. v13}, Lc8/fTb;-><init>(Lc8/iTb;Landroid/content/Context;Lc8/kTb;Lc8/LSb;Ljava/lang/String;Ljava/lang/String;JLjava/io/File;Ljava/util/Map;)V

    .line 529
    move-object/from16 v0, p9

    iput-object v0, p0, Lc8/eTb;->mTracesFinder:Lc8/ESb;

    .line 530
    return-void
.end method

.method private printTraces()V
    .locals 9

    .prologue
    .line 538
    :try_start_0
    const-string/jumbo v6, "traces starts.\n"

    invoke-virtual {p0, v6}, Lc8/eTb;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 539
    const/4 v3, 0x0

    .line 540
    .local v3, "reader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 542
    .local v5, "start":Z
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    iget-object v8, p0, Lc8/eTb;->mTracesFinder:Lc8/ESb;

    iget-object v8, v8, Lc8/ESb;->mSystemTraceFile:Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 544
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 545
    .local v2, "readLen":I
    :cond_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 546
    add-int/lit8 v2, v2, 0x1

    .line 548
    iget-object v6, p0, Lc8/eTb;->mTracesFinder:Lc8/ESb;

    iget-object v6, v6, Lc8/ESb;->strStartFlag:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 549
    const/4 v5, 0x1

    .line 551
    :cond_1
    if-eqz v5, :cond_3

    .line 552
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lc8/eTb;->write(Ljava/lang/String;)V

    .line 560
    :goto_0
    iget-object v6, p0, Lc8/eTb;->mTracesFinder:Lc8/ESb;

    iget-object v6, v6, Lc8/ESb;->strEndFlag:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v6

    if-eqz v6, :cond_0

    .line 567
    :cond_2
    :try_start_3
    invoke-static {v4}, Lc8/vTb;->closeQuietly(Ljava/io/Closeable;)V

    move-object v3, v4

    .line 569
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "readLen":I
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :goto_1
    const-string/jumbo v6, "traces end.\n"

    invoke-virtual {p0, v6}, Lc8/eTb;->write(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 573
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "start":Z
    :goto_2
    invoke-virtual {p0}, Lc8/eTb;->printEnd()V

    .line 574
    return-void

    .line 555
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v2    # "readLen":I
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "start":Z
    :cond_3
    const/4 v6, 0x5

    if-gt v2, v6, :cond_2

    goto :goto_0

    .line 564
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "readLen":I
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 565
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    :try_start_4
    const-string/jumbo v6, "read anr file."

    invoke-static {v6, v0}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 567
    :try_start_5
    invoke-static {v3}, Lc8/vTb;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 570
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "start":Z
    :catch_1
    move-exception v0

    .line 571
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "write traces."

    invoke-static {v6, v0}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 567
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "start":Z
    :catchall_0
    move-exception v6

    :goto_4
    :try_start_6
    invoke-static {v3}, Lc8/vTb;->closeQuietly(Ljava/io/Closeable;)V

    throw v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "readLen":I
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 564
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_3
.end method


# virtual methods
.method protected printContent()V
    .locals 0

    .prologue
    .line 533
    invoke-direct {p0}, Lc8/eTb;->printTraces()V

    .line 534
    return-void
.end method
