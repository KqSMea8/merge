.class public Lc8/Wrf;
.super Ljava/lang/Object;
.source "OnLineMonitor.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/msf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DynamicHandler"
.end annotation


# instance fields
.field mDynamicType:I

.field mFieldConnection:Ljava/lang/reflect/Field;

.field mFieldDispatcher:Ljava/lang/reflect/Field;

.field mFieldReceiver:Ljava/lang/reflect/Field;

.field mFieldServiceDispatcher:Ljava/lang/reflect/Field;

.field mOutOnLineMonitor:Lc8/msf;

.field mOutterObject:Ljava/lang/Object;

.field mTargetObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lc8/msf;I)V
    .locals 0
    .param p1, "onLineMonitor"    # Lc8/msf;
    .param p2, "dynamicType"    # I

    .prologue
    .line 5921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5922
    iput-object p1, p0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    .line 5923
    iput p2, p0, Lc8/Wrf;->mDynamicType:I

    .line 5924
    return-void
.end method

.method private static _1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    move-object v2, p0

    invoke-virtual {v0, v2}, Lcom/ali/mobisecenhance/Invocation;->initThis(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    const/4 v1, 0x1

    move-object v2, p2

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->before_Method_invoke(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Object;

    move-object p1, v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object p2, v2

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual/range {p0 .. p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_1
    :goto_0
    invoke-static {v0, v1, v3}, Lcom/ali/mobisecenhance/ReflectMap;->after_Method_invoke(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private static _2forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 67
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 5980
    const/16 v57, 0x0

    .line 5981
    .local v57, "ret":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget v5, v0, Lc8/Wrf;->mDynamicType:I

    const/16 v6, 0xa

    if-ne v5, v6, :cond_7

    .line 5984
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    if-eqz v5, :cond_5

    .line 5985
    const/4 v10, 0x0

    .line 5986
    .local v10, "closeMessage":Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v5, p3, v5

    if-eqz v5, :cond_0

    .line 5987
    const/4 v5, 0x1

    aget-object v5, p3, v5

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const/4 v6, 0x2

    const/16 v7, 0xf

    invoke-static {v5, v6, v7}, Lc8/msf;->getStackTraceElement([Ljava/lang/StackTraceElement;II)Ljava/lang/String;

    move-result-object v10

    .line 5990
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    .line 5991
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v62

    .line 5992
    .local v62, "size":I
    const/16 v34, 0x0

    .local v34, "i":I
    :goto_0
    move/from16 v0, v34

    move/from16 v1, v62

    if-ge v0, v1, :cond_2

    .line 5993
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/psf;

    .line 5994
    .local v4, "onlineStatistics":Lc8/psf;
    if-eqz v4, :cond_1

    .line 5995
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    const/4 v6, 0x1

    const-string/jumbo v7, "Close"

    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    iget-object v8, v8, Lc8/msf;->mActivityName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface/range {v4 .. v11}, Lc8/psf;->onBlockOrCloseGuard(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 5992
    :cond_1
    add-int/lit8 v34, v34, 0x1

    goto :goto_0

    .line 6000
    .end local v4    # "onlineStatistics":Lc8/psf;
    .end local v34    # "i":I
    .end local v62    # "size":I
    :cond_2
    sget-boolean v5, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v5, :cond_3

    if-eqz v10, :cond_3

    .line 6001
    const-string/jumbo v5, "OnLineMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u672a\u53ca\u65f6\u5173\u95ed\u7684\u53e5\u67c4\uff1a\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "</br>"

    const-string/jumbo v8, "\n"

    invoke-virtual {v10, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6004
    :cond_3
    sget-boolean v5, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v5, v5, Lc8/Asf;->mCloseGuardInfo:Ljava/util/HashMap;

    if-eqz v5, :cond_4

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 6005
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v5, v5, Lc8/Asf;->mCloseGuardInfo:Ljava/util/HashMap;

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Integer;

    .line 6006
    .local v39, "integer":Ljava/lang/Integer;
    if-eqz v39, :cond_6

    .line 6007
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v5, v5, Lc8/Asf;->mCloseGuardInfo:Ljava/util/HashMap;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6012
    .end local v39    # "integer":Ljava/lang/Integer;
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mTargetObject:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v0, v5, v1}, Lc8/Wrf;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v57

    .line 6389
    .end local v10    # "closeMessage":Ljava/lang/String;
    .end local v57    # "ret":Ljava/lang/Object;
    :cond_5
    :goto_2
    return-object v57

    .line 6009
    .restart local v10    # "closeMessage":Ljava/lang/String;
    .restart local v39    # "integer":Ljava/lang/Integer;
    .restart local v57    # "ret":Ljava/lang/Object;
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v5, v5, Lc8/Asf;->mCloseGuardInfo:Ljava/util/HashMap;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 6016
    .end local v10    # "closeMessage":Ljava/lang/String;
    .end local v39    # "integer":Ljava/lang/Integer;
    :catch_0
    move-exception v5

    goto :goto_2

    .line 6018
    :cond_7
    move-object/from16 v0, p0

    iget v5, v0, Lc8/Wrf;->mDynamicType:I

    const/16 v6, 0x14

    if-ne v5, v6, :cond_1b

    .line 6022
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    .line 6023
    .local v14, "name":Ljava/lang/String;
    const/16 v17, 0x0

    .line 6024
    .local v17, "stackMessage":Ljava/lang/String;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    if-ne v5, v6, :cond_8

    .line 6025
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const/4 v6, 0x2

    const/16 v7, 0xa

    invoke-static {v5, v6, v7}, Lc8/msf;->getStackTraceElement([Ljava/lang/StackTraceElement;II)Ljava/lang/String;

    move-result-object v17

    .line 6026
    const-string/jumbo v5, "onWriteToDisk"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string/jumbo v5, "dumpGfxInfo"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 6027
    const/16 v17, 0x0

    .line 6031
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    if-eqz v5, :cond_10

    .line 6032
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    if-eqz v5, :cond_b

    if-eqz v17, :cond_b

    .line 6033
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v62

    .line 6034
    .restart local v62    # "size":I
    const/16 v34, 0x0

    .restart local v34    # "i":I
    :goto_3
    move/from16 v0, v34

    move/from16 v1, v62

    if-ge v0, v1, :cond_a

    .line 6035
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/psf;

    .line 6036
    .restart local v4    # "onlineStatistics":Lc8/psf;
    if-eqz v4, :cond_9

    .line 6037
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    iget-object v12, v5, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    iget-object v15, v5, Lc8/msf;->mActivityName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x0

    move-object v11, v4

    invoke-interface/range {v11 .. v18}, Lc8/psf;->onBlockOrCloseGuard(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 6034
    :cond_9
    add-int/lit8 v34, v34, 0x1

    goto :goto_3

    .line 6041
    .end local v4    # "onlineStatistics":Lc8/psf;
    :cond_a
    const-string/jumbo v5, "OnLineMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u4e3b\u7ebf\u7a0b\u8017\u65f6\u8bbf\u95ee\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6045
    .end local v34    # "i":I
    .end local v62    # "size":I
    :cond_b
    sget-boolean v5, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v5, v5, Lc8/Asf;->mMainThreadBlockGuardInfo:Ljava/util/HashMap;

    if-eqz v5, :cond_c

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 6046
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v5, v5, Lc8/Asf;->mMainThreadBlockGuardInfo:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Integer;

    .line 6047
    .restart local v39    # "integer":Ljava/lang/Integer;
    if-eqz v39, :cond_11

    .line 6048
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v5, v5, Lc8/Asf;->mMainThreadBlockGuardInfo:Ljava/util/HashMap;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6054
    .end local v39    # "integer":Ljava/lang/Integer;
    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mBlockGuardThreadInfo:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v5, :cond_10

    .line 6055
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v65

    .line 6056
    .local v65, "threadName":Ljava/lang/String;
    if-eqz v65, :cond_d

    .line 6057
    const-string/jumbo v5, "@("

    move-object/from16 v0, v65

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_12

    const-string/jumbo v5, "["

    move-object/from16 v0, v65

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 6058
    const-string/jumbo v5, "@("

    move-object/from16 v0, v65

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v36

    .line 6059
    .local v36, "indexStart":I
    const/16 v5, 0x5b

    move-object/from16 v0, v65

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v35

    .line 6060
    .local v35, "indexLast":I
    add-int/lit8 v5, v36, 0x2

    move-object/from16 v0, v65

    move/from16 v1, v35

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v65

    .line 6066
    .end local v35    # "indexLast":I
    .end local v36    # "indexStart":I
    :cond_d
    :goto_5
    const-string/jumbo v5, "SharedPreferencesImpl-load"

    move-object/from16 v0, v65

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mProblemCheck:Lc8/rsf;

    if-eqz v5, :cond_e

    .line 6068
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v64

    .line 6070
    .local v64, "thread":Ljava/lang/Thread;
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mProblemCheck:Lc8/rsf;

    move-object/from16 v0, v64

    invoke-virtual {v5, v0}, Lc8/rsf;->regSharedPreferenceListener(Ljava/lang/Thread;)V

    .line 6072
    .end local v64    # "thread":Ljava/lang/Thread;
    :cond_e
    move-object/from16 v43, v65

    .line 6073
    .local v43, "key":Ljava/lang/String;
    sget-boolean v5, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v5, :cond_f

    .line 6074
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .line 6076
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mBlockGuardThreadInfo:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;

    .line 6077
    .local v47, "newThreadInfo":Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;
    if-eqz v47, :cond_15

    .line 6078
    const-string/jumbo v5, "onWriteToDisk"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 6079
    move-object/from16 v0, v47

    iget v5, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->writeTimes:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v47

    iput v5, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->writeTimes:I

    .line 6080
    move-object/from16 v0, v47

    iget v5, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->readWriteTimes:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v47

    iput v5, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->readWriteTimes:I

    .line 6120
    .end local v43    # "key":Ljava/lang/String;
    .end local v47    # "newThreadInfo":Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;
    .end local v65    # "threadName":Ljava/lang/String;
    :cond_10
    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mTargetObject:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v0, v5, v1}, Lc8/Wrf;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v57

    .line 6121
    if-nez v57, :cond_5

    .line 6122
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v57

    .local v57, "ret":Ljava/lang/Integer;
    goto/16 :goto_2

    .line 6050
    .restart local v39    # "integer":Ljava/lang/Integer;
    .local v57, "ret":Ljava/lang/Object;
    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v5, v5, Lc8/Asf;->mMainThreadBlockGuardInfo:Ljava/util/HashMap;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 6126
    .end local v14    # "name":Ljava/lang/String;
    .end local v17    # "stackMessage":Ljava/lang/String;
    .end local v39    # "integer":Ljava/lang/Integer;
    .end local v57    # "ret":Ljava/lang/Object;
    :catch_1
    move-exception v5

    goto/16 :goto_2

    .line 6061
    .restart local v14    # "name":Ljava/lang/String;
    .restart local v17    # "stackMessage":Ljava/lang/String;
    .restart local v57    # "ret":Ljava/lang/Object;
    .restart local v65    # "threadName":Ljava/lang/String;
    :cond_12
    invoke-virtual/range {v65 .. v65}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x8

    if-le v5, v6, :cond_d

    const-string/jumbo v5, "@"

    move-object/from16 v0, v65

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 6062
    const/16 v5, 0x40

    move-object/from16 v0, v65

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v35

    .line 6063
    .restart local v35    # "indexLast":I
    const/4 v5, 0x0

    move-object/from16 v0, v65

    move/from16 v1, v35

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v65

    goto/16 :goto_5

    .line 6081
    .end local v35    # "indexLast":I
    .restart local v43    # "key":Ljava/lang/String;
    .restart local v47    # "newThreadInfo":Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;
    :cond_13
    const-string/jumbo v5, "onReadFromDisk"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 6082
    move-object/from16 v0, v47

    iget v5, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->readTimes:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v47

    iput v5, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->readTimes:I

    .line 6083
    move-object/from16 v0, v47

    iget v5, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->readWriteTimes:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v47

    iput v5, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->readWriteTimes:I

    goto :goto_6

    .line 6084
    :cond_14
    const-string/jumbo v5, "onNetwork"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 6085
    move-object/from16 v0, v47

    iget v5, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->netTimes:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v47

    iput v5, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->netTimes:I

    goto/16 :goto_6

    .line 6088
    :cond_15
    new-instance v47, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;

    .end local v47    # "newThreadInfo":Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;
    invoke-direct/range {v47 .. v47}, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;-><init>()V

    .line 6089
    .restart local v47    # "newThreadInfo":Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;
    const-string/jumbo v5, "onWriteToDisk"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 6090
    const/4 v5, 0x1

    move-object/from16 v0, v47

    iput v5, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->writeTimes:I

    .line 6091
    const/4 v5, 0x1

    move-object/from16 v0, v47

    iput v5, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->readWriteTimes:I

    .line 6098
    :cond_16
    :goto_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    move-object/from16 v0, v47

    iput-wide v6, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->id:J

    .line 6099
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    move-object/from16 v0, v47

    iput v5, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->tid:I

    .line 6100
    move-object/from16 v0, v47

    iget v5, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->tid:I

    invoke-static {v5}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v5

    move-object/from16 v0, v47

    iput v5, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->nice:I

    .line 6101
    move-object/from16 v0, v65

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->name:Ljava/lang/String;

    .line 6102
    sget-boolean v5, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v5, :cond_17

    .line 6103
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const/4 v6, 0x7

    const/16 v7, 0xf

    invoke-static {v5, v6, v7}, Lc8/msf;->getStackTraceElement([Ljava/lang/StackTraceElement;II)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v47

    iput-object v5, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->stacks:Ljava/lang/String;

    .line 6105
    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mBlockGuardThreadInfo:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v43

    move-object/from16 v1, v47

    invoke-virtual {v5, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6106
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    iget-boolean v5, v5, Lc8/msf;->mFileSchedIsNotExists:Z

    if-nez v5, :cond_10

    .line 6107
    move-object/from16 v0, v47

    iget v5, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->tid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    .line 6108
    .local v38, "intKey":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mBlockGuardThreadInfoTid:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;

    .line 6109
    .local v51, "oldThreadInfo":Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;
    if-eqz v51, :cond_18

    .line 6110
    const/4 v5, 0x1

    move-object/from16 v0, v51

    iput-boolean v5, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->multiplex:Z

    .line 6111
    const/4 v5, 0x1

    move-object/from16 v0, v47

    iput-boolean v5, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->multiplex:Z

    .line 6113
    :cond_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mBlockGuardThreadInfoTid:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v38

    move-object/from16 v1, v47

    invoke-virtual {v5, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 6092
    .end local v38    # "intKey":Ljava/lang/Integer;
    .end local v51    # "oldThreadInfo":Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;
    :cond_19
    const-string/jumbo v5, "onReadFromDisk"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 6093
    const/4 v5, 0x1

    move-object/from16 v0, v47

    iput v5, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->readTimes:I

    .line 6094
    const/4 v5, 0x1

    move-object/from16 v0, v47

    iput v5, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->readWriteTimes:I

    goto/16 :goto_7

    .line 6095
    :cond_1a
    const-string/jumbo v5, "onNetwork"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 6096
    const/4 v5, 0x1

    move-object/from16 v0, v47

    iput v5, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->netTimes:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_7

    .line 6129
    .end local v14    # "name":Ljava/lang/String;
    .end local v17    # "stackMessage":Ljava/lang/String;
    .end local v43    # "key":Ljava/lang/String;
    .end local v47    # "newThreadInfo":Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;
    .end local v65    # "threadName":Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, p0

    iget v5, v0, Lc8/Wrf;->mDynamicType:I

    const/16 v6, 0x1e

    if-ne v5, v6, :cond_22

    .line 6132
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    .line 6133
    .restart local v14    # "name":Ljava/lang/String;
    const/16 v47, 0x0

    .line 6134
    .restart local v47    # "newThreadInfo":Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;
    const/16 v46, 0x0

    .line 6135
    .local v46, "needTrace":Z
    if-eqz v14, :cond_1d

    const-string/jumbo v5, "acquire"

    invoke-virtual {v14, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1c

    const-string/jumbo v5, "release"

    invoke-virtual {v14, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 6136
    :cond_1c
    const/16 v46, 0x1

    .line 6138
    :cond_1d
    sget-boolean v5, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v5, :cond_1e

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    if-eqz v5, :cond_1e

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mTraceDetail:Lc8/Asf;

    if-eqz v5, :cond_1e

    if-eqz v46, :cond_1e

    .line 6140
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v5, v5, Lc8/Asf;->mWakeLockInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0xc8

    if-ge v5, v6, :cond_1e

    .line 6141
    new-instance v47, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;

    .end local v47    # "newThreadInfo":Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;
    invoke-direct/range {v47 .. v47}, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;-><init>()V

    .line 6142
    .restart local v47    # "newThreadInfo":Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    move-object/from16 v0, v47

    iput-wide v6, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->id:J

    .line 6143
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    move-object/from16 v0, v47

    iput v5, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->tid:I

    .line 6144
    move-object/from16 v0, v47

    iget v5, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->tid:I

    invoke-static {v5}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v5

    move-object/from16 v0, v47

    iput v5, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->nice:I

    .line 6145
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v47

    iput-object v5, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->name:Ljava/lang/String;

    .line 6146
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mActivityName:Ljava/lang/String;

    move-object/from16 v0, v47

    iput-object v5, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->activityName:Ljava/lang/String;

    .line 6147
    move-object/from16 v0, v47

    iput-object v14, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->methodName:Ljava/lang/String;

    .line 6148
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    move-object/from16 v0, v47

    iput-wide v6, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->useTime:J

    .line 6151
    :cond_1e
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mTargetObject:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v0, v5, v1}, Lc8/Wrf;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v57

    .line 6152
    const/16 v24, 0x0

    .line 6153
    .local v24, "stacks":Ljava/lang/String;
    if-eqz v46, :cond_1f

    .line 6154
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const/4 v6, 0x7

    const/16 v7, 0xf

    invoke-static {v5, v6, v7}, Lc8/msf;->getStackTraceElement([Ljava/lang/StackTraceElement;II)Ljava/lang/String;

    move-result-object v24

    .line 6156
    :cond_1f
    if-eqz v47, :cond_20

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    if-eqz v5, :cond_20

    .line 6157
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    move-object/from16 v0, v47

    iget-wide v8, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->useTime:J

    sub-long/2addr v6, v8

    move-object/from16 v0, v47

    iput-wide v6, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->useTime:J

    .line 6158
    move-object/from16 v0, v24

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->stacks:Ljava/lang/String;

    .line 6159
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v5, v5, Lc8/Asf;->mWakeLockInfoList:Ljava/util/ArrayList;

    move-object/from16 v0, v47

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6161
    :cond_20
    if-eqz v46, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    .line 6162
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v62

    .line 6163
    .restart local v62    # "size":I
    const/16 v34, 0x0

    .restart local v34    # "i":I
    :goto_8
    move/from16 v0, v34

    move/from16 v1, v62

    if-ge v0, v1, :cond_5

    .line 6164
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/psf;

    .line 6165
    .restart local v4    # "onlineStatistics":Lc8/psf;
    if-eqz v4, :cond_21

    .line 6166
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    iget-object v0, v5, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    iget-object v0, v5, Lc8/msf;->mActivityName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v23

    const/16 v25, 0x0

    move-object/from16 v18, v4

    move-object/from16 v21, v14

    invoke-interface/range {v18 .. v25}, Lc8/psf;->onBlockOrCloseGuard(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_7

    .line 6163
    :cond_21
    add-int/lit8 v34, v34, 0x1

    goto :goto_8

    .line 6177
    .end local v4    # "onlineStatistics":Lc8/psf;
    .end local v14    # "name":Ljava/lang/String;
    .end local v24    # "stacks":Ljava/lang/String;
    .end local v34    # "i":I
    .end local v46    # "needTrace":Z
    .end local v47    # "newThreadInfo":Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;
    .end local v62    # "size":I
    :cond_22
    move-object/from16 v0, p0

    iget v5, v0, Lc8/Wrf;->mDynamicType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 6180
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    div-long v52, v6, v8

    .line 6181
    .local v52, "realtime":J
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v28

    .line 6182
    .local v28, "cputime":J
    const/16 v60, 0x0

    .line 6183
    .local v60, "serInfo":Lcom/taobao/onlinemonitor/TraceDetail$ServiceInfo;
    const/16 v41, 0x0

    .line 6184
    .local v41, "isTraceMethod":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    iget-object v0, v5, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v44, v0

    .line 6187
    .local v44, "mTraceDetail":Lc8/Asf;
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    .line 6188
    .restart local v14    # "name":Ljava/lang/String;
    const/16 v27, 0x0

    .line 6189
    .local v27, "broadCastInfo":Lcom/taobao/onlinemonitor/TraceDetail$BroadCastInfo;
    sget-boolean v5, Lc8/Asf;->sTraceActivityManager:Z

    if-eqz v5, :cond_28

    move-object/from16 v0, v44

    iget-object v5, v0, Lc8/Asf;->mServiceInfoList:Ljava/util/ArrayList;

    if-eqz v5, :cond_28

    move-object/from16 v0, v44

    iget-object v5, v0, Lc8/Asf;->mBroadCastInfoList:Ljava/util/ArrayList;

    if-eqz v5, :cond_28

    .line 6190
    const-string/jumbo v5, "registerReceiver"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 6192
    new-instance v37, Lcom/taobao/onlinemonitor/TraceDetail$BroadCastInfo;

    invoke-direct/range {v37 .. v37}, Lcom/taobao/onlinemonitor/TraceDetail$BroadCastInfo;-><init>()V

    .line 6193
    .local v37, "info":Lcom/taobao/onlinemonitor/TraceDetail$BroadCastInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mActivityName:Ljava/lang/String;

    invoke-static {v5}, Lc8/msf;->getSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v37

    iput-object v5, v0, Lcom/taobao/onlinemonitor/TraceDetail$BroadCastInfo;->activityName:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 6195
    const/4 v5, 0x2

    :try_start_4
    aget-object v5, p3, v5

    if-eqz v5, :cond_23

    .line 6197
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mFieldDispatcher:Ljava/lang/reflect/Field;

    const/4 v6, 0x2

    aget-object v6, p3, v6

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/ref/WeakReference;

    .line 6198
    .local v50, "objWeakDispatcher":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;"
    if-eqz v50, :cond_23

    .line 6199
    invoke-virtual/range {v50 .. v50}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v49

    .line 6200
    .local v49, "objDispatcher":Ljava/lang/Object;
    if-eqz v49, :cond_23

    .line 6201
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mFieldReceiver:Ljava/lang/reflect/Field;

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v56

    .line 6202
    .local v56, "receviver":Ljava/lang/Object;
    if-eqz v56, :cond_23

    .line 6203
    invoke-virtual/range {v56 .. v56}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v37

    iput-object v5, v0, Lcom/taobao/onlinemonitor/TraceDetail$BroadCastInfo;->className:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 6211
    .end local v49    # "objDispatcher":Ljava/lang/Object;
    .end local v50    # "objWeakDispatcher":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;"
    .end local v56    # "receviver":Ljava/lang/Object;
    :cond_23
    :goto_9
    :try_start_5
    move-object/from16 v0, v37

    iget-object v5, v0, Lcom/taobao/onlinemonitor/TraceDetail$BroadCastInfo;->className:Ljava/lang/String;

    if-nez v5, :cond_26

    .line 6213
    new-instance v59, Ljava/lang/StringBuilder;

    const/16 v5, 0xc8

    move-object/from16 v0, v59

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6214
    .local v59, "sbStack":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v66

    .line 6215
    .local v66, "threadStack":[Ljava/lang/StackTraceElement;
    const/16 v42, 0x5

    .local v42, "j":I
    :goto_a
    move-object/from16 v0, v66

    array-length v5, v0

    move/from16 v0, v42

    if-ge v0, v5, :cond_25

    .line 6216
    aget-object v5, v66, v42

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v63

    .line 6217
    .local v63, "tempStr":Ljava/lang/String;
    if-eqz v63, :cond_24

    const-string/jumbo v5, "Proxy.invoke"

    move-object/from16 v0, v63

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_24

    const-string/jumbo v5, "onlinemonitor"

    move-object/from16 v0, v63

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_24

    .line 6220
    move-object/from16 v0, v59

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6221
    const-string/jumbo v5, "<br>"

    move-object/from16 v0, v59

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6215
    :cond_24
    add-int/lit8 v42, v42, 0x1

    goto :goto_a

    .line 6208
    .end local v42    # "j":I
    .end local v59    # "sbStack":Ljava/lang/StringBuilder;
    .end local v63    # "tempStr":Ljava/lang/String;
    .end local v66    # "threadStack":[Ljava/lang/StackTraceElement;
    :catch_2
    move-exception v32

    .line 6209
    .local v32, "e":Ljava/lang/Exception;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_9

    .line 6385
    .end local v14    # "name":Ljava/lang/String;
    .end local v27    # "broadCastInfo":Lcom/taobao/onlinemonitor/TraceDetail$BroadCastInfo;
    .end local v32    # "e":Ljava/lang/Exception;
    .end local v37    # "info":Lcom/taobao/onlinemonitor/TraceDetail$BroadCastInfo;
    .end local v57    # "ret":Ljava/lang/Object;
    :catch_3
    move-exception v32

    .line 6386
    .restart local v32    # "e":Ljava/lang/Exception;
    :goto_b
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 6223
    .end local v32    # "e":Ljava/lang/Exception;
    .restart local v14    # "name":Ljava/lang/String;
    .restart local v27    # "broadCastInfo":Lcom/taobao/onlinemonitor/TraceDetail$BroadCastInfo;
    .restart local v37    # "info":Lcom/taobao/onlinemonitor/TraceDetail$BroadCastInfo;
    .restart local v42    # "j":I
    .restart local v57    # "ret":Ljava/lang/Object;
    .restart local v59    # "sbStack":Ljava/lang/StringBuilder;
    .restart local v66    # "threadStack":[Ljava/lang/StackTraceElement;
    :cond_25
    :try_start_6
    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v37

    iput-object v5, v0, Lcom/taobao/onlinemonitor/TraceDetail$BroadCastInfo;->stackTrace:Ljava/lang/String;

    .line 6225
    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v37

    iput-object v5, v0, Lcom/taobao/onlinemonitor/TraceDetail$BroadCastInfo;->className:Ljava/lang/String;

    .line 6228
    .end local v42    # "j":I
    .end local v59    # "sbStack":Ljava/lang/StringBuilder;
    .end local v66    # "threadStack":[Ljava/lang/StackTraceElement;
    :cond_26
    const-string/jumbo v5, "Reg"

    move-object/from16 v0, v37

    iput-object v5, v0, Lcom/taobao/onlinemonitor/TraceDetail$BroadCastInfo;->option:Ljava/lang/String;

    .line 6229
    move-object/from16 v0, v44

    iget v5, v0, Lc8/Asf;->mBroadCastSize:I

    move-object/from16 v0, v37

    iput v5, v0, Lcom/taobao/onlinemonitor/TraceDetail$BroadCastInfo;->size:I

    .line 6230
    move-object/from16 v27, v37

    .line 6231
    const/4 v5, 0x3

    aget-object v33, p3, v5

    check-cast v33, Landroid/content/IntentFilter;

    .line 6232
    .local v33, "filter":Landroid/content/IntentFilter;
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    .line 6233
    .local v58, "sb":Ljava/lang/StringBuilder;
    const/16 v34, 0x0

    .restart local v34    # "i":I
    :goto_c
    if-eqz v33, :cond_27

    invoke-virtual/range {v33 .. v33}, Landroid/content/IntentFilter;->countActions()I

    move-result v5

    move/from16 v0, v34

    if-ge v0, v5, :cond_27

    .line 6234
    invoke-virtual/range {v33 .. v34}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v26

    .line 6235
    .local v26, "action":Ljava/lang/String;
    move-object/from16 v0, v58

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "<br>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6233
    add-int/lit8 v34, v34, 0x1

    goto :goto_c

    .line 6237
    .end local v26    # "action":Ljava/lang/String;
    :cond_27
    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v37

    iput-object v5, v0, Lcom/taobao/onlinemonitor/TraceDetail$BroadCastInfo;->strAction:Ljava/lang/String;

    .line 6238
    move-object/from16 v0, v44

    iget-object v5, v0, Lc8/Asf;->mBroadCastInfoList:Ljava/util/ArrayList;

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6321
    .end local v33    # "filter":Landroid/content/IntentFilter;
    .end local v34    # "i":I
    .end local v37    # "info":Lcom/taobao/onlinemonitor/TraceDetail$BroadCastInfo;
    .end local v58    # "sb":Ljava/lang/StringBuilder;
    :cond_28
    :goto_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mTargetObject:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v0, v5, v1}, Lc8/Wrf;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v57

    .line 6322
    const-string/jumbo v5, "startActivity"

    invoke-virtual {v14, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 6324
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mLoadTimeCalculate:Lc8/Prf;

    if-eqz v5, :cond_29

    .line 6325
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mLoadTimeCalculate:Lc8/Prf;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    iput-wide v6, v5, Lc8/Prf;->mStartActivityTime:J

    .line 6336
    :cond_29
    :goto_e
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    sub-long v54, v6, v52

    .line 6337
    .local v54, "realtime2":J
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v6

    sub-long v30, v6, v28

    .line 6338
    .local v30, "cputime2":J
    if-eqz v60, :cond_2a

    .line 6339
    move-wide/from16 v0, v54

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/TraceDetail$ServiceInfo;->realTime:J

    .line 6340
    move-wide/from16 v0, v30

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/TraceDetail$ServiceInfo;->cpuTime:J

    .line 6344
    :cond_2a
    if-nez v57, :cond_2d

    .line 6345
    const-string/jumbo v5, "broadcastIntent"

    invoke-virtual {v14, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2c

    const-string/jumbo v5, "startActivity"

    invoke-virtual {v14, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2b

    const-string/jumbo v5, "startActivityAndWait"

    invoke-virtual {v14, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    :cond_2b
    const-string/jumbo v5, "bindService"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2c

    const-string/jumbo v5, "getActivityDisplayId"

    invoke-virtual {v14, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 6346
    :cond_2c
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v57

    .line 6349
    .end local v57    # "ret":Ljava/lang/Object;
    :cond_2d
    sget-boolean v5, Lc8/Asf;->sTraceActivityManager:Z

    if-eqz v5, :cond_2f

    .line 6350
    sget-short v5, Lc8/Asf;->sThreadExecuteTimeInterval:S

    int-to-long v6, v5

    cmp-long v5, v54, v6

    if-ltz v5, :cond_2e

    .line 6351
    const/16 v41, 0x1

    .line 6353
    :cond_2e
    if-eqz v41, :cond_2f

    move-object/from16 v0, v44

    iget-object v5, v0, Lc8/Asf;->mMethodInfoList:Ljava/util/ArrayList;

    if-eqz v5, :cond_2f

    .line 6354
    new-instance v45, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;

    invoke-direct/range {v45 .. v45}, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;-><init>()V

    .line 6355
    .local v45, "methodInfo":Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mActivityName:Ljava/lang/String;

    invoke-static {v5}, Lc8/msf;->getSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v45

    iput-object v5, v0, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;->activityName:Ljava/lang/String;

    .line 6356
    move-object/from16 v0, v45

    iput-object v14, v0, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;->methodName:Ljava/lang/String;

    .line 6357
    move-wide/from16 v0, v54

    move-object/from16 v2, v45

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;->realTime:J

    .line 6358
    move-wide/from16 v0, v30

    move-object/from16 v2, v45

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;->cpuTime:J

    .line 6359
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v45

    iput-object v5, v0, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;->threadName:Ljava/lang/String;

    .line 6360
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    invoke-static {v5}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v5

    move-object/from16 v0, v45

    iput v5, v0, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;->priority:I

    .line 6361
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    move-object/from16 v0, v45

    iput-object v5, v0, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;->threadStack:[Ljava/lang/StackTraceElement;

    .line 6362
    move-object/from16 v0, v44

    iget-object v5, v0, Lc8/Asf;->mMethodInfoList:Ljava/util/ArrayList;

    move-object/from16 v0, v45

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6376
    .end local v45    # "methodInfo":Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;
    :cond_2f
    sget-boolean v5, Lc8/Asf;->sTraceThreadPool:Z

    if-eqz v5, :cond_5

    .line 6377
    const-string/jumbo v5, "newThread"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 6378
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutterObject:Ljava/lang/Object;

    instance-of v5, v5, Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;

    if-eqz v5, :cond_5

    .line 6379
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Wrf;->mOutterObject:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;

    .line 6380
    .local v37, "info":Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;
    move-object/from16 v0, v37

    iget v5, v0, Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;->newThreadSize:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v37

    iput v5, v0, Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;->newThreadSize:I

    goto/16 :goto_2

    .line 6239
    .end local v30    # "cputime2":J
    .end local v37    # "info":Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;
    .end local v54    # "realtime2":J
    .restart local v57    # "ret":Ljava/lang/Object;
    :cond_30
    const-string/jumbo v5, "unregisterReceiver"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 6241
    new-instance v37, Lcom/taobao/onlinemonitor/TraceDetail$BroadCastInfo;

    invoke-direct/range {v37 .. v37}, Lcom/taobao/onlinemonitor/TraceDetail$BroadCastInfo;-><init>()V

    .line 6242
    .local v37, "info":Lcom/taobao/onlinemonitor/TraceDetail$BroadCastInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mActivityName:Ljava/lang/String;

    invoke-static {v5}, Lc8/msf;->getSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v37

    iput-object v5, v0, Lcom/taobao/onlinemonitor/TraceDetail$BroadCastInfo;->activityName:Ljava/lang/String;

    .line 6243
    const-string/jumbo v5, ""

    move-object/from16 v0, v37

    iput-object v5, v0, Lcom/taobao/onlinemonitor/TraceDetail$BroadCastInfo;->strAction:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 6246
    :try_start_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mFieldDispatcher:Ljava/lang/reflect/Field;

    const/4 v6, 0x0

    aget-object v6, p3, v6

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/ref/WeakReference;

    .line 6247
    .restart local v50    # "objWeakDispatcher":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;"
    if-eqz v50, :cond_31

    .line 6248
    invoke-virtual/range {v50 .. v50}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v49

    .line 6249
    .restart local v49    # "objDispatcher":Ljava/lang/Object;
    if-eqz v49, :cond_31

    .line 6250
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mFieldReceiver:Ljava/lang/reflect/Field;

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v56

    .line 6251
    .restart local v56    # "receviver":Ljava/lang/Object;
    if-eqz v56, :cond_31

    .line 6252
    invoke-virtual/range {v56 .. v56}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v37

    iput-object v5, v0, Lcom/taobao/onlinemonitor/TraceDetail$BroadCastInfo;->className:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 6259
    .end local v49    # "objDispatcher":Ljava/lang/Object;
    .end local v50    # "objWeakDispatcher":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;"
    .end local v56    # "receviver":Ljava/lang/Object;
    :cond_31
    :goto_f
    move-object/from16 v27, v37

    .line 6260
    :try_start_8
    const-string/jumbo v5, "unReg"

    move-object/from16 v0, v37

    iput-object v5, v0, Lcom/taobao/onlinemonitor/TraceDetail$BroadCastInfo;->option:Ljava/lang/String;

    .line 6261
    move-object/from16 v0, v44

    iget v5, v0, Lc8/Asf;->mBroadCastSize:I

    move-object/from16 v0, v37

    iput v5, v0, Lcom/taobao/onlinemonitor/TraceDetail$BroadCastInfo;->size:I

    .line 6262
    move-object/from16 v0, v44

    iget-object v5, v0, Lc8/Asf;->mBroadCastInfoList:Ljava/util/ArrayList;

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 6256
    :catch_4
    move-exception v32

    .line 6257
    .restart local v32    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f

    .line 6263
    .end local v32    # "e":Ljava/lang/Exception;
    .end local v37    # "info":Lcom/taobao/onlinemonitor/TraceDetail$BroadCastInfo;
    :cond_32
    const-string/jumbo v5, "startService"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_33

    const-string/jumbo v5, "bindService"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_33

    const-string/jumbo v5, "unbindService"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_33

    const-string/jumbo v5, "stopService"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 6266
    :cond_33
    new-instance v61, Lcom/taobao/onlinemonitor/TraceDetail$ServiceInfo;

    invoke-direct/range {v61 .. v61}, Lcom/taobao/onlinemonitor/TraceDetail$ServiceInfo;-><init>()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 6268
    .end local v60    # "serInfo":Lcom/taobao/onlinemonitor/TraceDetail$ServiceInfo;
    .local v61, "serInfo":Lcom/taobao/onlinemonitor/TraceDetail$ServiceInfo;
    :try_start_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v65

    .line 6269
    .restart local v65    # "threadName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    invoke-static {v5}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v5

    move-object/from16 v0, v61

    iput v5, v0, Lcom/taobao/onlinemonitor/TraceDetail$ServiceInfo;->priority:I

    .line 6270
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mActivityName:Ljava/lang/String;

    invoke-static {v5}, Lc8/msf;->getSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v61

    iput-object v5, v0, Lcom/taobao/onlinemonitor/TraceDetail$ServiceInfo;->activityName:Ljava/lang/String;

    .line 6271
    move-object/from16 v0, v61

    iput-object v14, v0, Lcom/taobao/onlinemonitor/TraceDetail$ServiceInfo;->methodName:Ljava/lang/String;

    .line 6272
    move-object/from16 v0, v65

    move-object/from16 v1, v61

    iput-object v0, v1, Lcom/taobao/onlinemonitor/TraceDetail$ServiceInfo;->threadName:Ljava/lang/String;

    .line 6273
    if-eqz p3, :cond_38

    .line 6274
    const/16 v34, 0x0

    .restart local v34    # "i":I
    :goto_10
    move-object/from16 v0, p3

    array-length v5, v0

    move/from16 v0, v34

    if-ge v0, v5, :cond_35

    .line 6275
    aget-object v5, p3, v34

    instance-of v5, v5, Landroid/content/Intent;

    if-eqz v5, :cond_34

    .line 6276
    aget-object v40, p3, v34

    check-cast v40, Landroid/content/Intent;

    .line 6277
    .local v40, "intent":Landroid/content/Intent;
    invoke-virtual/range {v40 .. v40}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_34

    .line 6278
    invoke-virtual/range {v40 .. v40}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v61

    iput-object v5, v0, Lcom/taobao/onlinemonitor/TraceDetail$ServiceInfo;->serviceName:Ljava/lang/String;

    .line 6274
    .end local v40    # "intent":Landroid/content/Intent;
    :cond_34
    add-int/lit8 v34, v34, 0x1

    goto :goto_10

    .line 6283
    :cond_35
    const/16 v48, 0x0

    .line 6284
    .local v48, "objArg":Ljava/lang/Object;
    const-string/jumbo v5, "bindService"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 6285
    const/4 v5, 0x4

    aget-object v48, p3, v5

    .line 6286
    const/4 v5, 0x4

    aget-object v5, p3, v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v61

    iput-object v5, v0, Lcom/taobao/onlinemonitor/TraceDetail$ServiceInfo;->serviceConnection:Ljava/lang/String;

    .line 6288
    .end local v48    # "objArg":Ljava/lang/Object;
    :cond_36
    const-string/jumbo v5, "unbindService"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 6289
    const/4 v5, 0x0

    aget-object v48, p3, v5

    .line 6290
    .restart local v48    # "objArg":Ljava/lang/Object;
    const/4 v5, 0x0

    aget-object v5, p3, v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v61

    iput-object v5, v0, Lcom/taobao/onlinemonitor/TraceDetail$ServiceInfo;->serviceConnection:Ljava/lang/String;

    .line 6292
    .end local v48    # "objArg":Ljava/lang/Object;
    :cond_37
    move-object/from16 v0, v61

    iget-object v5, v0, Lcom/taobao/onlinemonitor/TraceDetail$ServiceInfo;->serviceConnection:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    if-eqz v5, :cond_39

    .line 6295
    :try_start_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mFieldServiceDispatcher:Ljava/lang/reflect/Field;

    move-object/from16 v0, v48

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/ref/WeakReference;

    .line 6296
    .restart local v50    # "objWeakDispatcher":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;"
    if-eqz v50, :cond_38

    .line 6297
    invoke-virtual/range {v50 .. v50}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v49

    .line 6298
    .restart local v49    # "objDispatcher":Ljava/lang/Object;
    if-eqz v49, :cond_38

    .line 6299
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mFieldConnection:Ljava/lang/reflect/Field;

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v56

    .line 6300
    .restart local v56    # "receviver":Ljava/lang/Object;
    if-eqz v56, :cond_38

    .line 6301
    invoke-virtual/range {v56 .. v56}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v61

    iput-object v5, v0, Lcom/taobao/onlinemonitor/TraceDetail$ServiceInfo;->serviceConnection:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 6312
    .end local v34    # "i":I
    .end local v49    # "objDispatcher":Ljava/lang/Object;
    .end local v50    # "objWeakDispatcher":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;"
    .end local v56    # "receviver":Ljava/lang/Object;
    :cond_38
    :goto_11
    :try_start_b
    move-object/from16 v0, v44

    iget-object v5, v0, Lc8/Asf;->mServiceInfoList:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v60, v61

    .end local v61    # "serInfo":Lcom/taobao/onlinemonitor/TraceDetail$ServiceInfo;
    .restart local v60    # "serInfo":Lcom/taobao/onlinemonitor/TraceDetail$ServiceInfo;
    goto/16 :goto_d

    .line 6305
    .end local v60    # "serInfo":Lcom/taobao/onlinemonitor/TraceDetail$ServiceInfo;
    .restart local v34    # "i":I
    .restart local v61    # "serInfo":Lcom/taobao/onlinemonitor/TraceDetail$ServiceInfo;
    :catch_5
    move-exception v32

    .line 6306
    .restart local v32    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11

    .line 6385
    .end local v32    # "e":Ljava/lang/Exception;
    .end local v34    # "i":I
    .end local v65    # "threadName":Ljava/lang/String;
    :catch_6
    move-exception v32

    move-object/from16 v60, v61

    .end local v61    # "serInfo":Lcom/taobao/onlinemonitor/TraceDetail$ServiceInfo;
    .restart local v60    # "serInfo":Lcom/taobao/onlinemonitor/TraceDetail$ServiceInfo;
    goto/16 :goto_b

    .line 6309
    .end local v60    # "serInfo":Lcom/taobao/onlinemonitor/TraceDetail$ServiceInfo;
    .restart local v34    # "i":I
    .restart local v61    # "serInfo":Lcom/taobao/onlinemonitor/TraceDetail$ServiceInfo;
    .restart local v65    # "threadName":Ljava/lang/String;
    :cond_39
    const-string/jumbo v5, ""

    move-object/from16 v0, v61

    iput-object v5, v0, Lcom/taobao/onlinemonitor/TraceDetail$ServiceInfo;->serviceConnection:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_11

    .line 6327
    .end local v34    # "i":I
    .end local v61    # "serInfo":Lcom/taobao/onlinemonitor/TraceDetail$ServiceInfo;
    .end local v65    # "threadName":Ljava/lang/String;
    .restart local v60    # "serInfo":Lcom/taobao/onlinemonitor/TraceDetail$ServiceInfo;
    :cond_3a
    :try_start_c
    const-string/jumbo v5, "registerReceiver"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3b

    const-string/jumbo v5, "unregisterReceiver"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 6328
    :cond_3b
    if-eqz v27, :cond_29

    .line 6329
    if-eqz v44, :cond_3c

    .line 6330
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wrf;->mOutOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mProblemCheck:Lc8/rsf;

    sget-object v6, Lc8/osf;->sApplication:Landroid/app/Application;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lc8/rsf;->checkBroadCastCount(Landroid/app/Application;Z)I

    move-result v5

    move-object/from16 v0, v44

    iput v5, v0, Lc8/Asf;->mBroadCastSize:I

    .line 6332
    :cond_3c
    move-object/from16 v0, v44

    iget v5, v0, Lc8/Asf;->mBroadCastSize:I

    move-object/from16 v0, v27

    iput v5, v0, Lcom/taobao/onlinemonitor/TraceDetail$BroadCastInfo;->size:I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_e

    .line 6174
    .end local v14    # "name":Ljava/lang/String;
    .end local v27    # "broadCastInfo":Lcom/taobao/onlinemonitor/TraceDetail$BroadCastInfo;
    .end local v28    # "cputime":J
    .end local v41    # "isTraceMethod":Z
    .end local v44    # "mTraceDetail":Lc8/Asf;
    .end local v52    # "realtime":J
    .end local v57    # "ret":Ljava/lang/Object;
    .end local v60    # "serInfo":Lcom/taobao/onlinemonitor/TraceDetail$ServiceInfo;
    :catch_7
    move-exception v5

    goto/16 :goto_2
.end method

.method public newProxyInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "targetObject"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    .line 5928
    iput-object p1, p0, Lc8/Wrf;->mTargetObject:Ljava/lang/Object;

    .line 5930
    :try_start_0
    sget-boolean v4, Lc8/Asf;->sTraceActivityManager:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lc8/Wrf;->mDynamicType:I

    if-ne v4, v5, :cond_0

    .line 5931
    const-string/jumbo v4, "android.app.LoadedApk$ReceiverDispatcher"

    invoke-static {v4}, Lc8/Wrf;->_2forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 5932
    .local v2, "receiverDispatcher":Ljava/lang/Class;
    const-string/jumbo v4, "android.app.LoadedApk$ReceiverDispatcher$InnerReceiver"

    invoke-static {v4}, Lc8/Wrf;->_2forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 5933
    .local v1, "innerReceiver":Ljava/lang/Class;
    const-string/jumbo v4, "android.app.LoadedApk$ServiceDispatcher$InnerConnection"

    invoke-static {v4}, Lc8/Wrf;->_2forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 5934
    .local v0, "innerConnection":Ljava/lang/Class;
    const-string/jumbo v4, "android.app.LoadedApk$ServiceDispatcher"

    invoke-static {v4}, Lc8/Wrf;->_2forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 5935
    .local v3, "serviceDispatcher":Ljava/lang/Class;
    const-string/jumbo v4, "mDispatcher"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    iput-object v4, p0, Lc8/Wrf;->mFieldDispatcher:Ljava/lang/reflect/Field;

    .line 5936
    const-string/jumbo v4, "mReceiver"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    iput-object v4, p0, Lc8/Wrf;->mFieldReceiver:Ljava/lang/reflect/Field;

    .line 5937
    const-string/jumbo v4, "mDispatcher"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    iput-object v4, p0, Lc8/Wrf;->mFieldServiceDispatcher:Ljava/lang/reflect/Field;

    .line 5938
    const-string/jumbo v4, "mConnection"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    iput-object v4, p0, Lc8/Wrf;->mFieldConnection:Ljava/lang/reflect/Field;

    .line 5940
    iget-object v4, p0, Lc8/Wrf;->mFieldReceiver:Ljava/lang/reflect/Field;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 5941
    iget-object v4, p0, Lc8/Wrf;->mFieldDispatcher:Ljava/lang/reflect/Field;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 5942
    iget-object v4, p0, Lc8/Wrf;->mFieldServiceDispatcher:Ljava/lang/reflect/Field;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 5943
    iget-object v4, p0, Lc8/Wrf;->mFieldConnection:Ljava/lang/reflect/Field;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5948
    .end local v0    # "innerConnection":Ljava/lang/Class;
    .end local v1    # "innerReceiver":Ljava/lang/Class;
    .end local v2    # "receiverDispatcher":Ljava/lang/Class;
    .end local v3    # "serviceDispatcher":Ljava/lang/Class;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v5

    invoke-static {v4, v5, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v4

    goto :goto_0
.end method
