.class public Lc8/cEb;
.super Lc8/YDb;
.source "RawAlarmEvent.java"

# interfaces
.implements Lc8/bEb;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ERROR_CODE_KEY:Ljava/lang/String; = "errorCode"

.field private static final ERROR_MSG_KEY:Ljava/lang/String; = "errorMsg"


# instance fields
.field private errorCode:Ljava/lang/String;

.field private errorMsg:Ljava/lang/String;

.field private failCount:I

.field private successCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Lc8/YDb;-><init>()V

    .line 9
    iput v0, p0, Lc8/cEb;->successCount:I

    .line 10
    iput v0, p0, Lc8/cEb;->failCount:I

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 64
    invoke-super {p0}, Lc8/YDb;->clean()V

    .line 65
    iput v0, p0, Lc8/cEb;->successCount:I

    .line 66
    iput v0, p0, Lc8/cEb;->failCount:I

    .line 67
    iput-object v1, p0, Lc8/cEb;->errorCode:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lc8/cEb;->errorMsg:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public dumpToUTEvent()Lc8/hEb;
    .locals 4

    .prologue
    .line 28
    invoke-static {}, Lc8/vEb;->getInstance()Lc8/vEb;

    move-result-object v1

    const-class v2, Lc8/hEb;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lc8/vEb;->poll(Ljava/lang/Class;[Ljava/lang/Object;)Lc8/xEb;

    move-result-object v0

    check-cast v0, Lc8/hEb;

    .line 29
    .local v0, "event":Lc8/hEb;
    iget v1, p0, Lc8/cEb;->eventId:I

    iput v1, v0, Lc8/hEb;->eventId:I

    .line 30
    iget-object v1, p0, Lc8/cEb;->module:Ljava/lang/String;

    iput-object v1, v0, Lc8/hEb;->page:Ljava/lang/String;

    .line 31
    iget-object v1, p0, Lc8/cEb;->monitorPoint:Ljava/lang/String;

    iput-object v1, v0, Lc8/hEb;->arg1:Ljava/lang/String;

    .line 32
    iget v1, p0, Lc8/cEb;->successCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc8/hEb;->arg2:Ljava/lang/String;

    .line 33
    iget v1, p0, Lc8/cEb;->failCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc8/hEb;->arg3:Ljava/lang/String;

    .line 34
    iget-object v1, p0, Lc8/cEb;->errorCode:Ljava/lang/String;

    invoke-static {v1}, Lc8/aCb;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    iget-object v1, v0, Lc8/hEb;->args:Ljava/util/Map;

    const-string/jumbo v2, "errorCode"

    iget-object v3, p0, Lc8/cEb;->errorCode:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_0
    iget-object v1, p0, Lc8/cEb;->errorMsg:Ljava/lang/String;

    invoke-static {v1}, Lc8/aCb;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    iget-object v1, v0, Lc8/hEb;->args:Ljava/util/Map;

    const-string/jumbo v2, "errorMsg"

    iget-object v3, p0, Lc8/cEb;->errorMsg:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_1
    iget-object v1, p0, Lc8/cEb;->extraArg:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 41
    iget-object v1, v0, Lc8/hEb;->args:Ljava/util/Map;

    const-string/jumbo v2, "arg"

    iget-object v3, p0, Lc8/cEb;->extraArg:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_2
    return-object v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lc8/cEb;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lc8/cEb;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getFailCount()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lc8/cEb;->failCount:I

    return v0
.end method

.method public getSuccessCount()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lc8/cEb;->successCount:I

    return v0
.end method

.method public setFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lc8/cEb;->failCount:I

    .line 22
    iput-object p1, p0, Lc8/cEb;->errorCode:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lc8/cEb;->errorMsg:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setSuccess()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lc8/cEb;->successCount:I

    .line 18
    return-void
.end method
