.class public Lc8/iLd;
.super Lc8/eLd;
.source "PushEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/gLd;,
        Lc8/hLd;
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
.method protected constructor <init>(Lc8/hLd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/hLd",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "builder":Lc8/hLd;, "Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder<*>;"
    invoke-direct {p0, p1}, Lc8/eLd;-><init>(Lc8/dLd;)V

    .line 127
    invoke-static {p1}, Lc8/hLd;->access$100(Lc8/hLd;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/iLd;->taskId:Ljava/lang/String;

    .line 128
    invoke-static {p1}, Lc8/hLd;->access$200(Lc8/hLd;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/iLd;->deviceId:Ljava/lang/String;

    .line 129
    invoke-static {p1}, Lc8/hLd;->access$300(Lc8/hLd;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/iLd;->eventName:Ljava/lang/String;

    .line 130
    invoke-static {p1}, Lc8/hLd;->access$400(Lc8/hLd;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/iLd;->pushsdkVersion:Ljava/lang/String;

    .line 131
    invoke-static {p1}, Lc8/hLd;->access$500(Lc8/hLd;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/iLd;->packageName:Ljava/lang/String;

    .line 132
    invoke-static {p1}, Lc8/hLd;->access$600(Lc8/hLd;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/iLd;->seqId:Ljava/lang/String;

    .line 133
    invoke-static {p1}, Lc8/hLd;->access$700(Lc8/hLd;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/iLd;->messageSeq:Ljava/lang/String;

    .line 134
    invoke-static {p1}, Lc8/hLd;->access$800(Lc8/hLd;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/iLd;->eventCreateTime:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public static builder()Lc8/hLd;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/hLd",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Lc8/gLd;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/gLd;-><init>(Lc8/fLd;)V

    return-object v0
.end method


# virtual methods
.method public getDataLoad()Lc8/RKd;
    .locals 3

    .prologue
    .line 144
    new-instance v0, Lc8/RKd;

    invoke-direct {v0}, Lc8/RKd;-><init>()V

    .line 145
    .local v0, "dataLoad":Lc8/RKd;
    const-string/jumbo v1, "en"

    iget-object v2, p0, Lc8/iLd;->eventName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc8/RKd;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string/jumbo v1, "ti"

    iget-object v2, p0, Lc8/iLd;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc8/RKd;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string/jumbo v1, "di"

    iget-object v2, p0, Lc8/iLd;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc8/RKd;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string/jumbo v1, "pv"

    iget-object v2, p0, Lc8/iLd;->pushsdkVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc8/RKd;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string/jumbo v1, "pn"

    iget-object v2, p0, Lc8/iLd;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc8/RKd;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string/jumbo v1, "si"

    iget-object v2, p0, Lc8/iLd;->seqId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc8/RKd;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string/jumbo v1, "ms"

    iget-object v2, p0, Lc8/iLd;->messageSeq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc8/RKd;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string/jumbo v1, "ect"

    iget-object v2, p0, Lc8/iLd;->eventCreateTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc8/RKd;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0, v0}, Lc8/iLd;->putDefaultParams(Lc8/RKd;)Lc8/RKd;

    move-result-object v1

    return-object v1
.end method
