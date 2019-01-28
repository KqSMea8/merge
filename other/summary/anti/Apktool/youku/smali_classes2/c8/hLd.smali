.class public abstract Lc8/hLd;
.super Lc8/dLd;
.source "PushEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/iLd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lc8/hLd",
        "<TT;>;>",
        "Lc8/dLd",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private deviceId:Ljava/lang/String;

.field private eventCreateTime:Ljava/lang/String;

.field private eventName:Ljava/lang/String;

.field private messageSeq:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private pushsdkVersion:Ljava/lang/String;

.field private seqId:Ljava/lang/String;

.field private taskId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    .local p0, "this":Lc8/hLd;, "Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder<TT;>;"
    invoke-direct {p0}, Lc8/dLd;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lc8/hLd;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/hLd;

    .prologue
    .line 21
    iget-object v0, p0, Lc8/hLd;->taskId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lc8/hLd;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/hLd;

    .prologue
    .line 21
    iget-object v0, p0, Lc8/hLd;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lc8/hLd;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/hLd;

    .prologue
    .line 21
    iget-object v0, p0, Lc8/hLd;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lc8/hLd;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/hLd;

    .prologue
    .line 21
    iget-object v0, p0, Lc8/hLd;->pushsdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lc8/hLd;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/hLd;

    .prologue
    .line 21
    iget-object v0, p0, Lc8/hLd;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lc8/hLd;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/hLd;

    .prologue
    .line 21
    iget-object v0, p0, Lc8/hLd;->seqId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lc8/hLd;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/hLd;

    .prologue
    .line 21
    iget-object v0, p0, Lc8/hLd;->messageSeq:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lc8/hLd;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/hLd;

    .prologue
    .line 21
    iget-object v0, p0, Lc8/hLd;->eventCreateTime:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lc8/iLd;
    .locals 1

    .prologue
    .line 104
    .local p0, "this":Lc8/hLd;, "Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder<TT;>;"
    new-instance v0, Lc8/iLd;

    invoke-direct {v0, p0}, Lc8/iLd;-><init>(Lc8/hLd;)V

    return-object v0
.end method

.method public deviceId(Ljava/lang/String;)Lc8/hLd;
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lc8/hLd;, "Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder<TT;>;"
    iput-object p1, p0, Lc8/hLd;->deviceId:Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Lc8/hLd;->self()Lc8/dLd;

    move-result-object v0

    check-cast v0, Lc8/hLd;

    return-object v0
.end method

.method public eventCreateTime(Ljava/lang/String;)Lc8/hLd;
    .locals 1
    .param p1, "eventCreateTime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lc8/hLd;, "Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder<TT;>;"
    iput-object p1, p0, Lc8/hLd;->eventCreateTime:Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Lc8/hLd;->self()Lc8/dLd;

    move-result-object v0

    check-cast v0, Lc8/hLd;

    return-object v0
.end method

.method public eventName(Ljava/lang/String;)Lc8/hLd;
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lc8/hLd;, "Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder<TT;>;"
    iput-object p1, p0, Lc8/hLd;->eventName:Ljava/lang/String;

    .line 37
    invoke-virtual {p0}, Lc8/hLd;->self()Lc8/dLd;

    move-result-object v0

    check-cast v0, Lc8/hLd;

    return-object v0
.end method

.method public messageSeq(Ljava/lang/String;)Lc8/hLd;
    .locals 1
    .param p1, "messageSeq"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lc8/hLd;, "Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder<TT;>;"
    iput-object p1, p0, Lc8/hLd;->messageSeq:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lc8/hLd;->self()Lc8/dLd;

    move-result-object v0

    check-cast v0, Lc8/hLd;

    return-object v0
.end method

.method public packageName(Ljava/lang/String;)Lc8/hLd;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lc8/hLd;, "Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder<TT;>;"
    iput-object p1, p0, Lc8/hLd;->packageName:Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Lc8/hLd;->self()Lc8/dLd;

    move-result-object v0

    check-cast v0, Lc8/hLd;

    return-object v0
.end method

.method public pushsdkVersion(Ljava/lang/String;)Lc8/hLd;
    .locals 1
    .param p1, "pushsdkVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lc8/hLd;, "Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder<TT;>;"
    iput-object p1, p0, Lc8/hLd;->pushsdkVersion:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Lc8/hLd;->self()Lc8/dLd;

    move-result-object v0

    check-cast v0, Lc8/hLd;

    return-object v0
.end method

.method public seqId(Ljava/lang/String;)Lc8/hLd;
    .locals 1
    .param p1, "seqId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lc8/hLd;, "Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder<TT;>;"
    iput-object p1, p0, Lc8/hLd;->seqId:Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Lc8/hLd;->self()Lc8/dLd;

    move-result-object v0

    check-cast v0, Lc8/hLd;

    return-object v0
.end method

.method public taskId(Ljava/lang/String;)Lc8/hLd;
    .locals 1
    .param p1, "taskId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lc8/hLd;, "Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder<TT;>;"
    iput-object p1, p0, Lc8/hLd;->taskId:Ljava/lang/String;

    .line 46
    invoke-virtual {p0}, Lc8/hLd;->self()Lc8/dLd;

    move-result-object v0

    check-cast v0, Lc8/hLd;

    return-object v0
.end method
