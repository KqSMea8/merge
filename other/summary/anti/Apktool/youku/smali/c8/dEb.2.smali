.class public Lc8/dEb;
.super Lc8/YDb;
.source "RawCountEvent.java"

# interfaces
.implements Lc8/bEb;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private count:I

.field private value:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lc8/YDb;-><init>()V

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 2

    .prologue
    .line 36
    invoke-super {p0}, Lc8/YDb;->clean()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lc8/dEb;->count:I

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/dEb;->value:D

    .line 39
    return-void
.end method

.method public dumpToUTEvent()Lc8/hEb;
    .locals 4

    .prologue
    .line 13
    invoke-static {}, Lc8/vEb;->getInstance()Lc8/vEb;

    move-result-object v1

    const-class v2, Lc8/hEb;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lc8/vEb;->poll(Ljava/lang/Class;[Ljava/lang/Object;)Lc8/xEb;

    move-result-object v0

    check-cast v0, Lc8/hEb;

    .line 14
    .local v0, "event":Lc8/hEb;
    iget v1, p0, Lc8/dEb;->eventId:I

    iput v1, v0, Lc8/hEb;->eventId:I

    .line 15
    iget-object v1, p0, Lc8/dEb;->module:Ljava/lang/String;

    iput-object v1, v0, Lc8/hEb;->page:Ljava/lang/String;

    .line 16
    iget-object v1, p0, Lc8/dEb;->monitorPoint:Ljava/lang/String;

    iput-object v1, v0, Lc8/hEb;->arg1:Ljava/lang/String;

    .line 17
    iget v1, p0, Lc8/dEb;->count:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc8/hEb;->arg2:Ljava/lang/String;

    .line 18
    iget-wide v2, p0, Lc8/dEb;->value:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc8/hEb;->arg3:Ljava/lang/String;

    .line 19
    iget-object v1, p0, Lc8/dEb;->extraArg:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 20
    iget-object v1, v0, Lc8/hEb;->args:Ljava/util/Map;

    const-string/jumbo v2, "arg"

    iget-object v3, p0, Lc8/dEb;->extraArg:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_0
    return-object v0
.end method

.method public getValue()D
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lc8/dEb;->value:D

    return-wide v0
.end method

.method public setValue(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lc8/dEb;->count:I

    .line 31
    iput-wide p1, p0, Lc8/dEb;->value:D

    .line 32
    return-void
.end method
