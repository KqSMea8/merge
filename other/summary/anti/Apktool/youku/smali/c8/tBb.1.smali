.class public Lc8/tBb;
.super Ljava/lang/Object;
.source "ApiResponseParse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/sBb;
    }
.end annotation


# static fields
.field private static final TAG_ERRORMSG:Ljava/lang/String; = "ret"

.field private static final TAG_SUCCESS:Ljava/lang/String; = "success"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static parseResult(Ljava/lang/String;)Lc8/sBb;
    .locals 5
    .param p0, "lContent"    # Ljava/lang/String;

    .prologue
    .line 19
    new-instance v3, Lc8/sBb;

    invoke-direct {v3}, Lc8/sBb;-><init>()V

    .line 21
    .local v3, "response":Lc8/sBb;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 22
    .local v1, "lJson":Lorg/json/JSONObject;
    const-string/jumbo v4, "success"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 23
    const-string/jumbo v4, "success"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 24
    .local v2, "lValue":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "success"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 25
    const/4 v4, 0x1

    iput-boolean v4, v3, Lc8/sBb;->isSuccess:Z

    .line 28
    .end local v2    # "lValue":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "ret"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 29
    const-string/jumbo v4, "ret"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lc8/sBb;->bizCode:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .end local v1    # "lJson":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-object v3

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
