.class public Lc8/PJ;
.super Ljava/lang/Object;
.source "TLogAdapter.java"

# interfaces
.implements Lc8/IL;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private convertTLogLevel(C)I
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 58
    sparse-switch p1, :sswitch_data_0

    .line 70
    const/4 v0, 0x5

    :goto_0
    return v0

    .line 60
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 62
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 64
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 66
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 68
    :sswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 58
    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_1
        0x45 -> :sswitch_4
        0x49 -> :sswitch_2
        0x56 -> :sswitch_0
        0x57 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-static {p1, p2}, Lc8/eOf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static {p1, p2}, Lc8/eOf;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 39
    invoke-static {p1, p2}, Lc8/eOf;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-static {p1, p2}, Lc8/eOf;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public isPrintLog(I)Z
    .locals 2
    .param p1, "level"    # I

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-static {}, Lc8/eOf;->getLogLevel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lc8/PJ;->convertTLogLevel(C)I

    move-result v1

    if-lt p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lc8/eOf;->isValid()Z

    move-result v0

    return v0
.end method

.method public setLogLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 50
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p1, p2}, Lc8/eOf;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 29
    invoke-static {p1, p2, p3}, Lc8/eOf;->logw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    return-void
.end method
