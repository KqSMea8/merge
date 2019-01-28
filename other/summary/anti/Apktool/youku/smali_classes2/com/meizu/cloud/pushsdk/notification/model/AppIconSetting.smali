.class public Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;
.super Ljava/lang/Object;
.source "AppIconSetting.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final APP_ICON_SETTING:Ljava/lang/String; = "is"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_LARGE_ICON:Ljava/lang/String; = "di"

.field public static final LARGE_ICON_URL:Ljava/lang/String; = "li"

.field public static final TAG:Ljava/lang/String; = "app_icon_setting"


# instance fields
.field private defaultLargeIcon:Z

.field private largeIconUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lc8/jKd;

    invoke-direct {v0}, Lc8/jKd;-><init>()V

    sput-object v0, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;->defaultLargeIcon:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;->defaultLargeIcon:Z

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;->defaultLargeIcon:Z

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;->largeIconUrl:Ljava/lang/String;

    .line 50
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;
    .locals 6
    .param p0, "setting"    # Ljava/lang/String;

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "appIconSetingObj":Lorg/json/JSONObject;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 88
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "appIconSetingObj":Lorg/json/JSONObject;
    .local v1, "appIconSetingObj":Lorg/json/JSONObject;
    move-object v0, v1

    .line 93
    .end local v1    # "appIconSetingObj":Lorg/json/JSONObject;
    .restart local v0    # "appIconSetingObj":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;->parse(Lorg/json/JSONObject;)Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;

    move-result-object v3

    return-object v3

    .line 89
    :catch_0
    move-exception v2

    .line 90
    .local v2, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "app_icon_setting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parse json string error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;
    .locals 5
    .param p0, "appIconSetingObj"    # Lorg/json/JSONObject;

    .prologue
    .line 97
    new-instance v0, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;-><init>()V

    .line 98
    .local v0, "appIconSetting":Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;
    if-eqz p0, :cond_3

    .line 100
    :try_start_0
    const-string/jumbo v2, "di"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 101
    const-string/jumbo v2, "di"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;->setDefaultLargeIcon(Z)V

    .line 103
    :cond_0
    const-string/jumbo v2, "li"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 104
    const-string/jumbo v2, "li"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;->setLargeIconUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_1
    :goto_1
    return-object v0

    .line 101
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v1

    .line 107
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "app_icon_setting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parse json obj error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 110
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_3
    const-string/jumbo v2, "app_icon_setting"

    const-string/jumbo v3, "no such tag app_icon_setting"

    invoke-static {v2, v3}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getLargeIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;->largeIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isDefaultLargeIcon()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;->defaultLargeIcon:Z

    return v0
.end method

.method public setDefaultLargeIcon(Z)V
    .locals 0
    .param p1, "defaultLargeIcon"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;->defaultLargeIcon:Z

    .line 82
    return-void
.end method

.method public setLargeIconUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "largeIconUrl"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;->largeIconUrl:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AppIconSetting{defaultLargeIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;->defaultLargeIcon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", largeIconUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;->largeIconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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
    .line 63
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;->defaultLargeIcon:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 64
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;->largeIconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    return-void

    .line 63
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
