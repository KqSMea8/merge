.class public Lc8/Uof;
.super Ljava/lang/Object;
.source "AlibcDeviceProbeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Vof;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlibcDeviceInfo"
.end annotation


# static fields
.field public static final CLIP_APPKEY:Ljava/lang/String; = "arg1"

.field public static final CLIP_UTDID:Ljava/lang/String; = "arg2"

.field public static final HIT_APPKEY:Ljava/lang/String; = "appkey"

.field public static final HIT_UTDID:Ljava/lang/String; = "utdid"


# instance fields
.field public appkey:Ljava/lang/String;

.field public utdid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "appkey"    # Ljava/lang/String;
    .param p2, "utdid"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lc8/Uof;->appkey:Ljava/lang/String;

    .line 122
    iput-object p2, p0, Lc8/Uof;->utdid:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public static createFromJson(Lorg/json/JSONObject;)Lc8/Uof;
    .locals 4
    .param p0, "deviceInfoObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x0

    .line 132
    if-nez p0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-object v2

    .line 135
    :cond_1
    const-string/jumbo v3, "arg1"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "appkey":Ljava/lang/String;
    const-string/jumbo v3, "arg2"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "utdid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 138
    new-instance v2, Lc8/Uof;

    invoke-direct {v2, v0, v1}, Lc8/Uof;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public checkData()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lc8/Uof;->appkey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/Uof;->utdid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    :cond_0
    const/4 v0, 0x0

    .line 152
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkDataUpdate(Lc8/Uof;)Z
    .locals 3
    .param p1, "deviceInfo"    # Lc8/Uof;

    .prologue
    const/4 v0, 0x0

    .line 163
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lc8/Uof;->checkData()Z

    move-result v1

    if-nez v1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v0

    .line 167
    :cond_1
    iget-object v1, p0, Lc8/Uof;->appkey:Ljava/lang/String;

    iget-object v2, p1, Lc8/Uof;->appkey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/Uof;->utdid:Ljava/lang/String;

    iget-object v2, p1, Lc8/Uof;->utdid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getHitJsonObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 192
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 193
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v1, "appkey"

    iget-object v2, p0, Lc8/Uof;->appkey:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lc8/ipf;->putJsonData(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    const-string/jumbo v1, "utdid"

    iget-object v2, p0, Lc8/Uof;->utdid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lc8/ipf;->putJsonData(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    return-object v0
.end method

.method public getStoreJsonObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 180
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 181
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v1, "arg1"

    iget-object v2, p0, Lc8/Uof;->appkey:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lc8/ipf;->putJsonData(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    const-string/jumbo v1, "arg2"

    iget-object v2, p0, Lc8/Uof;->utdid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lc8/ipf;->putJsonData(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 183
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AlibcDeviceInfo{appkey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Uof;->appkey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", utdid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Uof;->utdid:Ljava/lang/String;

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
