.class public Lc8/HD;
.super Ljava/lang/Object;
.source "UploadFileConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEFAULT_CONNECT_TIMEOUT:I = 0xea60

.field private static final DEFAULT_READ_TIMEOUT:I = 0xea60

.field public static final ERROE_CODE_FAIL:I = 0x1

.field public static final ERROE_MSG_FAIL:Ljava/lang/String; = "FAIL"

.field public static final ERR_CODE_TOKEN_INVALID:I = 0x2

.field public static final ERR_MSG_TOKEN_INVALID:Ljava/lang/String; = "TOKEN_IS_INVALID"

.field private static final TAG:Ljava/lang/String; = "UploadFileConnection"


# instance fields
.field private accessToken:Ljava/lang/String;

.field private mFileExt:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mListener:Lc8/WB;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/WB",
            "<",
            "Lc8/ID;",
            ">;"
        }
    .end annotation
.end field

.field private tryNum:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lc8/WB;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "fileExt"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lc8/WB",
            "<",
            "Lc8/ID;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p3, "listener":Lc8/WB;, "Landroid/taobao/windvane/connect/HttpConnectListener<Landroid/taobao/windvane/extra/upload/UploadFileData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p3, p0, Lc8/HD;->mListener:Lc8/WB;

    .line 65
    iput-object p1, p0, Lc8/HD;->mFilePath:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lc8/HD;->mFileExt:Ljava/lang/String;

    .line 67
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 72
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "wv-a-8.3.0-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lc8/xB;->context:Landroid/app/Application;

    invoke-static {v13}, Lc8/UH;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 73
    .local v9, "uniqueKey":Ljava/lang/String;
    new-instance v12, Lc8/XB;

    invoke-direct {v12}, Lc8/XB;-><init>()V

    invoke-static {v9}, Lc8/PC;->getUploadTokenUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lc8/XB;->syncConnect(Ljava/lang/String;)Lc8/ZB;

    move-result-object v6

    .line 74
    .local v6, "tokenRet":Lc8/ZB;
    invoke-virtual {v6}, Lc8/ZB;->isSuccess()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v6}, Lc8/ZB;->getData()[B

    move-result-object v12

    if-eqz v12, :cond_1

    .line 75
    const/4 v7, 0x0

    .line 77
    .local v7, "tokenStr":Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v6}, Lc8/ZB;->getData()[B

    move-result-object v12

    const-string/jumbo v13, "utf-8"

    invoke-direct {v8, v12, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v7    # "tokenStr":Ljava/lang/String;
    .local v8, "tokenStr":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 79
    const-string/jumbo v12, "UploadFileConnection"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "get upload token success, content="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_4

    :cond_0
    move-object v7, v8

    .line 84
    .end local v8    # "tokenStr":Ljava/lang/String;
    .restart local v7    # "tokenStr":Ljava/lang/String;
    :goto_0
    new-instance v2, Lc8/gC;

    invoke-direct {v2}, Lc8/gC;-><init>()V

    .line 85
    .local v2, "response":Lc8/gC;
    invoke-virtual {v2, v7}, Lc8/gC;->parseResult(Ljava/lang/String;)Lc8/gC;

    .line 86
    iget-boolean v12, v2, Lc8/gC;->success:Z

    if-eqz v12, :cond_1

    .line 87
    iget-object v1, v2, Lc8/gC;->data:Lorg/json/JSONObject;

    .line 88
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz v1, :cond_1

    .line 89
    const-string/jumbo v12, "accessToken"

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lc8/HD;->accessToken:Ljava/lang/String;

    .line 90
    const-string/jumbo v12, "tryNum"

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    iput v12, p0, Lc8/HD;->tryNum:I

    .line 95
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "response":Lc8/gC;
    .end local v7    # "tokenStr":Ljava/lang/String;
    :cond_1
    iget-object v12, p0, Lc8/HD;->accessToken:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 96
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 97
    const-string/jumbo v12, "UploadFileConnection"

    const-string/jumbo v13, "get upload token fail, accessToken is empty"

    invoke-static {v12, v13}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_2
    iget-object v12, p0, Lc8/HD;->mListener:Lc8/WB;

    if-eqz v12, :cond_3

    .line 100
    iget-object v12, p0, Lc8/HD;->mListener:Lc8/WB;

    const/4 v13, 0x2

    const-string/jumbo v14, "TOKEN_IS_INVALID"

    invoke-virtual {v12, v13, v14}, Lc8/WB;->onError(ILjava/lang/String;)V

    .line 152
    :cond_3
    :goto_1
    return-void

    .line 81
    .restart local v7    # "tokenStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :goto_2
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 105
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v7    # "tokenStr":Ljava/lang/String;
    :cond_4
    iget-object v12, p0, Lc8/HD;->mListener:Lc8/WB;

    if-eqz v12, :cond_5

    .line 106
    iget-object v12, p0, Lc8/HD;->mListener:Lc8/WB;

    invoke-virtual {v12}, Lc8/WB;->onStart()V

    .line 108
    :cond_5
    iget-object v12, p0, Lc8/HD;->accessToken:Ljava/lang/String;

    invoke-static {v9, v12}, Lc8/PC;->getUploadUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lc8/HD;->mFilePath:Ljava/lang/String;

    invoke-virtual {p0, v12, v13}, Lc8/HD;->uploadFile(Ljava/lang/String;Ljava/lang/String;)Lc8/ZB;

    move-result-object v3

    .line 109
    .local v3, "result":Lc8/ZB;
    invoke-virtual {v3}, Lc8/ZB;->isSuccess()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-virtual {v3}, Lc8/ZB;->getData()[B

    move-result-object v12

    if-eqz v12, :cond_7

    .line 110
    const/4 v4, 0x0

    .line 112
    .local v4, "str":Ljava/lang/String;
    :try_start_2
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v3}, Lc8/ZB;->getData()[B

    move-result-object v12

    const-string/jumbo v13, "utf-8"

    invoke-direct {v5, v12, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 113
    .end local v4    # "str":Ljava/lang/String;
    .local v5, "str":Ljava/lang/String;
    :try_start_3
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 114
    const-string/jumbo v12, "UploadFileConnection"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "upload file success, response: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_6
    move-object v4, v5

    .line 119
    .end local v5    # "str":Ljava/lang/String;
    .restart local v4    # "str":Ljava/lang/String;
    :goto_3
    new-instance v2, Lc8/gC;

    invoke-direct {v2}, Lc8/gC;-><init>()V

    .line 120
    .restart local v2    # "response":Lc8/gC;
    invoke-virtual {v2, v4}, Lc8/gC;->parseResult(Ljava/lang/String;)Lc8/gC;

    move-result-object v2

    .line 121
    iget-boolean v12, v2, Lc8/gC;->success:Z

    if-eqz v12, :cond_7

    .line 122
    iget-object v1, v2, Lc8/gC;->data:Lorg/json/JSONObject;

    .line 124
    .restart local v1    # "json":Lorg/json/JSONObject;
    if-eqz v1, :cond_7

    :try_start_4
    const-string/jumbo v12, "status"

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 125
    const-string/jumbo v12, "uploadInfo"

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 127
    .local v11, "uploadInfo":Lorg/json/JSONObject;
    new-instance v10, Lc8/ID;

    invoke-direct {v10}, Lc8/ID;-><init>()V

    .line 128
    .local v10, "updateData":Lc8/ID;
    const-string/jumbo v12, "accessToken"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lc8/ID;->accessToken:Ljava/lang/String;

    .line 129
    const-string/jumbo v12, "blockNum"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v10, Lc8/ID;->blockNum:I

    .line 130
    const-string/jumbo v12, "fileExt"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lc8/ID;->fileExt:Ljava/lang/String;

    .line 131
    const-string/jumbo v12, "fileName"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lc8/ID;->fileName:Ljava/lang/String;

    .line 132
    const-string/jumbo v12, "fileSize"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, v10, Lc8/ID;->fileSize:J

    .line 133
    const-string/jumbo v12, "resourceUri"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lc8/ID;->resourceUri:Ljava/lang/String;

    .line 134
    const-string/jumbo v12, "tfsKey"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lc8/ID;->tfsKey:Ljava/lang/String;

    .line 135
    const-string/jumbo v12, "tryNum"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v10, Lc8/ID;->tryNum:I

    .line 136
    const-string/jumbo v12, "validTime"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, v10, Lc8/ID;->validTime:J

    .line 137
    const-string/jumbo v12, "finish"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    iput-boolean v12, v10, Lc8/ID;->finish:Z

    .line 138
    iget-object v12, p0, Lc8/HD;->mListener:Lc8/WB;

    if-eqz v12, :cond_3

    .line 139
    iget-object v12, p0, Lc8/HD;->mListener:Lc8/WB;

    const/4 v13, 0x0

    invoke-virtual {v12, v10, v13}, Lc8/WB;->onFinish(Ljava/lang/Object;I)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 143
    .end local v10    # "updateData":Lc8/ID;
    .end local v11    # "uploadInfo":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 144
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 148
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "response":Lc8/gC;
    .end local v4    # "str":Ljava/lang/String;
    :cond_7
    iget-object v12, p0, Lc8/HD;->mListener:Lc8/WB;

    if-eqz v12, :cond_8

    .line 149
    iget-object v12, p0, Lc8/HD;->mListener:Lc8/WB;

    const/4 v13, 0x1

    const-string/jumbo v14, "FAIL"

    invoke-virtual {v12, v13, v14}, Lc8/WB;->onError(ILjava/lang/String;)V

    .line 151
    :cond_8
    const/4 v12, 0x0

    iput-object v12, p0, Lc8/HD;->mListener:Lc8/WB;

    goto/16 :goto_1

    .line 116
    .restart local v4    # "str":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 117
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :goto_4
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_3

    .line 116
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v4    # "str":Ljava/lang/String;
    .restart local v5    # "str":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object v4, v5

    .end local v5    # "str":Ljava/lang/String;
    .restart local v4    # "str":Ljava/lang/String;
    goto :goto_4

    .line 81
    .end local v3    # "result":Lc8/ZB;
    .end local v4    # "str":Ljava/lang/String;
    .restart local v8    # "tokenStr":Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object v7, v8

    .end local v8    # "tokenStr":Ljava/lang/String;
    .restart local v7    # "tokenStr":Ljava/lang/String;
    goto/16 :goto_2
.end method

.method public final uploadFile(Ljava/lang/String;Ljava/lang/String;)Lc8/ZB;
    .locals 22
    .param p1, "purl"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 155
    new-instance v16, Lc8/ZB;

    invoke-direct/range {v16 .. v16}, Lc8/ZB;-><init>()V

    .line 156
    .local v16, "result":Lc8/ZB;
    const/4 v7, 0x0

    .line 157
    .local v7, "conn":Ljava/net/HttpURLConnection;
    const/4 v10, 0x0

    .line 158
    .local v10, "dis":Ljava/io/DataInputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 160
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .local v13, "file":Ljava/io/File;
    new-instance v18, Ljava/net/URL;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 162
    .local v18, "url":Ljava/net/URL;
    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v7, v0

    .line 163
    const v19, 0xea60

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 164
    const v19, 0xea60

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 165
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 166
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 167
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 168
    const-string/jumbo v19, "POST"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 170
    const-string/jumbo v19, "Connection"

    const-string/jumbo v20, "keep-alive"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string/jumbo v19, "Host"

    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "boundary":Ljava/lang/String;
    const-string/jumbo v19, "Content-Type"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "multipart/form-data;boundary="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    new-instance v15, Ljava/io/DataOutputStream;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 178
    .local v15, "out":Ljava/io/DataOutputStream;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "--"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\r\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/HD;->mFileExt:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 180
    const-string/jumbo v19, ""

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/HD;->mFileExt:Ljava/lang/String;

    .line 183
    :cond_0
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Content-Disposition:form-data;name=\"file\";filename=\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/HD;->mFileExt:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\"\r\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 185
    const-string/jumbo v19, "Content-Transfer-Encoding:binary\r\n\r\n"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 187
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 188
    .local v14, "fis":Ljava/io/FileInputStream;
    const/16 v19, 0x1000

    move/from16 v0, v19

    new-array v5, v0, [B

    .line 190
    .local v5, "buffer":[B
    :goto_0
    invoke-virtual {v14, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    .local v9, "count":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v9, v0, :cond_5

    .line 191
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v5, v0, v9}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 217
    .end local v3    # "boundary":Ljava/lang/String;
    .end local v5    # "buffer":[B
    .end local v9    # "count":I
    .end local v13    # "file":Ljava/io/File;
    .end local v14    # "fis":Ljava/io/FileInputStream;
    .end local v15    # "out":Ljava/io/DataOutputStream;
    .end local v18    # "url":Ljava/net/URL;
    :catch_0
    move-exception v12

    .line 218
    .local v12, "e":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v19, "UploadFileConnection"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "upload file IO exception, "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    if-eqz v10, :cond_1

    .line 224
    :try_start_2
    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 230
    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 234
    .end local v12    # "e":Ljava/io/IOException;
    :goto_2
    if-eqz v7, :cond_2

    .line 235
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 238
    :cond_2
    :goto_3
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 239
    const-string/jumbo v19, "UploadFileConnection"

    const-string/jumbo v20, "upload file fail."

    invoke-static/range {v19 .. v20}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_3
    new-instance v16, Lc8/ZB;

    .end local v16    # "result":Lc8/ZB;
    invoke-direct/range {v16 .. v16}, Lc8/ZB;-><init>()V

    :cond_4
    :goto_4
    return-object v16

    .line 193
    .restart local v3    # "boundary":Ljava/lang/String;
    .restart local v5    # "buffer":[B
    .restart local v9    # "count":I
    .restart local v13    # "file":Ljava/io/File;
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "out":Ljava/io/DataOutputStream;
    .restart local v16    # "result":Lc8/ZB;
    .restart local v18    # "url":Ljava/net/URL;
    :cond_5
    :try_start_4
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V

    .line 194
    const-string/jumbo v19, "\r\n"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 195
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "--"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "--\r\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->flush()V

    .line 198
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->close()V

    .line 200
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v17

    .line 201
    .local v17, "status":I
    invoke-virtual/range {v16 .. v17}, Lc8/ZB;->setHttpCode(I)V

    .line 202
    const/16 v19, 0xc8

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 203
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v8

    .line 204
    .local v8, "contentEncoding":Ljava/lang/String;
    if-eqz v8, :cond_7

    const-string/jumbo v19, "gzip"

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 205
    new-instance v11, Ljava/io/DataInputStream;

    new-instance v19, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v10    # "dis":Ljava/io/DataInputStream;
    .local v11, "dis":Ljava/io/DataInputStream;
    move-object v10, v11

    .line 209
    .end local v11    # "dis":Ljava/io/DataInputStream;
    .restart local v10    # "dis":Ljava/io/DataInputStream;
    :goto_5
    const/16 v19, 0x800

    move/from16 v0, v19

    new-array v4, v0, [B

    .line 211
    .local v4, "buf":[B
    :goto_6
    invoke-virtual {v10, v4}, Ljava/io/DataInputStream;->read([B)I

    move-result v6

    .local v6, "ch":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v6, v0, :cond_8

    .line 212
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v2, v4, v0, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    .line 219
    .end local v3    # "boundary":Ljava/lang/String;
    .end local v4    # "buf":[B
    .end local v5    # "buffer":[B
    .end local v6    # "ch":I
    .end local v8    # "contentEncoding":Ljava/lang/String;
    .end local v9    # "count":I
    .end local v13    # "file":Ljava/io/File;
    .end local v14    # "fis":Ljava/io/FileInputStream;
    .end local v15    # "out":Ljava/io/DataOutputStream;
    .end local v17    # "status":I
    .end local v18    # "url":Ljava/net/URL;
    :catch_1
    move-exception v12

    .line 220
    .local v12, "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v19, "UploadFileConnection"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "upload file error, "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 222
    if-eqz v10, :cond_6

    .line 224
    :try_start_6
    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 230
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_7
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 234
    :goto_8
    if-eqz v7, :cond_2

    .line 235
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_3

    .line 207
    .restart local v3    # "boundary":Ljava/lang/String;
    .restart local v5    # "buffer":[B
    .restart local v8    # "contentEncoding":Ljava/lang/String;
    .restart local v9    # "count":I
    .restart local v13    # "file":Ljava/io/File;
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "out":Ljava/io/DataOutputStream;
    .restart local v17    # "status":I
    .restart local v18    # "url":Ljava/net/URL;
    :cond_7
    :try_start_8
    new-instance v11, Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v10    # "dis":Ljava/io/DataInputStream;
    .restart local v11    # "dis":Ljava/io/DataInputStream;
    move-object v10, v11

    .end local v11    # "dis":Ljava/io/DataInputStream;
    .restart local v10    # "dis":Ljava/io/DataInputStream;
    goto :goto_5

    .line 214
    .restart local v4    # "buf":[B
    .restart local v6    # "ch":I
    :cond_8
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lc8/ZB;->setData([B)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 222
    .end local v4    # "buf":[B
    .end local v6    # "ch":I
    .end local v8    # "contentEncoding":Ljava/lang/String;
    :cond_9
    if-eqz v10, :cond_a

    .line 224
    :try_start_9
    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 230
    :cond_a
    :goto_9
    :try_start_a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 234
    :goto_a
    if-eqz v7, :cond_4

    .line 235
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_4

    .line 225
    :catch_2
    move-exception v12

    .line 226
    .local v12, "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 231
    .end local v12    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v12

    .line 232
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    .line 225
    .end local v3    # "boundary":Ljava/lang/String;
    .end local v5    # "buffer":[B
    .end local v9    # "count":I
    .end local v13    # "file":Ljava/io/File;
    .end local v14    # "fis":Ljava/io/FileInputStream;
    .end local v15    # "out":Ljava/io/DataOutputStream;
    .end local v17    # "status":I
    .end local v18    # "url":Ljava/net/URL;
    .local v12, "e":Ljava/io/IOException;
    :catch_4
    move-exception v12

    .line 226
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 231
    :catch_5
    move-exception v12

    .line 232
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 225
    :catch_6
    move-exception v12

    .line 226
    .local v12, "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 231
    .end local v12    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v12

    .line 232
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 222
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v19

    if-eqz v10, :cond_b

    .line 224
    :try_start_b
    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 230
    :cond_b
    :goto_b
    :try_start_c
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    .line 234
    :goto_c
    if-eqz v7, :cond_c

    .line 235
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c
    throw v19

    .line 225
    :catch_8
    move-exception v12

    .line 226
    .local v12, "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 231
    .end local v12    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v12

    .line 232
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method
