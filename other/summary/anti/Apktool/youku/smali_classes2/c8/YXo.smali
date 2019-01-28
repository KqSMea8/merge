.class public Lc8/YXo;
.super Ljava/lang/Object;
.source "WXUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/ZXo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParamBuilder"
.end annotation


# instance fields
.field private mParamJSONObject:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lc8/YXo;->mParamJSONObject:Lorg/json/JSONObject;

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "param"    # Lorg/json/JSONObject;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lc8/YXo;->mParamJSONObject:Lorg/json/JSONObject;

    .line 84
    invoke-virtual {p0, p1}, Lc8/YXo;->initParam(Lorg/json/JSONObject;)Lc8/YXo;

    .line 85
    return-void
.end method


# virtual methods
.method public getParamString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 165
    move-object v0, p2

    .line 167
    .local v0, "result":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 168
    :try_start_0
    iget-object v1, p0, Lc8/YXo;->mParamJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 172
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public initParam(Lorg/json/JSONObject;)Lc8/YXo;
    .locals 0
    .param p1, "param"    # Lorg/json/JSONObject;

    .prologue
    .line 88
    if-eqz p1, :cond_0

    .line 89
    iput-object p1, p0, Lc8/YXo;->mParamJSONObject:Lorg/json/JSONObject;

    .line 91
    :cond_0
    return-object p0
.end method
