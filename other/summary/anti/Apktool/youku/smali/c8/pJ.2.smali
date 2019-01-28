.class public Lc8/pJ;
.super Ljava/lang/Object;
.source "AppMonitor.java"

# interfaces
.implements Lc8/sJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/qJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# instance fields
.field appMonitor:Lc8/sJ;


# direct methods
.method constructor <init>(Lc8/sJ;)V
    .locals 1
    .param p1, "appMonitor"    # Lc8/sJ;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/pJ;->appMonitor:Lc8/sJ;

    .line 25
    iput-object p1, p0, Lc8/pJ;->appMonitor:Lc8/sJ;

    .line 26
    return-void
.end method


# virtual methods
.method public commitAlarm(Lc8/yK;)V
    .locals 1
    .param p1, "obj"    # Lc8/yK;

    .prologue
    .line 45
    iget-object v0, p0, Lc8/pJ;->appMonitor:Lc8/sJ;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lc8/pJ;->appMonitor:Lc8/sJ;

    invoke-interface {v0, p1}, Lc8/sJ;->commitAlarm(Lc8/yK;)V

    .line 48
    :cond_0
    return-void
.end method

.method public commitCount(Lc8/zK;)V
    .locals 1
    .param p1, "object"    # Lc8/zK;

    .prologue
    .line 52
    iget-object v0, p0, Lc8/pJ;->appMonitor:Lc8/sJ;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lc8/pJ;->appMonitor:Lc8/sJ;

    invoke-interface {v0, p1}, Lc8/sJ;->commitCount(Lc8/zK;)V

    .line 55
    :cond_0
    return-void
.end method

.method public commitStat(Lanet/channel/statist/StatObject;)V
    .locals 1
    .param p1, "obj"    # Lanet/channel/statist/StatObject;

    .prologue
    .line 38
    iget-object v0, p0, Lc8/pJ;->appMonitor:Lc8/sJ;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lc8/pJ;->appMonitor:Lc8/sJ;

    invoke-interface {v0, p1}, Lc8/sJ;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 41
    :cond_0
    return-void
.end method

.method public register()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 30
    return-void
.end method

.method public register(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 34
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method
