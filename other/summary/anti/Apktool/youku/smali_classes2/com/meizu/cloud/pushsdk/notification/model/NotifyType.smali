.class public Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;
.super Ljava/lang/Object;
.source "NotifyType.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;",
            ">;"
        }
    .end annotation
.end field

.field public static final LIGHTS:Ljava/lang/String; = "l"

.field public static final NOTIFY_TYPE:Ljava/lang/String; = "nt"

.field public static final SOUND:Ljava/lang/String; = "s"

.field public static final TAG:Ljava/lang/String; = "notify_type"

.field public static final VIBRATE:Ljava/lang/String; = "v"


# instance fields
.field lights:Z

.field sound:Z

.field vibrate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lc8/lKd;

    invoke-direct {v0}, Lc8/lKd;-><init>()V

    sput-object v0, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->vibrate:Z

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->lights:Z

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->sound:Z

    .line 34
    return-void

    :cond_0
    move v0, v2

    .line 31
    goto :goto_0

    :cond_1
    move v0, v2

    .line 32
    goto :goto_1

    :cond_2
    move v1, v2

    .line 33
    goto :goto_2
.end method

.method public static parse(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;
    .locals 6
    .param p0, "setting"    # Ljava/lang/String;

    .prologue
    .line 85
    const/4 v1, 0x0

    .line 86
    .local v1, "notificationObj":Lorg/json/JSONObject;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 88
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "notificationObj":Lorg/json/JSONObject;
    .local v2, "notificationObj":Lorg/json/JSONObject;
    move-object v1, v2

    .line 93
    .end local v2    # "notificationObj":Lorg/json/JSONObject;
    .restart local v1    # "notificationObj":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->parse(Lorg/json/JSONObject;)Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;

    move-result-object v3

    return-object v3

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "notify_type"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parse json string error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;
    .locals 5
    .param p0, "notifyTypeObj"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 97
    new-instance v1, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;

    invoke-direct {v1}, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;-><init>()V

    .line 98
    .local v1, "notifyType":Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;
    if-eqz p0, :cond_6

    .line 100
    :try_start_0
    const-string/jumbo v4, "v"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 101
    const-string/jumbo v4, "v"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_3

    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->setVibrate(Z)V

    .line 103
    :cond_0
    const-string/jumbo v4, "l"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 104
    const-string/jumbo v4, "l"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_4

    move v4, v2

    :goto_1
    invoke-virtual {v1, v4}, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->setLights(Z)V

    .line 106
    :cond_1
    const-string/jumbo v4, "s"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 107
    const-string/jumbo v4, "s"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_5

    :goto_2
    invoke-virtual {v1, v2}, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->setSound(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_2
    :goto_3
    return-object v1

    :cond_3
    move v4, v3

    .line 101
    goto :goto_0

    :cond_4
    move v4, v3

    .line 104
    goto :goto_1

    :cond_5
    move v2, v3

    .line 107
    goto :goto_2

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "notify_type"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parse json obj error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 113
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_6
    const-string/jumbo v2, "notify_type"

    const-string/jumbo v3, "no such tag notify_type"

    invoke-static {v2, v3}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public isLights()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->lights:Z

    return v0
.end method

.method public isSound()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->sound:Z

    return v0
.end method

.method public isVibrate()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->vibrate:Z

    return v0
.end method

.method public setLights(Z)V
    .locals 0
    .param p1, "lights"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->lights:Z

    .line 73
    return-void
.end method

.method public setSound(Z)V
    .locals 0
    .param p1, "sound"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->sound:Z

    .line 81
    return-void
.end method

.method public setVibrate(Z)V
    .locals 0
    .param p1, "vibrate"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->vibrate:Z

    .line 65
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NotifyType{vibrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->vibrate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lights="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->lights:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->sound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->vibrate:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 55
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->lights:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 56
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->sound:Z

    if-eqz v0, :cond_2

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 57
    return-void

    :cond_0
    move v0, v2

    .line 54
    goto :goto_0

    :cond_1
    move v0, v2

    .line 55
    goto :goto_1

    :cond_2
    move v1, v2

    .line 56
    goto :goto_2
.end method
