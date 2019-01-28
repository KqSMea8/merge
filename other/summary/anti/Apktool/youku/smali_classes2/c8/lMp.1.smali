.class public Lc8/lMp;
.super Ljava/lang/Object;
.source "TLogAdapterImpl.java"

# interfaces
.implements Lc8/kMp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Lc8/eOf;->getLogLevel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "logLevel"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 25
    sparse-switch p1, :sswitch_data_0

    .line 44
    :goto_0
    return-void

    .line 28
    :sswitch_0
    invoke-static {p2, p3}, Lc8/eOf;->logv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 31
    :sswitch_1
    invoke-static {p2, p3}, Lc8/eOf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 34
    :sswitch_2
    invoke-static {p2, p3}, Lc8/eOf;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :sswitch_3
    invoke-static {p2, p3, p4}, Lc8/eOf;->logw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 40
    :sswitch_4
    invoke-static {p2, p3, p4}, Lc8/eOf;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 25
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method

.method public traceLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "clientTraceId"    # Ljava/lang/String;
    .param p2, "serverTraceId"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-static {p1, p2}, Lc8/eOf;->traceLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method
