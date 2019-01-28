.class public Lc8/kE;
.super Ljava/lang/Object;
.source "WVResult.java"


# static fields
.field public static final CLOSED:Ljava/lang/String; = "HY_CLOSED"

.field public static final FAIL:Ljava/lang/String; = "HY_FAILED"

.field public static final NO_METHOD:Ljava/lang/String; = "HY_NO_HANDLER"

.field public static final NO_PERMISSION:Ljava/lang/String; = "HY_NO_PERMISSION"

.field public static final PARAM_ERR:Ljava/lang/String; = "HY_PARAM_ERR"

.field public static final RET_CLOSED:Lc8/kE;

.field public static final RET_FAIL:Lc8/kE;

.field public static final RET_NO_METHOD:Lc8/kE;

.field public static final RET_NO_PERMISSION:Lc8/kE;

.field public static final RET_PARAM_ERR:Lc8/kE;

.field public static final RET_SUCCESS:Lc8/kE;

.field public static final SUCCESS:Ljava/lang/String; = "HY_SUCCESS"


# instance fields
.field private result:Lorg/json/JSONObject;

.field private success:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lc8/kE;

    const-string/jumbo v1, "HY_SUCCESS"

    invoke-direct {v0, v1}, Lc8/kE;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc8/kE;->RET_SUCCESS:Lc8/kE;

    .line 28
    new-instance v0, Lc8/kE;

    const-string/jumbo v1, "HY_FAILED"

    invoke-direct {v0, v1}, Lc8/kE;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc8/kE;->RET_FAIL:Lc8/kE;

    .line 29
    new-instance v0, Lc8/kE;

    const-string/jumbo v1, "HY_PARAM_ERR"

    invoke-direct {v0, v1}, Lc8/kE;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc8/kE;->RET_PARAM_ERR:Lc8/kE;

    .line 30
    new-instance v0, Lc8/kE;

    const-string/jumbo v1, "HY_NO_HANDLER"

    invoke-direct {v0, v1}, Lc8/kE;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc8/kE;->RET_NO_METHOD:Lc8/kE;

    .line 31
    new-instance v0, Lc8/kE;

    const-string/jumbo v1, "HY_NO_PERMISSION"

    invoke-direct {v0, v1}, Lc8/kE;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc8/kE;->RET_NO_PERMISSION:Lc8/kE;

    .line 32
    new-instance v0, Lc8/kE;

    const-string/jumbo v1, "HY_CLOSED"

    invoke-direct {v0, v1}, Lc8/kE;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc8/kE;->RET_CLOSED:Lc8/kE;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lc8/kE;->success:I

    .line 34
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lc8/kE;->result:Lorg/json/JSONObject;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "retString"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lc8/kE;->success:I

    .line 34
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lc8/kE;->result:Lorg/json/JSONObject;

    .line 40
    invoke-virtual {p0, p1}, Lc8/kE;->setResult(Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method public addData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 79
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    :try_start_0
    iget-object v1, p0, Lc8/kE;->result:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public addData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 49
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    :try_start_0
    iget-object v1, p0, Lc8/kE;->result:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public addData(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONArray;

    .prologue
    .line 69
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    :try_start_0
    iget-object v1, p0, Lc8/kE;->result:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public addData(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONObject;

    .prologue
    .line 59
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    :try_start_0
    iget-object v1, p0, Lc8/kE;->result:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public setData(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 44
    if-eqz p1, :cond_0

    .line 45
    iput-object p1, p0, Lc8/kE;->result:Lorg/json/JSONObject;

    .line 46
    :cond_0
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 3
    .param p1, "retString"    # Ljava/lang/String;

    .prologue
    .line 94
    :try_start_0
    iget-object v1, p0, Lc8/kE;->result:Lorg/json/JSONObject;

    const-string/jumbo v2, "ret"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    const-string/jumbo v1, "HY_SUCCESS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, p0, Lc8/kE;->success:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_1
    return-void

    .line 95
    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public setSuccess()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    iput v0, p0, Lc8/kE;->success:I

    .line 90
    return-void
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 103
    :try_start_0
    iget v1, p0, Lc8/kE;->success:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 104
    iget-object v1, p0, Lc8/kE;->result:Lorg/json/JSONObject;

    const-string/jumbo v2, "ret"

    const-string/jumbo v3, "HY_SUCCESS"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_0
    :goto_0
    iget-object v1, p0, Lc8/kE;->result:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 105
    :cond_1
    :try_start_1
    iget v1, p0, Lc8/kE;->success:I

    if-nez v1, :cond_0

    .line 106
    iget-object v1, p0, Lc8/kE;->result:Lorg/json/JSONObject;

    const-string/jumbo v2, "ret"

    const-string/jumbo v3, "HY_FAILED"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
