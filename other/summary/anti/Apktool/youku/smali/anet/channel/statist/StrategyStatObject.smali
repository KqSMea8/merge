.class public Lanet/channel/statist/StrategyStatObject;
.super Lanet/channel/statist/StatObject;
.source "StrategyStatObject.java"


# annotations
.annotation runtime Lc8/CK;
    module = "networkPrefer"
    monitorPoint = "strategy_stat"
.end annotation


# instance fields
.field public errorTrace:Ljava/lang/StringBuilder;
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public isFileExists:I
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public isReadObjectSucceed:I
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public isRenameSucceed:I
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public isSucceed:I
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public isTempWriteSucceed:I
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public readStrategyFileId:Ljava/lang/String;
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public readStrategyFilePath:Ljava/lang/String;
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public type:I
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public writeStrategyFileId:Ljava/lang/String;
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public writeStrategyFilePath:Ljava/lang/String;
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public writeTempFilePath:Ljava/lang/String;
    .annotation runtime Lc8/AK;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 11
    invoke-direct {p0}, Lanet/channel/statist/StatObject;-><init>()V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lanet/channel/statist/StrategyStatObject;->type:I

    .line 12
    iput p1, p0, Lanet/channel/statist/StrategyStatObject;->type:I

    .line 13
    return-void
.end method


# virtual methods
.method public appendErrorTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 57
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lanet/channel/statist/StrategyStatObject;->errorTrace:Ljava/lang/StringBuilder;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lanet/channel/statist/StrategyStatObject;->errorTrace:Ljava/lang/StringBuilder;

    .line 59
    :cond_0
    iget-object v1, p0, Lanet/channel/statist/StrategyStatObject;->errorTrace:Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    return-void
.end method

.method public beforeCommit()Z
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lc8/TI;->isTargetProcess()Z

    move-result v0

    return v0
.end method
