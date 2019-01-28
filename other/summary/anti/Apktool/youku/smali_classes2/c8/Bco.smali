.class public Lc8/Bco;
.super Ljava/lang/Object;
.source "Response.java"


# static fields
.field public static final RESPONSE_CODE_CANCEL:I = 0x2

.field public static final RESPONSE_CODE_FAILED:I = 0x1

.field public static final RESPONSE_CODE_SUCCESS:I = 0x0

.field public static final RESPONSE_CODE_UNAUTHORIZED:I = 0x4

.field public static final RESPONSE_CODE_UNDEFINED:I = 0x3

.field private static final RESPONSE_DATA_STR:Ljava/lang/String; = "data"

.field private static final RESPONSE_ID_STR:Ljava/lang/String; = "responseId"

.field private static final RESPONSE_MESSAGE:Ljava/lang/String; = "errmsg"

.field public static final RESPONSE_MESSAGE_CANCEL:Ljava/lang/String; = "User operation canceled"

.field public static final RESPONSE_MESSAGE_FAILED:Ljava/lang/String; = "Sorry, execute failed"

.field public static final RESPONSE_MESSAGE_SUCCESS:Ljava/lang/String; = "ok"

.field public static final RESPONSE_MESSAGE_UNAUTHORIZED:Ljava/lang/String; = "No permission to execute this function"

.field public static final RESPONSE_MESSAGE_UNDEFINED:Ljava/lang/String; = "Sorry, the function is not found"

.field private static final RESPONSE_STATUS:Ljava/lang/String; = "errno"


# instance fields
.field private errorMsg:Ljava/lang/String;

.field private errorNo:I

.field private responseData:Ljava/lang/String;

.field private responseId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseId"    # Ljava/lang/String;
    .param p2, "errorNo"    # I
    .param p3, "errorMsg"    # Ljava/lang/String;
    .param p4, "responseData"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lc8/Bco;->responseId:Ljava/lang/String;

    .line 95
    iput p2, p0, Lc8/Bco;->errorNo:I

    .line 96
    iput-object p3, p0, Lc8/Bco;->errorMsg:Ljava/lang/String;

    .line 97
    iput-object p4, p0, Lc8/Bco;->responseData:Ljava/lang/String;

    .line 98
    return-void
.end method


# virtual methods
.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lc8/Bco;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorNo()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lc8/Bco;->errorNo:I

    return v0
.end method

.method public getResponseData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lc8/Bco;->responseData:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lc8/Bco;->responseId:Ljava/lang/String;

    return-object v0
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lc8/Bco;->errorMsg:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setErrorNo(I)V
    .locals 0
    .param p1, "errorNo"    # I

    .prologue
    .line 129
    iput p1, p0, Lc8/Bco;->errorNo:I

    .line 130
    return-void
.end method

.method public setResponseData(Ljava/lang/String;)V
    .locals 0
    .param p1, "responseData"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lc8/Bco;->responseData:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setResponseId(Ljava/lang/String;)V
    .locals 0
    .param p1, "responseId"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lc8/Bco;->responseId:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 4

    .prologue
    .line 133
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 135
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "errno"

    iget v3, p0, Lc8/Bco;->errorNo:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 136
    const-string/jumbo v2, "errmsg"

    iget-object v3, p0, Lc8/Bco;->errorMsg:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    const-string/jumbo v2, "data"

    invoke-virtual {p0}, Lc8/Bco;->getResponseData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    const-string/jumbo v2, "responseId"

    invoke-virtual {p0}, Lc8/Bco;->getResponseId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 143
    :goto_0
    return-object v2

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 143
    const/4 v2, 0x0

    goto :goto_0
.end method
