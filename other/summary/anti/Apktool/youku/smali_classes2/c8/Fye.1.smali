.class public Lc8/Fye;
.super Ljava/lang/Object;
.source "WebPicUploadResult.java"


# static fields
.field public static final RESP_UPLOAD_PIC_PARAM_CODE:Ljava/lang/String; = "code"

.field public static final RESP_UPLOAD_PIC_PARAM_DATA:Ljava/lang/String; = "data"

.field public static final RESP_UPLOAD_PIC_SUCC_CODE:I = 0x1


# instance fields
.field private code:I

.field private picId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, -0x2

    iput v0, p0, Lc8/Fye;->code:I

    .line 21
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lc8/Fye;
    .locals 4
    .param p0, "resp"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    const/4 v1, 0x0

    .line 43
    :goto_0
    return-object v1

    .line 35
    :cond_0
    new-instance v1, Lc8/Fye;

    invoke-direct {v1}, Lc8/Fye;-><init>()V

    .line 37
    .local v1, "result":Lc8/Fye;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, "obj":Lorg/json/JSONObject;
    const-string/jumbo v2, "code"

    const/4 v3, -0x2

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lc8/Fye;->code:I

    .line 40
    const-string/jumbo v2, "data"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc8/Fye;->picId:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lc8/Fye;->code:I

    return v0
.end method

.method public getPicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lc8/Fye;->picId:Ljava/lang/String;

    return-object v0
.end method
