.class public Lcom/ali/mobisecenhance/ld/tools/Upload;
.super Ljava/lang/Object;
.source "Upload.java"


# static fields
.field private static final AES:Ljava/lang/String; = "AES"

.field private static final CBC_PKCS5_PADDING:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final UTF:Ljava/lang/String; = "UTF-8"

.field public static final VIPARA:Ljava/lang/String; = "1269571569321021"

.field public static final api:Ljava/lang/String; = "report"

.field public static baseUrl:Ljava/lang/String; = null

.field public static final dailyUrl:Ljava/lang/String; = "http://jg.daily.taobao.net/"

.field public static final keyMd5:Ljava/lang/String;

.field public static final onlineUrl:Ljava/lang/String; = "http://jg.alibaba-inc.com/"

.field public static final preUrl:Ljava/lang/String; = "http://jgpre.alibaba-inc.com/"

.field public static final urlFormat:Ljava/lang/String; = "%s?keymd5=%s&datamd5=%s&type=%s"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gez v0, :cond_0

    const-class v0, La/does/not/Exists2;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .prologue
    .line 27
    :cond_0
    const-string v0, "http://jg.alibaba-inc.com/"

    sput-object v0, Lcom/ali/mobisecenhance/ld/tools/Upload;->baseUrl:Ljava/lang/String;

    .line 28
    const-string v0, "alijgserver"

    invoke-static {v0}, Lcom/ali/mobisecenhance/ld/tools/Upload;->calcMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/mobisecenhance/ld/tools/Upload;->keyMd5:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static calcAES128(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/16 v7, 0x10

    .line 161
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-object v5

    .line 165
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v7, :cond_2

    .line 166
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "0000000000000000"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 171
    :goto_1
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    const-string v6, "1269571569321021"

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v4, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 172
    .local v4, "zeroIv":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "UTF-8"

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    const-string v7, "AES"

    invoke-direct {v3, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 174
    .local v3, "key":Ljavax/crypto/spec/SecretKeySpec;
    const-string v6, "AES/CBC/PKCS5Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 175
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v6, 0x1

    invoke-virtual {v0, v6, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 177
    const-string v6, "UTF-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 179
    .local v2, "encryptedData":[B
    invoke-static {v2}, Lcom/ali/mobisecenhance/ld/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 168
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "encryptedData":[B
    .end local v3    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v4    # "zeroIv":Ljavax/crypto/spec/IvParameterSpec;
    :cond_2
    const/4 v6, 0x0

    const/16 v7, 0x10

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_1

    .line 181
    :catch_0
    move-exception v1

    .line 182
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static calcMd5(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 38
    const/4 v5, 0x0

    .line 40
    .local v5, "md5":Ljava/security/MessageDigest;
    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 47
    .local v1, "charArray":[C
    array-length v8, v1

    new-array v0, v8, [B

    .line 49
    .local v0, "byteArray":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v8, v1

    if-ge v4, v8, :cond_0

    .line 50
    aget-char v8, v1, v4

    int-to-byte v8, v8

    aput-byte v8, v0, v4

    .line 49
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 41
    .end local v0    # "byteArray":[B
    .end local v1    # "charArray":[C
    .end local v4    # "i":I
    :catch_0
    move-exception v2

    .line 42
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    const-string v8, ""

    .line 62
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v8

    .line 52
    .restart local v0    # "byteArray":[B
    .restart local v1    # "charArray":[C
    .restart local v4    # "i":I
    :cond_0
    invoke-virtual {v5, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    .line 54
    .local v6, "md5Bytes":[B
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 55
    .local v3, "hexValue":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    :goto_2
    array-length v8, v6

    if-ge v4, v8, :cond_2

    .line 56
    aget-byte v8, v6, v4

    and-int/lit16 v7, v8, 0xff

    .line 57
    .local v7, "val":I
    const/16 v8, 0x10

    if-ge v7, v8, :cond_1

    .line 58
    const-string v8, "0"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    :cond_1
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 62
    .end local v7    # "val":I
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1
.end method

.method protected static calcRc4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "keymd5"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2, p1}, Lcom/ali/mobisecenhance/ld/util/RC4;->encry_RC4_byte([BLjava/lang/String;)[B

    move-result-object v0

    .line 153
    .local v0, "encrbytes":[B
    invoke-static {v0}, Lcom/ali/mobisecenhance/ld/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "result":Ljava/lang/String;
    return-object v1
.end method

.method protected static doHttpConnect(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "finalUrl"    # Ljava/lang/String;
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 112
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, "Url":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 115
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const/16 v6, 0x1388

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 118
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 119
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 120
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 121
    const-string v6, "Content-type"

    const-string v7, "application/x-java-serialized-object"

    invoke-virtual {v1, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v6, "POST"

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 127
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 128
    .local v4, "outputStream":Ljava/io/OutputStream;
    const-string v6, "UTF-8"

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V

    .line 129
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 131
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 132
    .local v5, "resultCode":I
    const/16 v6, 0xc8

    if-ne v5, v6, :cond_0

    .line 133
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Lcom/ali/mobisecenhance/ld/tools/Upload;->getResultMsg(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 142
    .end local v0    # "Url":Ljava/net/URL;
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .end local v5    # "resultCode":I
    :cond_0
    :goto_0
    return-object v3

    .line 140
    :catch_0
    move-exception v2

    .line 141
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected static genCrashReportUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "urlFormat"    # Ljava/lang/String;
    .param p1, "apiUrl"    # Ljava/lang/String;
    .param p2, "keyMd5"    # Ljava/lang/String;
    .param p3, "reportType"    # I
    .param p4, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ld/tools/Upload;->calcMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "dataMd5":Ljava/lang/String;
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getResultMsg(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 83
    const/4 v5, 0x0

    .line 88
    .local v5, "resultString":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 89
    .local v1, "bis":Ljava/io/BufferedInputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 91
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 92
    .local v0, "arr":[B
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    .local v4, "len":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 93
    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 94
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    goto :goto_0

    .line 101
    .end local v0    # "arr":[B
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "len":I
    :catch_0
    move-exception v3

    .line 102
    .local v3, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v6

    .line 96
    .restart local v0    # "arr":[B
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "len":I
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v5

    .line 97
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v5

    .line 99
    goto :goto_1
.end method
