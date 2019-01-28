.class public Lc8/Pao;
.super Ljava/lang/Object;
.source "MACAddressUtils.java"


# static fields
.field private static macAddress:Ljava/lang/String;

.field private static macAddressAsLong:J


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 14
    sput-object v6, Lc8/Pao;->macAddress:Ljava/lang/String;

    .line 15
    const-wide/16 v6, -0x1

    sput-wide v6, Lc8/Pao;->macAddressAsLong:J

    .line 58
    :try_start_0
    const-string/jumbo v6, "java.net.InterfaceAddress"

    invoke-static {v6}, Lc8/Pao;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 59
    invoke-static {}, Lc8/Pao;->getHardwareAddress()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lc8/Pao;->macAddress:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_10

    .line 62
    :goto_0
    sget-object v6, Lc8/Pao;->macAddress:Ljava/lang/String;

    if-nez v6, :cond_9

    .line 63
    const/4 v5, 0x0

    .line 64
    .local v5, "p":Ljava/lang/Process;
    const/4 v1, 0x0

    .line 66
    .local v1, "in":Ljava/io/BufferedReader;
    :try_start_1
    const-string/jumbo v6, "os.name"

    const-string/jumbo v7, ""

    invoke-static {v6, v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "osname":Ljava/lang/String;
    const-string/jumbo v6, "Windows"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 68
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "ipconfig"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "/all"

    aput-object v9, v7, v8

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 79
    :cond_0
    :goto_1
    if-eqz v5, :cond_7

    .line 80
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v7, 0x80

    invoke-direct {v2, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .end local v1    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    :cond_1
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "l":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 83
    invoke-static {v3}, Lc8/Pao;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 84
    sput-object v6, Lc8/Pao;->macAddress:Ljava/lang/String;

    if-eqz v6, :cond_1

    sget-object v6, Lc8/Pao;->macAddress:Ljava/lang/String;

    invoke-static {v6}, Lc8/NZn;->parseShort(Ljava/lang/String;)S
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v6

    const/16 v7, 0xff

    if-ne v6, v7, :cond_1

    goto :goto_2

    .line 69
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v3    # "l":Ljava/lang/String;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    :cond_2
    :try_start_3
    const-string/jumbo v6, "Solaris"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "SunOS"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 70
    :cond_3
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "uname"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "-n"

    aput-object v8, v6, v7

    invoke-static {v6}, Lc8/Pao;->getFirstLineOfCommand([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "hostName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 72
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "/usr/sbin/arp"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    goto :goto_1

    .line 74
    .end local v0    # "hostName":Ljava/lang/String;
    :cond_4
    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "/usr/sbin/lanscan"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 75
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "/usr/sbin/lanscan"

    aput-object v9, v7, v8

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    goto/16 :goto_1

    .line 76
    :cond_5
    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "/sbin/ifconfig"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 77
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "/sbin/ifconfig"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "-a"

    aput-object v9, v7, v8

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    goto/16 :goto_1

    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "l":Ljava/lang/String;
    :cond_6
    move-object v1, v2

    .line 92
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v3    # "l":Ljava/lang/String;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    :cond_7
    if-eqz v5, :cond_9

    .line 93
    if-eqz v1, :cond_8

    .line 95
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 99
    :cond_8
    :goto_3
    :try_start_5
    invoke-virtual {v5}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_f

    .line 103
    :goto_4
    :try_start_6
    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_e

    .line 106
    :goto_5
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    .line 110
    .end local v4    # "osname":Ljava/lang/String;
    :cond_9
    :goto_6
    return-void

    .line 92
    :catch_0
    move-exception v6

    :goto_7
    if-eqz v5, :cond_9

    .line 93
    if-eqz v1, :cond_a

    .line 95
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 99
    :cond_a
    :goto_8
    :try_start_8
    invoke-virtual {v5}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c

    .line 103
    :goto_9
    :try_start_9
    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    .line 106
    :goto_a
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    goto :goto_6

    .line 92
    :catch_1
    move-exception v6

    :goto_b
    if-eqz v5, :cond_9

    .line 93
    if-eqz v1, :cond_b

    .line 95
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 99
    :cond_b
    :goto_c
    :try_start_b
    invoke-virtual {v5}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 103
    :goto_d
    :try_start_c
    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 106
    :goto_e
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    goto :goto_6

    .line 92
    :catchall_0
    move-exception v6

    :goto_f
    if-eqz v5, :cond_d

    .line 93
    if-eqz v1, :cond_c

    .line 95
    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    .line 99
    :cond_c
    :goto_10
    :try_start_e
    invoke-virtual {v5}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    .line 103
    :goto_11
    :try_start_f
    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    .line 106
    :goto_12
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    :cond_d
    throw v6

    .restart local v4    # "osname":Ljava/lang/String;
    :catch_2
    move-exception v6

    goto :goto_3

    .end local v4    # "osname":Ljava/lang/String;
    :catch_3
    move-exception v6

    goto :goto_8

    :catch_4
    move-exception v6

    goto :goto_c

    :catch_5
    move-exception v7

    goto :goto_10

    :catch_6
    move-exception v7

    goto :goto_12

    :catch_7
    move-exception v7

    goto :goto_11

    .line 92
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "osname":Ljava/lang/String;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_f

    .end local v4    # "osname":Ljava/lang/String;
    :catch_8
    move-exception v6

    goto :goto_e

    :catch_9
    move-exception v6

    goto :goto_d

    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "osname":Ljava/lang/String;
    :catch_a
    move-exception v6

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_b

    .end local v4    # "osname":Ljava/lang/String;
    :catch_b
    move-exception v6

    goto :goto_a

    :catch_c
    move-exception v6

    goto :goto_9

    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "osname":Ljava/lang/String;
    :catch_d
    move-exception v6

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_7

    :catch_e
    move-exception v6

    goto/16 :goto_5

    :catch_f
    move-exception v6

    goto/16 :goto_4

    .end local v1    # "in":Ljava/io/BufferedReader;
    .end local v4    # "osname":Ljava/lang/String;
    .end local v5    # "p":Ljava/lang/Process;
    :catch_10
    move-exception v6

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static getFirstLineOfCommand([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "commands"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    const/4 v0, 0x0

    .line 30
    .local v0, "p":Ljava/lang/Process;
    const/4 v1, 0x0

    .line 32
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 33
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v5, 0x80

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 37
    .local v3, "str":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 38
    if-eqz v2, :cond_0

    .line 40
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 44
    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 48
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 51
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    :cond_1
    return-object v3

    .line 37
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "str":Ljava/lang/String;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v0, :cond_3

    .line 38
    if-eqz v1, :cond_2

    .line 40
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 44
    :cond_2
    :goto_4
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 48
    :goto_5
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 51
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    :cond_3
    throw v4

    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "str":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "str":Ljava/lang/String;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v5

    goto :goto_4

    :catch_2
    move-exception v5

    goto :goto_6

    :catch_3
    move-exception v5

    goto :goto_5

    .line 37
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "str":Ljava/lang/String;
    :catch_4
    move-exception v4

    goto :goto_2

    :catch_5
    move-exception v4

    goto :goto_1
.end method

.method public static getHardwareAddress()Ljava/lang/String;
    .locals 6

    .prologue
    .line 154
    const/4 v3, 0x0

    .line 156
    .local v3, "out":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    .line 157
    .local v2, "ifs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    if-eqz v2, :cond_1

    .line 158
    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 159
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 160
    .local v1, "iface":Ljava/net/NetworkInterface;
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v0

    .line 161
    .local v0, "hardware":[B
    if-eqz v0, :cond_0

    array-length v4, v0

    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    aget-byte v4, v0, v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x24

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v4, v0}, Lc8/NZn;->append(Ljava/lang/Appendable;[B)Ljava/lang/Appendable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 169
    .end local v0    # "hardware":[B
    .end local v1    # "iface":Ljava/net/NetworkInterface;
    .end local v2    # "ifs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_1
    :goto_0
    return-object v3

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lc8/Pao;->macAddress:Ljava/lang/String;

    return-object v0
.end method

.method public static getMacAddressAsLong()J
    .locals 4

    .prologue
    .line 22
    sget-wide v0, Lc8/Pao;->macAddressAsLong:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 23
    sget-object v0, Lc8/Pao;->macAddress:Ljava/lang/String;

    invoke-static {v0}, Lc8/NZn;->parseLong(Ljava/lang/CharSequence;)J

    move-result-wide v0

    sput-wide v0, Lc8/Pao;->macAddressAsLong:J

    .line 25
    :cond_0
    sget-wide v0, Lc8/Pao;->macAddressAsLong:J

    return-wide v0
.end method

.method public static parse(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x5

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/16 v10, 0x3a

    const/4 v9, -0x1

    .line 113
    .line 114
    move-object v6, p0

    .local v6, "out":Ljava/lang/String;
    const-string/jumbo v7, "0x"

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 115
    .local v2, "hexStart":I
    if-eq v2, v9, :cond_2

    const-string/jumbo v7, "ETHER"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v9, :cond_2

    .line 116
    const/16 v7, 0x20

    invoke-virtual {v6, v7, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 117
    .local v1, "hexEnd":I
    add-int/lit8 v7, v2, 0x2

    if-le v1, v7, :cond_0

    .line 118
    invoke-virtual {v6, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 147
    .end local v1    # "hexEnd":I
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    const-string/jumbo v7, "0x"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 148
    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 150
    :cond_1
    return-object v6

    .line 121
    :cond_2
    const/4 v4, 0x0

    .line 122
    .local v4, "octets":I
    const/16 v7, 0x2d

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_3

    .line 123
    const/16 v7, 0x2d

    invoke-virtual {v6, v7, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 125
    :cond_3
    invoke-virtual {v6, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 126
    .local v3, "lastIndex":I
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    if-le v3, v7, :cond_4

    .line 127
    const/4 v6, 0x0

    goto :goto_0

    .line 129
    :cond_4
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v8, v3, 0x3

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 130
    .local v0, "end":I
    add-int/lit8 v4, v4, 0x1

    .line 131
    move v5, v3

    .line 132
    .local v5, "old":I
    :cond_5
    :goto_1
    if-eq v4, v13, :cond_7

    if-eq v3, v9, :cond_7

    if-le v3, v11, :cond_7

    .line 133
    add-int/lit8 v3, v3, -0x1

    .line 134
    invoke-virtual {v6, v10, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v3

    .line 135
    sub-int v7, v5, v3

    const/4 v8, 0x3

    if-eq v7, v8, :cond_6

    sub-int v7, v5, v3

    if-ne v7, v12, :cond_5

    .line 136
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 137
    move v5, v3

    goto :goto_1

    .line 140
    :cond_7
    if-ne v4, v13, :cond_8

    if-le v3, v11, :cond_8

    .line 141
    add-int/lit8 v7, v3, -0x2

    invoke-virtual {v6, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 143
    :cond_8
    const/4 v6, 0x0

    goto :goto_0
.end method
