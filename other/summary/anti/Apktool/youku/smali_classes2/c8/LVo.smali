.class public Lc8/LVo;
.super Ljava/lang/Object;
.source "SCGVideoInfo.java"


# instance fields
.field public action:Ljava/lang/String;

.field public actionClass:Ljava/lang/String;

.field public codeId:Ljava/lang/String;

.field public displayPlayIcon:Z

.field public gifImg:Ljava/lang/String;

.field public img:Ljava/lang/String;

.field public mark:Ljava/lang/String;

.field public payInfo:Ljava/lang/String;

.field public property:Ljava/lang/String;

.field public scm:Ljava/lang/String;

.field public spm:Ljava/lang/String;

.field public subtitle:Ljava/lang/String;

.field public subtitleType:Ljava/lang/String;

.field public summary:Ljava/lang/String;

.field public summaryType:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public traceInfo:Ljava/lang/String;

.field public trackInfo:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 117
    const-string/jumbo v1, ""

    .line 119
    .local v1, "id":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lc8/LVo;->action:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 120
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v3, "extra"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    const-string/jumbo v3, "extra"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 122
    .local v0, "extra":Lorg/json/JSONObject;
    const-string/jumbo v3, "value"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 128
    .end local v0    # "extra":Lorg/json/JSONObject;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v3

    goto :goto_0
.end method
