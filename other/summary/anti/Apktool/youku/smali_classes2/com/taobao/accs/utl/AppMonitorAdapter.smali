.class public Lcom/taobao/accs/utl/AppMonitorAdapter;
.super Ljava/lang/Object;
.source "AppMonitorAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "errorCode"    # Ljava/lang/String;
    .param p4, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 24
    new-instance v0, Lc8/yK;

    invoke-direct {v0}, Lc8/yK;-><init>()V

    .line 25
    .local v0, "obj":Lc8/yK;
    iput-object p0, v0, Lc8/yK;->module:Ljava/lang/String;

    .line 26
    iput-object p1, v0, Lc8/yK;->modulePoint:Ljava/lang/String;

    .line 27
    iput-object p2, v0, Lc8/yK;->arg:Ljava/lang/String;

    .line 28
    iput-object p3, v0, Lc8/yK;->errorCode:Ljava/lang/String;

    .line 29
    iput-object p4, v0, Lc8/yK;->errorMsg:Ljava/lang/String;

    .line 30
    const/4 v1, 0x0

    iput-boolean v1, v0, Lc8/yK;->isSuccess:Z

    .line 31
    invoke-static {}, Lc8/qJ;->getInstance()Lc8/sJ;

    move-result-object v1

    invoke-interface {v1, v0}, Lc8/sJ;->commitAlarm(Lc8/yK;)V

    .line 32
    return-void
.end method

.method public static commitAlarmSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;

    .prologue
    .line 14
    new-instance v0, Lc8/yK;

    invoke-direct {v0}, Lc8/yK;-><init>()V

    .line 15
    .local v0, "obj":Lc8/yK;
    iput-object p0, v0, Lc8/yK;->module:Ljava/lang/String;

    .line 16
    iput-object p1, v0, Lc8/yK;->modulePoint:Ljava/lang/String;

    .line 17
    iput-object p2, v0, Lc8/yK;->arg:Ljava/lang/String;

    .line 18
    const/4 v1, 0x1

    iput-boolean v1, v0, Lc8/yK;->isSuccess:Z

    .line 19
    invoke-static {}, Lc8/qJ;->getInstance()Lc8/sJ;

    move-result-object v1

    invoke-interface {v1, v0}, Lc8/sJ;->commitAlarm(Lc8/yK;)V

    .line 20
    return-void
.end method

.method public static commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 3
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "value"    # D

    .prologue
    .line 35
    new-instance v0, Lc8/zK;

    invoke-direct {v0}, Lc8/zK;-><init>()V

    .line 36
    .local v0, "obj":Lc8/zK;
    iput-object p0, v0, Lc8/zK;->module:Ljava/lang/String;

    .line 37
    iput-object p1, v0, Lc8/zK;->modulePoint:Ljava/lang/String;

    .line 38
    iput-object p2, v0, Lc8/zK;->arg:Ljava/lang/String;

    .line 39
    iput-wide p3, v0, Lc8/zK;->value:D

    .line 40
    invoke-static {}, Lc8/qJ;->getInstance()Lc8/sJ;

    move-result-object v1

    invoke-interface {v1, v0}, Lc8/sJ;->commitCount(Lc8/zK;)V

    .line 41
    return-void
.end method
