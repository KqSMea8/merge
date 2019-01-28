.class public Lc8/PWf;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ZWf;->callReportCrash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ZWf;

.field final synthetic val$instanceId:Ljava/lang/String;

.field final synthetic val$origin_filename:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/ZWf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1010
    iput-object p1, p0, Lc8/PWf;->this$0:Lc8/ZWf;

    iput-object p2, p0, Lc8/PWf;->val$origin_filename:Ljava/lang/String;

    iput-object p3, p0, Lc8/PWf;->val$instanceId:Ljava/lang/String;

    iput-object p4, p0, Lc8/PWf;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 1013
    :try_start_0
    new-instance v8, Ljava/io/File;

    iget-object v0, p0, Lc8/PWf;->val$origin_filename:Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1014
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1015
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 1016
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1018
    .local v9, "result":Ljava/lang/StringBuilder;
    :try_start_1
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    iget-object v1, p0, Lc8/PWf;->val$origin_filename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1021
    .local v6, "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .local v10, "s":Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 1022
    const-string/jumbo v0, ""

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1028
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1032
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v10    # "s":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1033
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1038
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "result":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 1069
    .end local v8    # "file":Ljava/io/File;
    :cond_1
    :goto_2
    return-void

    .line 1030
    .restart local v6    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "file":Ljava/io/File;
    .restart local v9    # "result":Ljava/lang/StringBuilder;
    .restart local v10    # "s":Ljava/lang/String;
    :cond_2
    :try_start_3
    iget-object v0, p0, Lc8/PWf;->this$0:Lc8/ZWf;

    const-string/jumbo v1, "jsBridge"

    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JSC_CRASH:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lc8/PWf;->val$instanceId:Ljava/lang/String;

    iget-object v5, p0, Lc8/PWf;->val$url:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lc8/ZWf;->commitJscCrashAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1066
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "result":Ljava/lang/StringBuilder;
    .end local v10    # "s":Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 1067
    .local v11, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v0, "[WXBridgeManager] callReportCrash exception: "

    invoke-static {v0, v11}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1036
    .end local v11    # "throwable":Ljava/lang/Throwable;
    .restart local v8    # "file":Ljava/io/File;
    :cond_3
    :try_start_4
    const-string/jumbo v0, "[WXBridgeManager] callReportCrash crash file is empty"

    invoke-static {v0}, Lc8/xgg;->e(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1
.end method
