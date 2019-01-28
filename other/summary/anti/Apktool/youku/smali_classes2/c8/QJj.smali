.class public Lc8/QJj;
.super Ljava/lang/Object;
.source "YKErrorConstants.java"


# static fields
.field public static final ERROR_INIT:I = -0xbb9

.field public static final ERROR_NETWORKSDK_READ_STREAM:I = -0xbba

.field public static final ERROR_NO_EXCEPTION_MESSAGE:I = -0xbc6

.field public static final ERROR_OKHTTP_ASYN_ONFAILURE:I = -0xbbc

.field public static final ERROR_OKHTTP_CONNECT_EXCEPTION:I = -0xbc3

.field public static final ERROR_OKHTTP_CONSTRUCT_FAILURE:I = -0xbbe

.field public static final ERROR_OKHTTP_NO_ROUTE_HOST:I = -0xbc5

.field public static final ERROR_OKHTTP_READ_RESPONSE:I = -0xbbb

.field public static final ERROR_OKHTTP_SOCKET_EXCEPTION:I = -0xbbf

.field public static final ERROR_OKHTTP_SOCKET_TIME_OUT:I = -0xbc0

.field public static final ERROR_OKHTTP_SSLPEER_UNVERIFIED:I = -0xbc4

.field public static final ERROR_OKHTTP_SYN_ONFAILURE:I = -0xbbd

.field public static final ERROR_OKHTTP_UNKNOWN_HOST:I = -0xbc2

.field public static final ERROR_OKHTTP_UNKNOWN_SERVICE:I = -0xbc1

.field public static final ERROR_UNKNOWN:I = -0xbb8

.field private static errorMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 72
    sput-object v0, Lc8/QJj;->errorMap:Landroid/util/SparseArray;

    const/16 v1, -0xbc6

    const-string/jumbo v2, "\u65e0\u5f02\u5e38\u4fe1\u606f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    sget-object v0, Lc8/QJj;->errorMap:Landroid/util/SparseArray;

    const/16 v1, -0xbb8

    const-string/jumbo v2, "\u672a\u77e5\u5f02\u5e38"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    sget-object v0, Lc8/QJj;->errorMap:Landroid/util/SparseArray;

    const/16 v1, -0xbb9

    const-string/jumbo v2, "\u5bb9\u5668\u521d\u59cb\u5316\u5f02\u5e38"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    sget-object v0, Lc8/QJj;->errorMap:Landroid/util/SparseArray;

    const/16 v1, -0xbba

    const-string/jumbo v2, "Networksdk_\u6570\u636e\u6d41\u8bfb\u53d6\u5f02\u5e38"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    sget-object v0, Lc8/QJj;->errorMap:Landroid/util/SparseArray;

    const/16 v1, -0xbbb

    const-string/jumbo v2, "OkHttp_\u89e3\u6790Response\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    sget-object v0, Lc8/QJj;->errorMap:Landroid/util/SparseArray;

    const/16 v1, -0xbbc

    const-string/jumbo v2, "OkHttp_\u5f02\u6b65\u8bf7\u6c42\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    sget-object v0, Lc8/QJj;->errorMap:Landroid/util/SparseArray;

    const/16 v1, -0xbbd

    const-string/jumbo v2, "OkHttp_\u540c\u6b65\u8bf7\u6c42\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    sget-object v0, Lc8/QJj;->errorMap:Landroid/util/SparseArray;

    const/16 v1, -0xbbe

    const-string/jumbo v2, "OkHttp_\u8bf7\u6c42\u6784\u9020\u5f02\u5e38"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    sget-object v0, Lc8/QJj;->errorMap:Landroid/util/SparseArray;

    const/16 v1, -0xbbf

    const-string/jumbo v2, "OkHttp_Socket\u5f02\u5e38"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    sget-object v0, Lc8/QJj;->errorMap:Landroid/util/SparseArray;

    const/16 v1, -0xbc0

    const-string/jumbo v2, "OkHttp_Socket\u8d85\u65f6"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    sget-object v0, Lc8/QJj;->errorMap:Landroid/util/SparseArray;

    const/16 v1, -0xbc1

    const-string/jumbo v2, "OkHttp_unknownService"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    sget-object v0, Lc8/QJj;->errorMap:Landroid/util/SparseArray;

    const/16 v1, -0xbc2

    const-string/jumbo v2, "OkHttp_\u57df\u540d\u4e0d\u80fd\u89e3\u6790"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    sget-object v0, Lc8/QJj;->errorMap:Landroid/util/SparseArray;

    const/16 v1, -0xbc3

    const-string/jumbo v2, "OkHttp_\u8fde\u63a5\u5f02\u5e38"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    sget-object v0, Lc8/QJj;->errorMap:Landroid/util/SparseArray;

    const/16 v1, -0xbc4

    const-string/jumbo v2, "OkHttp_SSL\u5f02\u5e38"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 86
    sget-object v0, Lc8/QJj;->errorMap:Landroid/util/SparseArray;

    const/16 v1, -0xbc5

    const-string/jumbo v2, "OkHttp_\u6ca1\u6709\u627e\u5230\u8def\u7531"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containError(I)Z
    .locals 1
    .param p0, "errorCode"    # I

    .prologue
    .line 96
    sget-object v0, Lc8/QJj;->errorMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static converRespondCode(II)I
    .locals 2
    .param p0, "responseCode"    # I
    .param p1, "errorCode"    # I

    .prologue
    .line 129
    move v0, p0

    .line 130
    .local v0, "converCode":I
    const/16 v1, -0x64

    if-gt p0, v1, :cond_4

    .line 131
    const/16 v1, -0x190

    if-ne p0, v1, :cond_1

    .line 132
    const/16 v0, 0x4e85

    .line 155
    :cond_0
    :goto_0
    return v0

    .line 133
    :cond_1
    const/16 v1, -0x67

    if-eq p0, v1, :cond_2

    const/16 v1, -0x191

    if-ne p0, v1, :cond_3

    .line 134
    :cond_2
    const/16 v0, 0x4e87

    goto :goto_0

    .line 136
    :cond_3
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit16 v0, v1, 0x7148

    goto :goto_0

    .line 139
    :cond_4
    const/16 v1, -0xbc7

    if-le p1, v1, :cond_8

    const/16 v1, -0xbb8

    if-gt p1, v1, :cond_8

    .line 140
    const/16 v1, -0xbb9

    if-ne p1, v1, :cond_5

    .line 141
    const/16 v0, 0x7149

    goto :goto_0

    .line 142
    :cond_5
    const/16 v1, -0xbba

    if-ne p1, v1, :cond_6

    .line 143
    const/16 v0, 0x714a

    goto :goto_0

    .line 144
    :cond_6
    const/16 v1, -0xbc0

    if-ne p1, v1, :cond_7

    .line 145
    const/16 v0, 0x4e87

    goto :goto_0

    .line 147
    :cond_7
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit16 v0, v1, 0x6914

    goto :goto_0

    .line 149
    :cond_8
    const/16 v1, -0xfec

    if-lt p1, v1, :cond_9

    const/16 v1, -0xfa0

    if-ge p1, v1, :cond_9

    .line 150
    add-int/lit16 v0, p1, 0x7db1

    goto :goto_0

    .line 151
    :cond_9
    if-lez p0, :cond_0

    .line 152
    add-int/lit16 v0, p0, 0x4e20

    goto :goto_0
.end method

.method public static getErrorMsg(I)Ljava/lang/String;
    .locals 2
    .param p0, "errorCode"    # I

    .prologue
    .line 91
    sget-object v1, Lc8/QJj;->errorMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 92
    .local v0, "errorMsg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, ""

    .end local v0    # "errorMsg":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static judgeException(Lc8/eJj;Ljava/io/IOException;I)Lc8/eJj;
    .locals 1
    .param p0, "response"    # Lc8/eJj;
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "defaultCode"    # I

    .prologue
    .line 100
    if-nez p1, :cond_0

    .line 101
    const/16 v0, -0xbc6

    invoke-virtual {p0, v0}, Lc8/eJj;->setYkErrorCode(I)V

    .line 119
    :goto_0
    return-object p0

    .line 102
    :cond_0
    instance-of v0, p1, Ljava/net/NoRouteToHostException;

    if-eqz v0, :cond_1

    .line 103
    const/16 v0, -0xbc5

    invoke-virtual {p0, v0}, Lc8/eJj;->setYkErrorCode(I)V

    goto :goto_0

    .line 104
    :cond_1
    instance-of v0, p1, Ljava/net/ConnectException;

    if-eqz v0, :cond_2

    .line 105
    const/16 v0, -0xbc3

    invoke-virtual {p0, v0}, Lc8/eJj;->setYkErrorCode(I)V

    goto :goto_0

    .line 106
    :cond_2
    instance-of v0, p1, Ljava/net/SocketException;

    if-eqz v0, :cond_3

    .line 107
    const/16 v0, -0xbbf

    invoke-virtual {p0, v0}, Lc8/eJj;->setYkErrorCode(I)V

    goto :goto_0

    .line 108
    :cond_3
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_4

    .line 109
    const/16 v0, -0xbc0

    invoke-virtual {p0, v0}, Lc8/eJj;->setYkErrorCode(I)V

    goto :goto_0

    .line 110
    :cond_4
    instance-of v0, p1, Ljava/net/UnknownServiceException;

    if-eqz v0, :cond_5

    .line 111
    const/16 v0, -0xbc1

    invoke-virtual {p0, v0}, Lc8/eJj;->setYkErrorCode(I)V

    goto :goto_0

    .line 112
    :cond_5
    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_6

    .line 113
    const/16 v0, -0xbc2

    invoke-virtual {p0, v0}, Lc8/eJj;->setYkErrorCode(I)V

    goto :goto_0

    .line 114
    :cond_6
    instance-of v0, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v0, :cond_7

    .line 115
    const/16 v0, -0xbc4

    invoke-virtual {p0, v0}, Lc8/eJj;->setYkErrorCode(I)V

    goto :goto_0

    .line 117
    :cond_7
    invoke-virtual {p0, p2}, Lc8/eJj;->setYkErrorCode(I)V

    goto :goto_0
.end method
