.class public Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;
.super Ljava/lang/Object;
.source "Statics.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;",
            ">;"
        }
    .end annotation
.end field

.field public static final PUSH_EXTRA:Ljava/lang/String; = "pushExtra"

.field public static final TAG:Ljava/lang/String; = "statics"

.field public static final TASK_ID:Ljava/lang/String; = "taskId"

.field public static final TIME:Ljava/lang/String; = "time"


# instance fields
.field private deviceId:Ljava/lang/String;

.field private pushExtra:Z

.field private seqId:Ljava/lang/String;

.field private taskId:Ljava/lang/String;

.field private time:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lc8/vHd;

    invoke-direct {v0}, Lc8/vHd;-><init>()V

    sput-object v0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->pushExtra:Z

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->pushExtra:Z

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->taskId:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->time:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->pushExtra:Z

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->deviceId:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->seqId:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;
    .locals 5
    .param p0, "staticsObj"    # Lorg/json/JSONObject;

    .prologue
    .line 93
    new-instance v1, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;

    invoke-direct {v1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;-><init>()V

    .line 94
    .local v1, "statics":Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;
    if-eqz p0, :cond_4

    .line 96
    :try_start_0
    const-string/jumbo v2, "taskId"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    const-string/jumbo v2, "taskId"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->setTaskId(Ljava/lang/String;)V

    .line 99
    :cond_0
    const-string/jumbo v2, "time"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 100
    const-string/jumbo v2, "time"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->setTime(Ljava/lang/String;)V

    .line 102
    :cond_1
    const-string/jumbo v2, "pushExtra"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 103
    const-string/jumbo v2, "pushExtra"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->setPushExtra(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_2
    :goto_1
    return-object v1

    .line 103
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "statics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " parse statics message error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 109
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_4
    const-string/jumbo v2, "statics"

    const-string/jumbo v3, "no control statics can parse "

    invoke-static {v2, v3}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getPushExtra()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->pushExtra:Z

    return v0
.end method

.method public getSeqId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->seqId:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->taskId:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->deviceId:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setPushExtra(Z)V
    .locals 0
    .param p1, "pushExtra"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->pushExtra:Z

    .line 72
    return-void
.end method

.method public setSeqId(Ljava/lang/String;)V
    .locals 0
    .param p1, "seqId"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->seqId:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setTaskId(Ljava/lang/String;)V
    .locals 0
    .param p1, "taskId"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->taskId:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->time:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Statics{taskId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", time=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", pushExtra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->pushExtra:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", deviceId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", seqId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->seqId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->taskId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->time:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->pushExtra:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 124
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->seqId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
