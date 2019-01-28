.class public Lc8/VIf;
.super Ljava/lang/Object;
.source "MonitorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/UIf;
    }
.end annotation


# static fields
.field public static final CONF_DEFAULT_TIME:Ljava/lang/String; = "monitor_report_default_time"

.field public static final MONITOR_REPORT_DEFAULT_TIME:I = 0x2

.field private static final REPORT_TRIGGER_MAX:I = 0x1f4

.field static final TABLE:Ljava/lang/String; = "MonitorManager"

.field public static final TAG:Ljava/lang/String; = "MonitorManager"

.field private static path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string/jumbo v0, "mkt_monitor.db"

    sput-object v0, Lc8/VIf;->path:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    return-void
.end method

.method public static generateMonitorId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "dataId"    # Ljava/lang/String;
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 197
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "nodid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 204
    .end local p0    # "dataId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "dataId":Ljava/lang/String;
    :cond_1
    move-object p0, p1

    goto :goto_0
.end method

.method public static getMonitorReportDefaultTime()J
    .locals 4

    .prologue
    .line 209
    const-string/jumbo v1, "monitor_report_default_time"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lc8/xIf;->getRemoteInt(Ljava/lang/String;I)I

    move-result v0

    .line 210
    .local v0, "time":I
    if-gez v0, :cond_0

    const-wide/16 v2, -0x1

    :goto_0
    return-wide v2

    :cond_0
    mul-int/lit16 v1, v0, 0x3e8

    int-to-long v2, v1

    goto :goto_0
.end method

.method public static getMonitorTaskId(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "offset"    # J
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 214
    if-eqz p0, :cond_0

    .end local p0    # "tag":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "tag":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static init()V
    .locals 0

    .prologue
    .line 46
    invoke-static {}, Lc8/SIf;->query()V

    .line 47
    return-void
.end method

.method public static record(Lc8/UIf;)V
    .locals 3
    .param p0, "info"    # Lc8/UIf;

    .prologue
    .line 61
    invoke-static {}, Lc8/VIf;->getMonitorReportDefaultTime()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lc8/VIf;->record(Lc8/UIf;JZ)V

    .line 62
    return-void
.end method

.method public static record(Lc8/UIf;JZ)V
    .locals 5
    .param p0, "info"    # Lc8/UIf;
    .param p1, "time"    # J
    .param p3, "skipFilter"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 65
    const-string/jumbo v0, "monitor_all"

    invoke-static {v0, v2}, Lc8/xIf;->getRemoteInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    if-nez p3, :cond_0

    .line 66
    invoke-static {}, Lc8/VIf;->shouldReport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    :cond_0
    invoke-static {}, Lc8/cJf;->getReportProcessor()Lc8/cJf;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Lc8/cJf;->putMonitorRecordTask(JLc8/UIf;)V

    .line 68
    invoke-static {}, Lc8/SIf;->size()I

    move-result v0

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_1

    .line 69
    const-string/jumbo v0, "MonitorManager"

    new-array v1, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "trigger max report"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lc8/ZJf;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-static {}, Lc8/cJf;->getReportProcessor()Lc8/cJf;

    move-result-object v0

    invoke-virtual {v0, v3}, Lc8/cJf;->putMonitorReportTask(Z)V

    .line 73
    :cond_1
    return-void
.end method

.method public static record(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 8
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "type"    # I
    .param p2, "code"    # I
    .param p3, "source"    # I
    .param p4, "task"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static {}, Lc8/VIf;->getMonitorReportDefaultTime()J

    move-result-wide v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v7}, Lc8/VIf;->record(Ljava/lang/String;IIILjava/lang/String;J)V

    .line 51
    return-void
.end method

.method public static record(Ljava/lang/String;IIILjava/lang/String;J)V
    .locals 9
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "type"    # I
    .param p2, "code"    # I
    .param p3, "source"    # I
    .param p4, "task"    # Ljava/lang/String;
    .param p5, "time"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 54
    new-instance v0, Lc8/UIf;

    move-object v1, p0

    move v2, p1

    move-object v5, v4

    move v6, p2

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lc8/UIf;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;II)V

    .line 55
    .local v0, "info":Lc8/UIf;
    iput p3, v0, Lc8/UIf;->source:I

    .line 56
    iput-object p4, v0, Lc8/UIf;->taskId:Ljava/lang/String;

    .line 57
    invoke-static {v0, p5, p6, v3}, Lc8/VIf;->record(Lc8/UIf;JZ)V

    .line 58
    return-void
.end method

.method public static reportAckByMtop(Ljava/lang/String;Lc8/QJf;)V
    .locals 6
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "listener"    # Lc8/QJf;

    .prologue
    .line 76
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    const-string/jumbo v2, "MonitorManager"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "reportAckByMtop data is empty"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lc8/ZJf;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-static {}, Lcom/taobao/tao/messagekit/core/model/Monitor;->create()Lcom/taobao/tao/messagekit/core/model/Monitor;

    move-result-object v1

    .line 81
    .local v1, "request":Lcom/taobao/tao/messagekit/core/model/Monitor;
    invoke-virtual {v1, p0}, Lcom/taobao/tao/messagekit/core/model/Monitor;->setData(Ljava/lang/String;)V

    .line 82
    new-instance v0, Lc8/RJf;

    invoke-direct {v0, v1}, Lc8/RJf;-><init>(Lcom/taobao/tao/messagekit/core/model/IProtocol;)V

    .line 83
    .local v0, "p":Lc8/RJf;
    invoke-static {v0}, Lc8/Vlq;->just(Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v2

    new-instance v3, Lc8/TIf;

    invoke-direct {v3, v1, p1}, Lc8/TIf;-><init>(Lcom/taobao/tao/messagekit/core/model/Monitor;Lc8/QJf;)V

    invoke-virtual {v2, v3}, Lc8/Vlq;->doOnSubscribe(Lc8/hnq;)Lc8/Vlq;

    move-result-object v2

    .line 88
    invoke-static {}, Lc8/DIf;->getInstance()Lc8/DIf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/DIf;->getUpStream()Lc8/VJf;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc8/Vlq;->subscribe(Lc8/Wlq;)Lc8/Pmq;

    goto :goto_0
.end method

.method public static shouldReport()Z
    .locals 14

    .prologue
    const-wide/16 v12, 0x2710

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 219
    const-string/jumbo v7, "monitor_range_open"

    invoke-static {v7, v3}, Lc8/xIf;->getRemoteInt(Ljava/lang/String;I)I

    move-result v2

    .line 220
    .local v2, "open":I
    if-eqz v2, :cond_1

    .line 221
    const-string/jumbo v7, "monitor_range_mod"

    invoke-static {v7, v12, v13}, Lc8/xIf;->getRemoteLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 222
    .local v0, "mod":J
    sget-wide v8, Lc8/PJf;->deviceNO:J

    rem-long v4, v8, v0

    .line 223
    .local v4, "result":J
    const-string/jumbo v7, "MonitorManager"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    sget-wide v10, Lc8/PJf;->deviceNO:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v6

    const-string/jumbo v9, " report condition >>"

    aput-object v9, v8, v3

    const/4 v9, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lc8/ZJf;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    const-string/jumbo v7, "monitor_range_left"

    const-wide/16 v8, -0x2710

    invoke-static {v7, v8, v9}, Lc8/xIf;->getRemoteLong(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v7, v8, v4

    if-gtz v7, :cond_0

    const-string/jumbo v7, "monitor_range_right"

    invoke-static {v7, v12, v13}, Lc8/xIf;->getRemoteLong(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v7, v4, v8

    if-gtz v7, :cond_0

    .line 226
    .end local v0    # "mod":J
    .end local v4    # "result":J
    :goto_0
    return v3

    .restart local v0    # "mod":J
    .restart local v4    # "result":J
    :cond_0
    move v3, v6

    .line 224
    goto :goto_0

    .end local v0    # "mod":J
    .end local v4    # "result":J
    :cond_1
    move v3, v6

    .line 226
    goto :goto_0
.end method
