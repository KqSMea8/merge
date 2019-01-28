.class public Lc8/uHd;
.super Ljava/lang/Object;
.source "PlatformMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/tHd;
    }
.end annotation


# static fields
.field public static final PLATFORM_DEVICE_ID:Ljava/lang/String; = "device_id"

.field public static final PLATFORM_PUSH_TIMESTAMP:Ljava/lang/String; = "push_timestamp"

.field public static final PLATFORM_SEQ_ID:Ljava/lang/String; = "seq_id"

.field public static final PLATFORM_TASK_ID:Ljava/lang/String; = "task_id"


# instance fields
.field deviceId:Ljava/lang/String;

.field pushTimesTamp:Ljava/lang/String;

.field seqId:Ljava/lang/String;

.field taskId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public constructor <init>(Lc8/tHd;)V
    .locals 1
    .param p1, "builder"    # Lc8/tHd;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {p1}, Lc8/tHd;->access$000(Lc8/tHd;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lc8/tHd;->access$000(Lc8/tHd;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lc8/uHd;->taskId:Ljava/lang/String;

    .line 70
    invoke-static {p1}, Lc8/tHd;->access$100(Lc8/tHd;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lc8/tHd;->access$100(Lc8/tHd;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lc8/uHd;->seqId:Ljava/lang/String;

    .line 71
    invoke-static {p1}, Lc8/tHd;->access$200(Lc8/tHd;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lc8/tHd;->access$200(Lc8/tHd;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lc8/uHd;->pushTimesTamp:Ljava/lang/String;

    .line 72
    invoke-static {p1}, Lc8/tHd;->access$300(Lc8/tHd;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lc8/tHd;->access$300(Lc8/tHd;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lc8/uHd;->deviceId:Ljava/lang/String;

    .line 74
    return-void

    .line 69
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 70
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1

    .line 71
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_2

    .line 72
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_3
.end method

.method public static builder()Lc8/tHd;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lc8/tHd;

    invoke-direct {v0}, Lc8/tHd;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lc8/uHd;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getPushTimesTamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lc8/uHd;->pushTimesTamp:Ljava/lang/String;

    return-object v0
.end method

.method public getSeqId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lc8/uHd;->seqId:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lc8/uHd;->taskId:Ljava/lang/String;

    return-object v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 3

    .prologue
    .line 86
    new-instance v0, Lc8/RKd;

    invoke-direct {v0}, Lc8/RKd;-><init>()V

    .line 87
    .local v0, "trackerDataload":Lc8/RKd;
    const-string/jumbo v1, "task_id"

    iget-object v2, p0, Lc8/uHd;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc8/RKd;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string/jumbo v1, "seq_id"

    iget-object v2, p0, Lc8/uHd;->seqId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc8/RKd;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string/jumbo v1, "push_timestamp"

    iget-object v2, p0, Lc8/uHd;->pushTimesTamp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc8/RKd;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string/jumbo v1, "device_id"

    iget-object v2, p0, Lc8/uHd;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc8/RKd;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Lc8/RKd;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
