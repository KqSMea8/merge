.class public Lc8/Vao;
.super Ljava/lang/Object;
.source "NetUtil.java"


# static fields
.field private static final LINE_SEPARATOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 147
    const-string/jumbo v0, "line.separator"

    .line 148
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/Vao;->LINE_SEPARATOR:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 157
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 158
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .local v3, "sb":Ljava/lang/StringBuilder;
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    sget-object v4, Lc8/Vao;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 165
    .end local v1    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "Util"

    invoke-static {v4, v0}, Lc8/Oao;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 174
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 169
    .restart local v1    # "line":Ljava/lang/String;
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 170
    :catch_1
    move-exception v0

    .line 171
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "Util"

    invoke-static {v4, v0}, Lc8/Oao;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 170
    .end local v1    # "line":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 171
    const-string/jumbo v4, "Util"

    invoke-static {v4, v0}, Lc8/Oao;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 168
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 169
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 172
    :goto_2
    throw v4

    .line 170
    :catch_3
    move-exception v0

    .line 171
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "Util"

    invoke-static {v5, v0}, Lc8/Oao;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static disableConnectionReuseIfNecessary()V
    .locals 2

    .prologue
    .line 131
    invoke-static {}, Lc8/Vao;->hasHttpConnectionBug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const-string/jumbo v0, "http.keepAlive"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    :cond_0
    return-void
.end method

.method public static getNetworkType(Landroid/content/Context;)I
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 82
    const-string/jumbo v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 83
    .local v1, "m":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 84
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 86
    const/16 v2, 0x3e8

    .line 122
    :goto_0
    :pswitch_0
    return v2

    .line 87
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_1

    .line 88
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 122
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 90
    :pswitch_1
    const/4 v2, 0x7

    goto :goto_0

    .line 92
    :pswitch_2
    const/4 v2, 0x4

    goto :goto_0

    .line 94
    :pswitch_3
    const/4 v2, 0x2

    goto :goto_0

    .line 96
    :pswitch_4
    const/16 v2, 0xe

    goto :goto_0

    .line 98
    :pswitch_5
    const/4 v2, 0x5

    goto :goto_0

    .line 100
    :pswitch_6
    const/4 v2, 0x6

    goto :goto_0

    .line 102
    :pswitch_7
    const/16 v2, 0xc

    goto :goto_0

    .line 106
    :pswitch_8
    const/16 v2, 0x8

    goto :goto_0

    .line 108
    :pswitch_9
    const/16 v2, 0xa

    goto :goto_0

    .line 110
    :pswitch_a
    const/16 v2, 0xf

    goto :goto_0

    .line 112
    :pswitch_b
    const/16 v2, 0x9

    goto :goto_0

    .line 114
    :pswitch_c
    const/16 v2, 0xb

    goto :goto_0

    .line 116
    :pswitch_d
    const/16 v2, 0xd

    goto :goto_0

    .line 118
    :pswitch_e
    const/4 v2, 0x3

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_e
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_8
        :pswitch_b
        :pswitch_9
        :pswitch_c
        :pswitch_7
        :pswitch_d
        :pswitch_4
        :pswitch_a
    .end packed-switch
.end method

.method public static hasHttpConnectionBug()Z
    .locals 2

    .prologue
    .line 144
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasInternet()Z
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lc8/Yao;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lc8/Vao;->hasInternet(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static hasInternet(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 41
    :try_start_0
    const-string/jumbo v5, "connectivity"

    .line 42
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 43
    .local v3, "m":Landroid/net/ConnectivityManager;
    if-nez v3, :cond_1

    .line 44
    const-string/jumbo v5, "NetWorkState"

    const-string/jumbo v6, "Unavailabel"

    invoke-static {v5, v6}, Lc8/Oao;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .end local v3    # "m":Landroid/net/ConnectivityManager;
    :cond_0
    :goto_0
    return v4

    .line 47
    .restart local v3    # "m":Landroid/net/ConnectivityManager;
    :cond_1
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 48
    .local v2, "info":[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 49
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v2

    if-ge v1, v5, :cond_0

    .line 50
    aget-object v5, v2, v1

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, v6, :cond_2

    .line 52
    const/4 v4, 0x1

    goto :goto_0

    .line 49
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 57
    .end local v1    # "i":I
    .end local v2    # "info":[Landroid/net/NetworkInfo;
    .end local v3    # "m":Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isWifi()Z
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lc8/Yao;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lc8/Vao;->isWifi(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isWifi(Landroid/content/Context;)Z
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 67
    const-string/jumbo v3, "connectivity"

    .line 68
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 69
    .local v0, "m":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 71
    .local v1, "n":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 75
    .end local v1    # "n":Landroid/net/NetworkInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
