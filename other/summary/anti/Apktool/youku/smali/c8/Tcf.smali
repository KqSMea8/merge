.class public abstract Lc8/Tcf;
.super Ljava/lang/Object;
.source "Coordinator.java"

# interfaces
.implements Lc8/Rcf;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Vcf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TaggedRunnable"
.end annotation


# instance fields
.field final mName:Ljava/lang/String;

.field mQueuePriority:I

.field mThreadPriority:I

.field mTraffictag:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lc8/Tcf;->mTraffictag:I

    .line 131
    const/16 v0, 0x1e

    iput v0, p0, Lc8/Tcf;->mQueuePriority:I

    .line 132
    const/16 v0, 0xa

    iput v0, p0, Lc8/Tcf;->mThreadPriority:I

    .line 139
    iput-object p1, p0, Lc8/Tcf;->mName:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "queuePriority"    # I

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lc8/Tcf;->mTraffictag:I

    .line 131
    const/16 v0, 0x1e

    iput v0, p0, Lc8/Tcf;->mQueuePriority:I

    .line 132
    const/16 v0, 0xa

    iput v0, p0, Lc8/Tcf;->mThreadPriority:I

    .line 147
    iput-object p1, p0, Lc8/Tcf;->mName:Ljava/lang/String;

    .line 148
    if-gez p2, :cond_1

    .line 149
    const/4 p2, 0x0

    .line 153
    :cond_0
    :goto_0
    iput p2, p0, Lc8/Tcf;->mQueuePriority:I

    .line 154
    return-void

    .line 150
    :cond_1
    const/16 v0, 0x64

    if-le p2, v0, :cond_0

    .line 151
    const/16 p2, 0x64

    goto :goto_0
.end method


# virtual methods
.method public getQueuePriority()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lc8/Tcf;->mQueuePriority:I

    return v0
.end method

.method public setThreadPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 175
    if-gtz p1, :cond_0

    .line 176
    const/4 p1, 0x1

    .line 178
    :cond_0
    iput p1, p0, Lc8/Tcf;->mThreadPriority:I

    .line 179
    return-void
.end method

.method public setTrafficTag(I)V
    .locals 0
    .param p1, "traffictag"    # I

    .prologue
    .line 167
    iput p1, p0, Lc8/Tcf;->mTraffictag:I

    .line 168
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Tcf;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
