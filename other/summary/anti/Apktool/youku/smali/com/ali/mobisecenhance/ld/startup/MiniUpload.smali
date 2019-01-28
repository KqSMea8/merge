.class public Lcom/ali/mobisecenhance/ld/startup/MiniUpload;
.super Ljava/lang/Object;
.source "MiniUpload.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final api:Ljava/lang/String; = "report"

.field public static baseUrl:Ljava/lang/String; = null

.field public static final dailyUrl:Ljava/lang/String; = "http://jg.daily.taobao.net/"

.field public static final keyMd5:Ljava/lang/String;

.field private static final log:Lcom/ali/mobisecenhance/ld/startup/RecordLog;

.field public static final onlineUrl:Ljava/lang/String; = "http://jg.alibaba-inc.com/"

.field public static final preUrl:Ljava/lang/String; = "http://jgpre.alibaba-inc.com/"

.field private static final reportType:I = 0x0

.field public static final urlFormat:Ljava/lang/String; = "%s?keymd5=%s&datamd5=%s&type=%s"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/ali/mobisecenhance/ld/startup/MiniUpload;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/mobisecenhance/ld/startup/MiniUpload;->TAG:Ljava/lang/String;

    .line 18
    new-instance v0, Lcom/ali/mobisecenhance/ld/startup/RecordLog;

    invoke-direct {v0}, Lcom/ali/mobisecenhance/ld/startup/RecordLog;-><init>()V

    sput-object v0, Lcom/ali/mobisecenhance/ld/startup/MiniUpload;->log:Lcom/ali/mobisecenhance/ld/startup/RecordLog;

    .line 27
    const-string v0, "http://jg.alibaba-inc.com/"

    sput-object v0, Lcom/ali/mobisecenhance/ld/startup/MiniUpload;->baseUrl:Ljava/lang/String;

    .line 28
    const-string v0, "alijgserver"

    invoke-static {v0}, Lcom/ali/mobisecenhance/ld/startup/MiniUpload;->calcMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/mobisecenhance/ld/startup/MiniUpload;->keyMd5:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calcMd5(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 32
    const/4 v5, 0x0

    .line 34
    .local v5, "md5":Ljava/security/MessageDigest;
    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 41
    .local v1, "charArray":[C
    array-length v8, v1

    new-array v0, v8, [B

    .line 43
    .local v0, "byteArray":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v8, v1

    if-ge v4, v8, :cond_0

    .line 44
    aget-char v8, v1, v4

    int-to-byte v8, v8

    aput-byte v8, v0, v4

    .line 43
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 35
    .end local v0    # "byteArray":[B
    .end local v1    # "charArray":[C
    .end local v4    # "i":I
    :catch_0
    move-exception v2

    .line 36
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 37
    const-string v8, ""

    .line 56
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v8

    .line 46
    .restart local v0    # "byteArray":[B
    .restart local v1    # "charArray":[C
    .restart local v4    # "i":I
    :cond_0
    invoke-virtual {v5, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    .line 48
    .local v6, "md5Bytes":[B
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 49
    .local v3, "hexValue":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    :goto_2
    array-length v8, v6

    if-ge v4, v8, :cond_2

    .line 50
    aget-byte v8, v6, v4

    and-int/lit16 v7, v8, 0xff

    .line 51
    .local v7, "val":I
    const/16 v8, 0x10

    if-ge v7, v8, :cond_1

    .line 52
    const-string v8, "0"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    :cond_1
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 56
    .end local v7    # "val":I
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1
.end method

.method private static doHttpConnect(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "finalUrl"    # Ljava/lang/String;
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 102
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, "Url":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 105
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const/16 v6, 0x1388

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 108
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 109
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 110
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 111
    const-string v6, "Content-type"

    const-string v7, "application/x-java-serialized-object"

    invoke-virtual {v1, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v6, "POST"

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 117
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 118
    .local v3, "outputStream":Ljava/io/OutputStream;
    const-string v6, "UTF-8"

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    .line 119
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 121
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 122
    .local v4, "resultCode":I
    const/16 v6, 0xc8

    if-ne v4, v6, :cond_0

    .line 124
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 125
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "send ok, resultCode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Lcom/ali/mobisecenhance/ld/startup/MiniUpload;->getResultMsg(Ljava/io/InputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 134
    .end local v0    # "Url":Ljava/net/URL;
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .end local v4    # "resultCode":I
    :cond_0
    :goto_0
    return v5

    .line 132
    :catch_0
    move-exception v2

    .line 133
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getResultMsg(Ljava/io/InputStream;)Z
    .locals 15
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    const/4 v11, 0x0

    .line 61
    const/4 v7, 0x0

    .line 66
    .local v7, "resultString":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 67
    .local v1, "bis":Ljava/io/BufferedInputStream;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 69
    .local v3, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v12, 0x400

    new-array v0, v12, [B

    .line 70
    .local v0, "arr":[B
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    .local v6, "len":I
    const/4 v12, -0x1

    if-eq v6, v12, :cond_0

    .line 71
    const/4 v12, 0x0

    invoke-virtual {v3, v0, v12, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 72
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    goto :goto_0

    .line 90
    .end local v0    # "arr":[B
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "len":I
    :catch_0
    move-exception v4

    .line 94
    :goto_1
    return v11

    .line 74
    .restart local v0    # "arr":[B
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "len":I
    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v7

    .line 75
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 77
    if-nez v7, :cond_1

    .line 78
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v13, "result String is null"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 81
    :cond_1
    const-string/jumbo v8, "{\"resultcode\":"

    .line 82
    .local v8, "s1":Ljava/lang/String;
    const-string v9, "\"}"

    .line 84
    .local v9, "s2":Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 85
    .local v10, "start":I
    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 86
    .local v5, "end":I
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v5

    invoke-virtual {v7, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "body":Ljava/lang/String;
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "resultString is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    const/4 v11, 0x1

    goto :goto_1
.end method

.method public static reportStartUpInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/mobisecenhance/ld/startup/EnSdkBuilder;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "basedir"    # Ljava/lang/String;
    .param p2, "jg_version"    # Ljava/lang/String;
    .param p3, "configs"    # Ljava/lang/String;
    .param p4, "builder"    # Lcom/ali/mobisecenhance/ld/startup/EnSdkBuilder;

    .prologue
    .line 143
    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/ali/mobisecenhance/ld/startup/EnSdkBuilder;->getContent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "content":Ljava/lang/String;
    sget-object v6, Lcom/ali/mobisecenhance/ld/startup/MiniUpload;->log:Lcom/ali/mobisecenhance/ld/startup/RecordLog;

    sget-object v7, Lcom/ali/mobisecenhance/ld/startup/MiniUpload;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "content is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/ali/mobisecenhance/ld/startup/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    sget-object v7, Lcom/ali/mobisecenhance/ld/startup/MiniUpload;->keyMd5:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/ali/mobisecenhance/ld/startup/MiniCrypt;->encry_RC4_byte([BLjava/lang/String;)[B

    move-result-object v3

    .line 148
    .local v3, "encrbytes":[B
    invoke-static {v3}, Lcom/ali/mobisecenhance/ld/startup/MiniCrypt;->encode([B)Ljava/lang/String;

    move-result-object v5

    .line 150
    .local v5, "upjson":Ljava/lang/String;
    sget-object v6, Lcom/ali/mobisecenhance/ld/startup/MiniUpload;->log:Lcom/ali/mobisecenhance/ld/startup/RecordLog;

    sget-object v7, Lcom/ali/mobisecenhance/ld/startup/MiniUpload;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "upjson is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/ali/mobisecenhance/ld/startup/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/ali/mobisecenhance/ld/startup/MiniUpload;->keyMd5:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ali/mobisecenhance/ld/startup/MiniUpload;->calcMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "dataMd5":Ljava/lang/String;
    const-string v6, "%s?keymd5=%s&datamd5=%s&type=%s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/ali/mobisecenhance/ld/startup/MiniUpload;->baseUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "report"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Lcom/ali/mobisecenhance/ld/startup/MiniUpload;->keyMd5:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v1, v7, v8

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, "finalUrl":Ljava/lang/String;
    sget-object v6, Lcom/ali/mobisecenhance/ld/startup/MiniUpload;->log:Lcom/ali/mobisecenhance/ld/startup/RecordLog;

    sget-object v7, Lcom/ali/mobisecenhance/ld/startup/MiniUpload;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "finalUrl is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/ali/mobisecenhance/ld/startup/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :try_start_0
    invoke-static {v4, v5}, Lcom/ali/mobisecenhance/ld/startup/MiniUpload;->doHttpConnect(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    const/4 v6, 0x1

    :goto_0
    return v6

    .line 159
    :catch_0
    move-exception v2

    .line 160
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    const/4 v6, 0x0

    goto :goto_0
.end method
