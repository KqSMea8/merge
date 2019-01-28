.class public Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;
.super Ljava/lang/Object;
.source "TimeDisplaySetting.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;",
            ">;"
        }
    .end annotation
.end field

.field public static final END_SHOW_TIME:Ljava/lang/String; = "et"

.field public static final START_SHOW_TIME:Ljava/lang/String; = "st"

.field public static final TAG:Ljava/lang/String; = "time_display_setting"

.field public static final TIME_DISPLAY:Ljava/lang/String; = "td"

.field public static final TIME_DISPLAY_SETTING:Ljava/lang/String; = "ts"


# instance fields
.field private endShowTime:Ljava/lang/String;

.field private isTimeDisplay:Z

.field private startShowTime:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lc8/mKd;

    invoke-direct {v0}, Lc8/mKd;-><init>()V

    sput-object v0, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->isTimeDisplay:Z

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->startShowTime:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->endShowTime:Ljava/lang/String;

    .line 46
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;
    .locals 6
    .param p0, "setting"    # Ljava/lang/String;

    .prologue
    .line 89
    const/4 v1, 0x0

    .line 90
    .local v1, "timedisplayObj":Lorg/json/JSONObject;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 92
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "timedisplayObj":Lorg/json/JSONObject;
    .local v2, "timedisplayObj":Lorg/json/JSONObject;
    move-object v1, v2

    .line 97
    .end local v2    # "timedisplayObj":Lorg/json/JSONObject;
    .restart local v1    # "timedisplayObj":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->parse(Lorg/json/JSONObject;)Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;

    move-result-object v3

    return-object v3

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "time_display_setting"

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

.method public static parse(Lorg/json/JSONObject;)Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;
    .locals 5
    .param p0, "timedisplayObj"    # Lorg/json/JSONObject;

    .prologue
    .line 101
    new-instance v1, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;

    invoke-direct {v1}, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;-><init>()V

    .line 102
    .local v1, "timeDisplaySetting":Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;
    if-eqz p0, :cond_4

    .line 104
    :try_start_0
    const-string/jumbo v2, "td"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 105
    const-string/jumbo v2, "td"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->setIsTimeDisplay(Z)V

    .line 107
    :cond_0
    const-string/jumbo v2, "st"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 108
    const-string/jumbo v2, "st"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->setStartShowTime(Ljava/lang/String;)V

    .line 110
    :cond_1
    const-string/jumbo v2, "et"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 111
    const-string/jumbo v2, "et"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->setEndShowTime(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_2
    :goto_1
    return-object v1

    .line 105
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "time_display_setting"

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

    goto :goto_1

    .line 117
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_4
    const-string/jumbo v2, "time_display_setting"

    const-string/jumbo v3, "no such tag time_display_setting"

    invoke-static {v2, v3}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public getEndShowTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->endShowTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStartShowTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->startShowTime:Ljava/lang/String;

    return-object v0
.end method

.method public isTimeDisplay()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->isTimeDisplay:Z

    return v0
.end method

.method public setEndShowTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "endShowTime"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->endShowTime:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setIsTimeDisplay(Z)V
    .locals 0
    .param p1, "isTimeDisplay"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->isTimeDisplay:Z

    .line 70
    return-void
.end method

.method public setStartShowTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "startShowTime"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->startShowTime:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TimeDisplaySetting{isTimeDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->isTimeDisplay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", startShowTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->startShowTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", endShowTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->endShowTime:Ljava/lang/String;

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
    .line 59
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->isTimeDisplay:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 60
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->startShowTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->endShowTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
