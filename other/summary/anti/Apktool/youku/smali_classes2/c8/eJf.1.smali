.class public abstract Lc8/eJf;
.super Ljava/lang/Object;
.source "MonitorTask.java"


# static fields
.field public static final NORMAL_REQ:Ljava/lang/String; = "NORMAL"

.field public static final SHUTDOWN_REQ:Ljava/lang/String; = "SHUTDOWN"


# instance fields
.field private TAG:Ljava/lang/String;

.field protected taskFlag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string/jumbo v0, "MonitorTask"

    iput-object v0, p0, Lc8/eJf;->TAG:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, "NORMAL"

    iput-object v0, p0, Lc8/eJf;->taskFlag:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "NORMAL"

    iput-object v0, p0, Lc8/eJf;->taskFlag:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public abstract execute()V
.end method

.method public getTaskFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lc8/eJf;->taskFlag:Ljava/lang/String;

    return-object v0
.end method

.method public mergeExecute()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 27
    :try_start_0
    invoke-virtual {p0}, Lc8/eJf;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lc8/eJf;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "MonitorTask run error"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lc8/ZJf;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public abstract type()I
.end method
