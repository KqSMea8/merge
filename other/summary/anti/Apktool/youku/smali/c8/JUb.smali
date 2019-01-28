.class public Lc8/JUb;
.super Ljava/lang/Object;
.source "MainLooperHandler.java"

# interfaces
.implements Lc8/PUb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/KUb;-><init>(Landroid/content/Context;Lc8/IUb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/KUb;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lc8/KUb;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lc8/JUb;->this$0:Lc8/KUb;

    iput-object p2, p0, Lc8/JUb;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppMonitorStat(Ljava/lang/String;I)V
    .locals 0
    .param p1, "measureName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 55
    return-void
.end method

.method public onAppNotResponding(Ljava/lang/String;)V
    .locals 22
    .param p1, "_namePrefix"    # Ljava/lang/String;

    .prologue
    .line 61
    if-eqz p1, :cond_8

    .line 62
    const/4 v1, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/alibaba/motu/watch/stack/ThreadMsg;->New(Ljava/lang/String;Z)Lcom/alibaba/motu/watch/stack/ThreadMsg;

    move-result-object v19

    .line 66
    .local v19, "threadMsg":Lcom/alibaba/motu/watch/stack/ThreadMsg;
    :goto_0
    if-eqz v19, :cond_7

    .line 67
    new-instance v20, Lc8/TUb;

    invoke-direct/range {v20 .. v20}, Lc8/TUb;-><init>()V

    .line 68
    .local v20, "threadSerialization":Lc8/TUb;
    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/motu/watch/stack/ThreadMsg;->toString()Ljava/lang/String;

    move-result-object v10

    .line 69
    .local v10, "exceptionType":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/motu/watch/stack/ThreadMsg;->getStackTraces()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v1, v2}, Lc8/TUb;->serialization(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v21

    .line 70
    .local v21, "threads":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/motu/watch/stack/ThreadMsg;->getMainThread()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v1, v2}, Lc8/TUb;->serialization(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v16

    .line 72
    .local v16, "mainThread":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lc8/cVb;->hashCode(Ljava/lang/String;)I

    move-result v13

    .line 73
    .local v13, "hashCode":I
    const-string/jumbo v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 74
    .local v12, "hash":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lc8/JUb;->this$0:Lc8/KUb;

    invoke-static {v1}, Lc8/KUb;->access$000(Lc8/KUb;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lc8/JUb;->this$0:Lc8/KUb;

    invoke-static {v1}, Lc8/KUb;->access$000(Lc8/KUb;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 76
    :cond_0
    invoke-static {}, Lc8/HUb;->getInstance()Lc8/HUb;

    move-result-object v1

    invoke-virtual {v1}, Lc8/HUb;->getMyWatchListenerList()Ljava/util/List;

    move-result-object v14

    .line 77
    .local v14, "listenerList":Ljava/util/List;
    const/4 v8, 0x0

    .line 78
    .local v8, "callBackData":Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 79
    move-object/from16 v0, p0

    iget-object v1, v0, Lc8/JUb;->this$0:Lc8/KUb;

    invoke-static {v1, v14}, Lc8/KUb;->access$100(Lc8/KUb;Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    .line 82
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 83
    .local v7, "extData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "exceptionType"

    if-nez v10, :cond_2

    const-string/jumbo v10, "-"

    .end local v10    # "exceptionType":Ljava/lang/String;
    :cond_2
    invoke-interface {v7, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    if-eqz v8, :cond_3

    .line 85
    const-string/jumbo v1, "callBackData"

    invoke-interface {v7, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_3
    if-nez v16, :cond_4

    .line 88
    const-string/jumbo v16, "-"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_4
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lc8/JTb;->compress([B)[B

    move-result-object v17

    .line 92
    .local v17, "mainbytes":[B
    invoke-static/range {v17 .. v17}, Lc8/ITb;->encodeBase64String([B)Ljava/lang/String;

    move-result-object v15

    .line 93
    .local v15, "mainBase64":Ljava/lang/String;
    if-eqz v15, :cond_5

    .line 94
    const-string/jumbo v1, "mainThread"

    invoke-interface {v7, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    .end local v15    # "mainBase64":Ljava/lang/String;
    .end local v17    # "mainbytes":[B
    :cond_5
    :goto_1
    if-eqz v21, :cond_6

    .line 102
    :try_start_2
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lc8/JTb;->compress([B)[B

    move-result-object v11

    .line 103
    .local v11, "gzipThread":[B
    if-eqz v11, :cond_6

    .line 104
    invoke-static {v11}, Lc8/ITb;->encodeBase64String([B)Ljava/lang/String;

    move-result-object v5

    .line 105
    .local v5, "sendContent":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lc8/JUb;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/JUb;->this$0:Lc8/KUb;

    invoke-static {v2}, Lc8/KUb;->access$200(Lc8/KUb;)Ljava/lang/String;

    move-result-object v2

    const v3, 0xee4d

    const-string/jumbo v4, "ANDROID_MAINTHREAD_BLOCK"

    const-string/jumbo v6, "-"

    invoke-static/range {v1 .. v7}, Lc8/eUb;->sendLog(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Z

    move-result v18

    .line 106
    .local v18, "response":Z
    if-eqz v18, :cond_6

    .line 107
    sget-object v1, Lc8/IUb;->TAG:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    .end local v5    # "sendContent":Ljava/lang/String;
    .end local v7    # "extData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8    # "callBackData":Ljava/lang/String;
    .end local v11    # "gzipThread":[B
    .end local v14    # "listenerList":Ljava/util/List;
    .end local v18    # "response":Z
    :cond_6
    :goto_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lc8/JUb;->this$0:Lc8/KUb;

    invoke-static {v1, v12}, Lc8/KUb;->access$002(Lc8/KUb;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 121
    .end local v12    # "hash":Ljava/lang/String;
    .end local v13    # "hashCode":I
    .end local v16    # "mainThread":Ljava/lang/String;
    .end local v20    # "threadSerialization":Lc8/TUb;
    .end local v21    # "threads":Ljava/lang/String;
    :cond_7
    sget-object v1, Lc8/IUb;->TAG:Ljava/lang/String;

    .line 122
    .end local v19    # "threadMsg":Lcom/alibaba/motu/watch/stack/ThreadMsg;
    :goto_3
    return-void

    .line 64
    :cond_8
    :try_start_4
    invoke-static {}, Lcom/alibaba/motu/watch/stack/ThreadMsg;->NewMainOnly()Lcom/alibaba/motu/watch/stack/ThreadMsg;

    move-result-object v19

    .restart local v19    # "threadMsg":Lcom/alibaba/motu/watch/stack/ThreadMsg;
    goto/16 :goto_0

    .line 96
    .restart local v7    # "extData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v8    # "callBackData":Ljava/lang/String;
    .restart local v12    # "hash":Ljava/lang/String;
    .restart local v13    # "hashCode":I
    .restart local v14    # "listenerList":Ljava/util/List;
    .restart local v16    # "mainThread":Ljava/lang/String;
    .restart local v20    # "threadSerialization":Lc8/TUb;
    .restart local v21    # "threads":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 97
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 118
    .end local v7    # "extData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8    # "callBackData":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v12    # "hash":Ljava/lang/String;
    .end local v13    # "hashCode":I
    .end local v14    # "listenerList":Ljava/util/List;
    .end local v16    # "mainThread":Ljava/lang/String;
    .end local v19    # "threadMsg":Lcom/alibaba/motu/watch/stack/ThreadMsg;
    .end local v20    # "threadSerialization":Lc8/TUb;
    .end local v21    # "threads":Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 119
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_5
    sget-object v1, Lc8/IUb;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "main looper handler error."

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 121
    sget-object v1, Lc8/IUb;->TAG:Ljava/lang/String;

    goto :goto_3

    .line 110
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v7    # "extData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v8    # "callBackData":Ljava/lang/String;
    .restart local v12    # "hash":Ljava/lang/String;
    .restart local v13    # "hashCode":I
    .restart local v14    # "listenerList":Ljava/util/List;
    .restart local v16    # "mainThread":Ljava/lang/String;
    .restart local v19    # "threadMsg":Lcom/alibaba/motu/watch/stack/ThreadMsg;
    .restart local v20    # "threadSerialization":Lc8/TUb;
    .restart local v21    # "threads":Ljava/lang/String;
    :catch_2
    move-exception v9

    .line 111
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_6
    sget-object v1, Lc8/IUb;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "build main thread block err"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 121
    .end local v7    # "extData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8    # "callBackData":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v12    # "hash":Ljava/lang/String;
    .end local v13    # "hashCode":I
    .end local v14    # "listenerList":Ljava/util/List;
    .end local v16    # "mainThread":Ljava/lang/String;
    .end local v19    # "threadMsg":Lcom/alibaba/motu/watch/stack/ThreadMsg;
    .end local v20    # "threadSerialization":Lc8/TUb;
    .end local v21    # "threads":Ljava/lang/String;
    :catchall_0
    move-exception v1

    sget-object v2, Lc8/IUb;->TAG:Ljava/lang/String;

    throw v1
.end method
