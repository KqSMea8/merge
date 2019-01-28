.class public Lc8/Qco;
.super Ljava/lang/Object;
.source "ApiBridge.java"

# interfaces
.implements Lc8/Hco;


# annotations
.annotation runtime Lc8/Gco;
    value = "ApiBridge"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method compile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "identity"    # Ljava/lang/String;
    .param p2, "returnValue"    # Ljava/lang/String;
    .param p3, "error"    # Ljava/lang/String;

    .prologue
    .line 25
    const-string/jumbo v0, "ApiBridge.compile"

    invoke-static {v0}, Lc8/Oao;->d(Ljava/lang/String;)I

    .line 26
    return-void
.end method

.method jsLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ApiBridge.JSLog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/Oao;->d(Ljava/lang/String;)I

    .line 33
    return-void
.end method

.method onBridgeInitComplete()V
    .locals 1

    .prologue
    .line 21
    const-string/jumbo v0, "ApiBridge.onBridgeInitComplete"

    invoke-static {v0}, Lc8/Oao;->d(Ljava/lang/String;)I

    .line 22
    return-void
.end method

.method public onDestory()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public onInit()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method setPageScroll(Z)V
    .locals 2
    .param p1, "isScrollOn"    # Z

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ApiBridge.setPageScroll:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/Oao;->d(Ljava/lang/String;)I

    .line 37
    return-void
.end method
