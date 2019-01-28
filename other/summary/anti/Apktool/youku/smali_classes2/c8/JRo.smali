.class public Lc8/JRo;
.super Ljava/lang/Object;
.source "TraceIdGenerator.java"


# static fields
.field private static IP_16:Ljava/lang/String; = null

.field private static IP_int:Ljava/lang/String; = null

.field private static PID:Ljava/lang/String; = null

.field private static PID_FLAG:C = '\u0000'

.field private static count:Ljava/util/concurrent/atomic/AtomicInteger; = null

.field private static final pattern:Ljava/util/regex/Pattern;

.field private static final regex:Ljava/lang/String; = "\\b((?!\\d\\d\\d)\\d+|1\\d\\d|2[0-4]\\d|25[0-5])\\.((?!\\d\\d\\d)\\d+|1\\d\\d|2[0-4]\\d|25[0-5])\\.((?!\\d\\d\\d)\\d+|1\\d\\d|2[0-4]\\d|25[0-5])\\.((?!\\d\\d\\d)\\d+|1\\d\\d|2[0-4]\\d|25[0-5])\\b"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const-string/jumbo v0, "ffffffff"

    sput-object v0, Lc8/JRo;->IP_16:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, "255255255255"

    sput-object v0, Lc8/JRo;->IP_int:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, "9801"

    sput-object v0, Lc8/JRo;->PID:Ljava/lang/String;

    .line 22
    const/16 v0, 0x64

    sput-char v0, Lc8/JRo;->PID_FLAG:C

    .line 25
    const-string/jumbo v0, "\\b((?!\\d\\d\\d)\\d+|1\\d\\d|2[0-4]\\d|25[0-5])\\.((?!\\d\\d\\d)\\d+|1\\d\\d|2[0-4]\\d|25[0-5])\\.((?!\\d\\d\\d)\\d+|1\\d\\d|2[0-4]\\d|25[0-5])\\.((?!\\d\\d\\d)\\d+|1\\d\\d|2[0-4]\\d|25[0-5])\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc8/JRo;->pattern:Ljava/util/regex/Pattern;

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lc8/JRo;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generate(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    :try_start_0
    invoke-static {p0}, Lc8/JRo;->getIPAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "ipAddress":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 56
    invoke-static {v0}, Lc8/JRo;->getIP_16(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lc8/JRo;->IP_16:Ljava/lang/String;

    .line 57
    invoke-static {v0}, Lc8/JRo;->getIP_int(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lc8/JRo;->IP_int:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v0    # "ipAddress":Ljava/lang/String;
    :cond_0
    :goto_0
    sget-object v1, Lc8/JRo;->IP_16:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lc8/JRo;->getNextId()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lc8/JRo;->getTraceId(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static generate(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "ip"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lc8/JRo;->validate(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-static {p0}, Lc8/JRo;->getIP_16(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lc8/JRo;->getNextId()I

    move-result v1

    invoke-static {v0, v2, v3, v1}, Lc8/JRo;->getTraceId(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lc8/JRo;->generate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static generateIpv4Id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lc8/JRo;->IP_int:Ljava/lang/String;

    return-object v0
.end method

.method static generateIpv4Id(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "ip"    # Ljava/lang/String;

    .prologue
    .line 79
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lc8/JRo;->validate(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {p0}, Lc8/JRo;->getIP_int(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lc8/JRo;->IP_int:Ljava/lang/String;

    goto :goto_0
.end method

.method static getHexPid(I)Ljava/lang/String;
    .locals 3
    .param p0, "pid"    # I

    .prologue
    .line 34
    if-gez p0, :cond_1

    .line 35
    const/4 p0, 0x0

    .line 39
    :cond_0
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "str":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 36
    .end local v0    # "str":Ljava/lang/String;
    :cond_1
    const v1, 0xffff

    if-le p0, v1, :cond_0

    .line 37
    const v1, 0xea60

    rem-int/2addr p0, v1

    goto :goto_0

    .line 43
    .restart local v0    # "str":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method public static getIPAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    const-string/jumbo v9, "connectivity"

    .line 125
    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/ConnectivityManager;

    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 126
    .local v4, "info":Landroid/net/NetworkInfo;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 127
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    if-nez v9, :cond_4

    .line 130
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 131
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/NetworkInterface;

    .line 132
    .local v5, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 133
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 134
    .local v3, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v9

    if-nez v9, :cond_1

    instance-of v9, v3, Ljava/net/Inet4Address;

    if-eqz v9, :cond_1

    .line 135
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 162
    .end local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v2    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    .end local v5    # "intf":Ljava/net/NetworkInterface;
    :cond_2
    :goto_0
    return-object v6

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    .line 162
    .end local v0    # "e":Ljava/net/SocketException;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 143
    :cond_4
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 144
    const/4 v6, 0x0

    .line 145
    .local v6, "ipAddress":Ljava/lang/String;
    const/4 v7, 0x0

    .line 147
    .local v7, "wifiInfo":Landroid/net/wifi/WifiInfo;
    :try_start_1
    const-string/jumbo v9, "wifi"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    .line 148
    .local v8, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v8, :cond_5

    .line 149
    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    .line 151
    :cond_5
    if-eqz v7, :cond_2

    .line 152
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v9

    invoke-static {v9}, Lc8/JRo;->intIP2StringIP(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    goto :goto_0

    .end local v8    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catch_1
    move-exception v9

    goto :goto_0
.end method

.method private static getIP_16(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "ip"    # Ljava/lang/String;

    .prologue
    .line 95
    const-string/jumbo v4, "\\."

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "ips":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v3, "sb":Ljava/lang/StringBuilder;
    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v2, v4

    .line 98
    .local v0, "column":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "hex":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 100
    const/16 v6, 0x30

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 106
    .end local v0    # "column":Ljava/lang/String;
    .end local v1    # "hex":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static getIP_int(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "ip"    # Ljava/lang/String;

    .prologue
    .line 110
    const-string/jumbo v0, "."

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getNextId()I
    .locals 3

    .prologue
    .line 115
    .local v0, "current":I
    .local v1, "next":I
    :cond_0
    sget-object v2, Lc8/JRo;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 116
    const/16 v2, 0x2328

    if-le v0, v2, :cond_1

    .end local v1    # "next":I
    const/16 v1, 0x3e8

    .line 117
    .restart local v1    # "next":I
    :goto_0
    sget-object v2, Lc8/JRo;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    return v1

    .line 116
    .end local v1    # "next":I
    :cond_1
    add-int/lit8 v1, v0, 0x1

    goto :goto_0
.end method

.method private static getTraceId(Ljava/lang/String;JI)Ljava/lang/String;
    .locals 3
    .param p0, "ip"    # Ljava/lang/String;
    .param p1, "timestamp"    # J
    .param p3, "nextId"    # I

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 48
    .local v0, "appender":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-char v2, Lc8/JRo;->PID_FLAG:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lc8/JRo;->PID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static intIP2StringIP(I)Ljava/lang/String;
    .locals 2
    .param p0, "ip"    # I

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    ushr-int/lit8 v1, p0, 0x18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static validate(Ljava/lang/String;)Z
    .locals 1
    .param p0, "ip"    # Ljava/lang/String;

    .prologue
    .line 88
    :try_start_0
    sget-object v0, Lc8/JRo;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 90
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
