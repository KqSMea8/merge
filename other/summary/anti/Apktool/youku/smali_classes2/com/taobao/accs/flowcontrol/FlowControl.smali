.class public Lcom/taobao/accs/flowcontrol/FlowControl;
.super Ljava/lang/Object;
.source "FlowControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;,
        Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;
    }
.end annotation


# static fields
.field public static final DELAY_MAX:I = -0x1

.field public static final DELAY_MAX_BRUSH:I = -0x3e8

.field public static final HIGH_FLOW_CTRL:I = 0x2

.field public static final HIGH_FLOW_CTRL_BRUSH:I = 0x3

.field public static final LOW_FLOW_CTRL:I = 0x1

.field public static final NO_FLOW_CTRL:I = 0x0

.field public static final SERVICE_ALL:Ljava/lang/String; = "ALL"

.field public static final SERVICE_ALL_BRUSH:Ljava/lang/String; = "ALL_BRUSH"

.field public static final STATUS_FLOW_CTRL_ALL:I = 0x1a4

.field public static final STATUS_FLOW_CTRL_BRUSH:I = 0x1a6

.field public static final STATUS_FLOW_CTRL_CUR:I = 0x1a5

.field private static final TAG:Ljava/lang/String; = "FlowControl"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFlowCtrlHolder:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/taobao/accs/flowcontrol/FlowControl;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method private checkFlowCtrl()V
    .locals 3

    .prologue
    .line 160
    iget-object v2, p0, Lcom/taobao/accs/flowcontrol/FlowControl;->mFlowCtrlHolder:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/taobao/accs/flowcontrol/FlowControl;->mFlowCtrlHolder:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    iget-object v2, v2, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;->flowCtrlMap:Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 161
    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v2, p0, Lcom/taobao/accs/flowcontrol/FlowControl;->mFlowCtrlHolder:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    iget-object v2, v2, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;->flowCtrlMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 163
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;

    .line 165
    .local v0, "info":Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;
    invoke-virtual {v0}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 169
    .end local v0    # "info":Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;>;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;>;>;"
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;>;>;"
    :cond_2
    return-void
.end method

.method private checkFlowCtrlInfo(JJ)Z
    .locals 5
    .param p1, "delay"    # J
    .param p3, "expire"    # J

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 98
    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    cmp-long v1, p3, v2

    if-gtz v1, :cond_1

    .line 99
    :cond_0
    const-string/jumbo v1, "FlowControl"

    const-string/jumbo v2, "error flow ctrl info"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getFlowCtrlDelay(Ljava/lang/String;Ljava/lang/String;)J
    .locals 25
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "bizId"    # Ljava/lang/String;

    .prologue
    .line 105
    const-wide/16 v4, 0x0

    .line 106
    .local v4, "delay":J
    const-wide/16 v10, 0x0

    .line 107
    .local v10, "globalDelay":J
    const-wide/16 v6, 0x0

    .line 108
    .local v6, "globalBrushDelay":J
    const-wide/16 v18, 0x0

    .line 109
    .local v18, "serviceDelay":J
    const-wide/16 v14, 0x0

    .line 110
    .local v14, "result":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/flowcontrol/FlowControl;->mFlowCtrlHolder:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/flowcontrol/FlowControl;->mFlowCtrlHolder:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;->flowCtrlMap:Ljava/util/Map;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_1

    :cond_0
    move-wide/from16 v16, v14

    .line 156
    .end local v14    # "result":J
    .local v16, "result":J
    :goto_0
    return-wide v16

    .line 116
    .end local v16    # "result":J
    .restart local v14    # "result":J
    :cond_1
    monitor-enter p0

    .line 117
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/flowcontrol/FlowControl;->mFlowCtrlHolder:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    move-object/from16 v22, v0

    const-string/jumbo v23, "ALL"

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;

    move-result-object v9

    .line 118
    .local v9, "globalInfo":Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/flowcontrol/FlowControl;->mFlowCtrlHolder:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    move-object/from16 v22, v0

    const-string/jumbo v23, "ALL_BRUSH"

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;

    move-result-object v8

    .line 119
    .local v8, "globalBrushInfo":Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/flowcontrol/FlowControl;->mFlowCtrlHolder:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;

    move-result-object v13

    .line 120
    .local v13, "serviceInfo":Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/flowcontrol/FlowControl;->mFlowCtrlHolder:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;

    move-result-object v12

    .line 122
    .local v12, "info":Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;
    if-eqz v9, :cond_2

    .line 123
    invoke-virtual {v9}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->isExpired()Z

    move-result v22

    if-eqz v22, :cond_a

    const-wide/16 v10, 0x0

    .line 126
    :cond_2
    :goto_1
    if-eqz v8, :cond_3

    .line 127
    invoke-virtual {v8}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->isExpired()Z

    move-result v22

    if-eqz v22, :cond_b

    const-wide/16 v6, 0x0

    .line 130
    :cond_3
    :goto_2
    if-eqz v13, :cond_4

    .line 131
    invoke-virtual {v13}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->isExpired()Z

    move-result v22

    if-eqz v22, :cond_c

    const-wide/16 v18, 0x0

    .line 134
    :cond_4
    :goto_3
    if-eqz v12, :cond_5

    .line 135
    invoke-virtual {v12}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->isExpired()Z

    move-result v22

    if-eqz v22, :cond_d

    const-wide/16 v4, 0x0

    .line 138
    :cond_5
    :goto_4
    const-wide/16 v22, -0x1

    cmp-long v22, v10, v22

    if-eqz v22, :cond_6

    const-wide/16 v22, -0x1

    cmp-long v22, v4, v22

    if-eqz v22, :cond_6

    const-wide/16 v22, -0x1

    cmp-long v22, v18, v22

    if-nez v22, :cond_e

    .line 141
    :cond_6
    const-wide/16 v14, -0x1

    .line 149
    :goto_5
    if-eqz v12, :cond_7

    invoke-virtual {v12}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->isExpired()Z

    move-result v22

    if-nez v22, :cond_8

    :cond_7
    if-eqz v9, :cond_9

    invoke-virtual {v9}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->isExpired()Z

    move-result v22

    if-eqz v22, :cond_9

    .line 151
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/taobao/accs/flowcontrol/FlowControl;->checkFlowCtrl()V

    .line 153
    :cond_9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    const-string/jumbo v22, "FlowControl"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "getFlowCtrlDelay service "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " biz "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " result:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " global:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " serviceDelay:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " bidDelay:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-static/range {v22 .. v24}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide/from16 v16, v14

    .line 156
    .end local v14    # "result":J
    .restart local v16    # "result":J
    goto/16 :goto_0

    .line 123
    .end local v16    # "result":J
    .restart local v14    # "result":J
    :cond_a
    :try_start_1
    iget-wide v10, v9, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->delayTime:J

    goto/16 :goto_1

    .line 127
    :cond_b
    iget-wide v6, v8, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->delayTime:J

    goto/16 :goto_2

    .line 131
    :cond_c
    iget-wide v0, v13, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->delayTime:J

    move-wide/from16 v18, v0

    goto/16 :goto_3

    .line 135
    :cond_d
    iget-wide v4, v12, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->delayTime:J

    goto/16 :goto_4

    .line 142
    :cond_e
    const-wide/16 v22, -0x1

    cmp-long v22, v6, v22

    if-nez v22, :cond_f

    .line 143
    const-wide/16 v14, -0x3e8

    goto/16 :goto_5

    .line 145
    :cond_f
    cmp-long v22, v10, v4

    if-lez v22, :cond_10

    move-wide/from16 v20, v10

    .line 146
    .local v20, "temp":J
    :goto_6
    cmp-long v22, v20, v18

    if-lez v22, :cond_11

    move-wide/from16 v14, v20

    :goto_7
    goto/16 :goto_5

    .end local v20    # "temp":J
    :cond_10
    move-wide/from16 v20, v4

    .line 145
    goto :goto_6

    .restart local v20    # "temp":J
    :cond_11
    move-wide/from16 v14, v18

    .line 146
    goto :goto_7

    .line 153
    .end local v8    # "globalBrushInfo":Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;
    .end local v9    # "globalInfo":Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;
    .end local v12    # "info":Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;
    .end local v13    # "serviceInfo":Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;
    .end local v20    # "temp":J
    :catchall_0
    move-exception v22

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v22
.end method

.method public updateFlowCtrlInfo(Ljava/util/Map;Ljava/lang/String;)I
    .locals 16
    .param p2, "serviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "extHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-wide/16 v6, 0x0

    .line 40
    .local v6, "delay":J
    const/4 v5, 0x0

    .line 42
    .local v5, "status":I
    if-eqz p1, :cond_9

    .line 43
    :try_start_0
    sget-object v3, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_STATUS:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-virtual {v3}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 44
    .local v14, "statusStr":Ljava/lang/String;
    sget-object v3, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_DELAY:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-virtual {v3}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 45
    .local v12, "delayStr":Ljava/lang/String;
    sget-object v3, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_EXPIRE:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-virtual {v3}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 46
    .local v13, "expireStr":Ljava/lang/String;
    sget-object v3, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_BUSINESS:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-virtual {v3}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 47
    .local v4, "bizId":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v5, 0x0

    .line 48
    :goto_0
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-wide/16 v6, 0x0

    .line 49
    :goto_1
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-wide/16 v8, 0x0

    .line 51
    .local v8, "expire":J
    :goto_2
    const/16 v3, 0x1a4

    if-eq v5, v3, :cond_0

    const/16 v3, 0x1a5

    if-eq v5, v3, :cond_0

    const/16 v3, 0x1a6

    if-ne v5, v3, :cond_1

    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/taobao/accs/flowcontrol/FlowControl;->checkFlowCtrlInfo(JJ)Z

    move-result v3

    if-nez v3, :cond_5

    .line 55
    :cond_1
    const/4 v3, 0x0

    .line 92
    .end local v4    # "bizId":Ljava/lang/String;
    .end local v8    # "expire":J
    .end local v12    # "delayStr":Ljava/lang/String;
    .end local v13    # "expireStr":Ljava/lang/String;
    .end local v14    # "statusStr":Ljava/lang/String;
    :goto_3
    return v3

    .line 47
    .restart local v4    # "bizId":Ljava/lang/String;
    .restart local v12    # "delayStr":Ljava/lang/String;
    .restart local v13    # "expireStr":Ljava/lang/String;
    .restart local v14    # "statusStr":Ljava/lang/String;
    :cond_2
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_0

    .line 48
    :cond_3
    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_1

    .line 49
    :cond_4
    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_2

    .line 57
    .restart local v8    # "expire":J
    :cond_5
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/flowcontrol/FlowControl;->mFlowCtrlHolder:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    if-nez v3, :cond_6

    .line 59
    new-instance v3, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    invoke-direct {v3}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/taobao/accs/flowcontrol/FlowControl;->mFlowCtrlHolder:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    .line 61
    :cond_6
    const/4 v2, 0x0

    .line 62
    .local v2, "ctrlInfo":Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;
    const/16 v3, 0x1a4

    if-ne v5, v3, :cond_a

    .line 63
    new-instance v2, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;

    .end local v2    # "ctrlInfo":Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;
    const-string/jumbo v3, "ALL"

    const-string/jumbo v4, ""

    .end local v4    # "bizId":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct/range {v2 .. v11}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IJJJ)V

    .line 65
    .restart local v2    # "ctrlInfo":Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/flowcontrol/FlowControl;->mFlowCtrlHolder:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    const-string/jumbo v10, "ALL"

    const-string/jumbo v11, ""

    invoke-virtual {v3, v10, v11, v2}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;->put(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;)V

    .line 75
    :cond_7
    :goto_4
    if-eqz v2, :cond_8

    .line 76
    const-string/jumbo v3, "FlowControl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateFlowCtrlInfo "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v3, v10, v11}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    :cond_8
    monitor-exit p0

    .line 84
    .end local v2    # "ctrlInfo":Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;
    .end local v8    # "expire":J
    .end local v12    # "delayStr":Ljava/lang/String;
    .end local v13    # "expireStr":Ljava/lang/String;
    .end local v14    # "statusStr":Ljava/lang/String;
    :cond_9
    :goto_5
    const-wide/16 v10, 0x0

    cmp-long v3, v6, v10

    if-lez v3, :cond_c

    .line 85
    const/4 v3, 0x1

    goto :goto_3

    .line 66
    .restart local v2    # "ctrlInfo":Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;
    .restart local v4    # "bizId":Ljava/lang/String;
    .restart local v8    # "expire":J
    .restart local v12    # "delayStr":Ljava/lang/String;
    .restart local v13    # "expireStr":Ljava/lang/String;
    .restart local v14    # "statusStr":Ljava/lang/String;
    :cond_a
    const/16 v3, 0x1a6

    if-ne v5, v3, :cond_b

    .line 67
    new-instance v2, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;

    .end local v2    # "ctrlInfo":Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;
    const-string/jumbo v3, "ALL_BRUSH"

    const-string/jumbo v4, ""

    .end local v4    # "bizId":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct/range {v2 .. v11}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IJJJ)V

    .line 69
    .restart local v2    # "ctrlInfo":Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/flowcontrol/FlowControl;->mFlowCtrlHolder:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    const-string/jumbo v10, "ALL_BRUSH"

    const-string/jumbo v11, ""

    invoke-virtual {v3, v10, v11, v2}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;->put(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;)V

    goto :goto_4

    .line 78
    .end local v2    # "ctrlInfo":Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 81
    .end local v8    # "expire":J
    .end local v12    # "delayStr":Ljava/lang/String;
    .end local v13    # "expireStr":Ljava/lang/String;
    .end local v14    # "statusStr":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 82
    .local v15, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "FlowControl"

    const-string/jumbo v10, "updateFlowCtrlInfo"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v3, v10, v15, v11}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_5

    .line 70
    .end local v15    # "t":Ljava/lang/Throwable;
    .restart local v2    # "ctrlInfo":Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;
    .restart local v4    # "bizId":Ljava/lang/String;
    .restart local v8    # "expire":J
    .restart local v12    # "delayStr":Ljava/lang/String;
    .restart local v13    # "expireStr":Ljava/lang/String;
    .restart local v14    # "statusStr":Ljava/lang/String;
    :cond_b
    const/16 v3, 0x1a5

    if-ne v5, v3, :cond_7

    :try_start_3
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 71
    new-instance v2, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;

    .end local v2    # "ctrlInfo":Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v11}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IJJJ)V

    .line 73
    .restart local v2    # "ctrlInfo":Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/flowcontrol/FlowControl;->mFlowCtrlHolder:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v4, v2}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;->put(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    .line 86
    .end local v2    # "ctrlInfo":Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;
    .end local v4    # "bizId":Ljava/lang/String;
    .end local v8    # "expire":J
    .end local v12    # "delayStr":Ljava/lang/String;
    .end local v13    # "expireStr":Ljava/lang/String;
    .end local v14    # "statusStr":Ljava/lang/String;
    :cond_c
    const-wide/16 v10, 0x0

    cmp-long v3, v6, v10

    if-nez v3, :cond_d

    .line 87
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 89
    :cond_d
    const/16 v3, 0x1a6

    if-ne v3, v5, :cond_e

    .line 90
    const/4 v3, 0x3

    goto/16 :goto_3

    .line 92
    :cond_e
    const/4 v3, 0x2

    goto/16 :goto_3
.end method
