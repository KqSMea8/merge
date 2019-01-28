.class public Lc8/axe;
.super Ljava/lang/Object;
.source "BaseCmd.java"


# instance fields
.field private mNotificationDelay:J

.field private mNotificationText:Ljava/lang/String;

.field private mNotificationTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "jsonStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Lc8/axe;->initFromJsonStr(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "jsonObj"    # Lorg/json/JSONObject;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p0, p1}, Lc8/axe;->initFromJsonObj(Lorg/json/JSONObject;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getNotificationDelay()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lc8/axe;->mNotificationDelay:J

    return-wide v0
.end method

.method public getNotificationText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lc8/axe;->mNotificationText:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lc8/axe;->mNotificationTitle:Ljava/lang/String;

    return-object v0
.end method

.method protected initFromJsonObj(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "jsonObj"    # Lorg/json/JSONObject;

    .prologue
    .line 52
    const-string/jumbo v0, "notification_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/axe;->mNotificationText:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "notification_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/axe;->mNotificationTitle:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "notification_delay"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lc8/axe;->mNotificationDelay:J

    .line 55
    return-void
.end method

.method protected initFromJsonStr(Ljava/lang/String;)V
    .locals 4
    .param p1, "jsonStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    .prologue
    .line 37
    if-nez p1, :cond_0

    .line 48
    :goto_0
    return-void

    .line 42
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 43
    .local v1, "jsonObj":Lorg/json/JSONObject;
    invoke-virtual {p0, v1}, Lc8/axe;->initFromJsonObj(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 47
    new-instance v2, Lcom/sina/weibo/sdk/exception/WeiboException;

    const-string/jumbo v3, "pase cmd has error !!!"

    invoke-direct {v2, v3}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setNotificationDelay(J)V
    .locals 1
    .param p1, "mNotificationDelay"    # J

    .prologue
    .line 78
    iput-wide p1, p0, Lc8/axe;->mNotificationDelay:J

    .line 79
    return-void
.end method

.method public setNotificationText(Ljava/lang/String;)V
    .locals 0
    .param p1, "mNotificationText"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lc8/axe;->mNotificationText:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setNotificationTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "mNotificationTitle"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lc8/axe;->mNotificationTitle:Ljava/lang/String;

    .line 71
    return-void
.end method
