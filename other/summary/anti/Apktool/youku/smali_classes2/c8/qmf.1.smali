.class public Lc8/qmf;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lc8/vmf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled()V
    .locals 4

    .prologue
    .line 45
    const/4 v0, 0x2

    invoke-static {v0}, Lc8/Nmf;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const-string/jumbo v0, "DefaultListener"

    const-string/jumbo v1, "onCanceled"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lc8/Nmf;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    :cond_0
    return-void
.end method

.method public onCompleted(ZJ)V
    .locals 8

    .prologue
    const/4 v6, 0x2

    .line 31
    invoke-static {v6}, Lc8/Nmf;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const-string/jumbo v0, "DefaultListener"

    const-string/jumbo v1, "onCompleted"

    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "fromCache"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const-string/jumbo v4, "elapsed"

    aput-object v4, v3, v6

    const/4 v4, 0x3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lc8/Nmf;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    :cond_0
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 52
    const-string/jumbo v0, "DefaultListener"

    const-string/jumbo v1, "onError"

    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "code"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "msg"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    invoke-static {v0, v1, v2, v3}, Lc8/Nmf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public onPaused(Z)V
    .locals 6

    .prologue
    const/4 v3, 0x2

    .line 38
    invoke-static {v3}, Lc8/Nmf;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const-string/jumbo v0, "DefaultListener"

    const-string/jumbo v1, "onPaused"

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "isNetworkLimit"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lc8/Nmf;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    :cond_0
    return-void
.end method

.method public onProgress(JJ)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 23
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p1

    div-long/2addr v0, p3

    long-to-int v0, v0

    .line 24
    invoke-static {v6}, Lc8/Nmf;->isPrintLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    const-string/jumbo v1, "DefaultListener"

    const-string/jumbo v2, "onProgress"

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "progress"

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lc8/Nmf;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 16
    const/4 v0, 0x1

    invoke-static {v0}, Lc8/Nmf;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    const-string/jumbo v0, "DefaultListener"

    const-string/jumbo v1, "onStart"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lc8/Nmf;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    :cond_0
    return-void
.end method
