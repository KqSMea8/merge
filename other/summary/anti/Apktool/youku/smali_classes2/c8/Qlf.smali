.class public Lc8/Qlf;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lc8/wmf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(C)I
    .locals 1

    .prologue
    .line 59
    sparse-switch p1, :sswitch_data_0

    .line 71
    const/4 v0, 0x5

    :goto_0
    return v0

    .line 61
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 63
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 65
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 67
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 69
    :sswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 59
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

    .prologue
    .line 15
    invoke-static {p1, p2}, Lc8/eOf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-static {p1, p2}, Lc8/eOf;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 40
    invoke-static {p1, p2}, Lc8/eOf;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-static {p1, p2}, Lc8/eOf;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public isPrintLog(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-static {}, Lc8/eOf;->getLogLevel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lc8/Qlf;->a(C)I

    move-result v1

    if-lt p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lc8/eOf;->isValid()Z

    move-result v0

    return v0
.end method

.method public setLogLevel(I)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 10
    invoke-static {p1, p2}, Lc8/eOf;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-static {p1, p2}, Lc8/eOf;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 30
    invoke-static {p1, p2, p3}, Lc8/eOf;->logw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    return-void
.end method
