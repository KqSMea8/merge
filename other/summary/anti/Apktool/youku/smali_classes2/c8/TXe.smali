.class public Lc8/TXe;
.super Ljava/lang/Object;
.source "AVFSLogUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static concat([Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p0, "msgs"    # [Ljava/lang/Object;

    .prologue
    .line 117
    const-string/jumbo v2, ""

    .line 118
    .local v2, "msg":Ljava/lang/String;
    array-length v0, p0

    .line 119
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    :cond_0
    return-object v2
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msgs"    # [Ljava/lang/Object;

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msgs"    # [Ljava/lang/Object;

    .prologue
    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msgs"    # [Ljava/lang/Object;

    .prologue
    .line 30
    invoke-static {p2}, Lc8/TXe;->concat([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "msg":Ljava/lang/String;
    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    return v1
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msgs"    # [Ljava/lang/Object;

    .prologue
    .line 59
    invoke-static {p1}, Lc8/TXe;->concat([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "msg":Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 55
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msgs"    # [Ljava/lang/Object;

    .prologue
    .line 113
    invoke-static {p2}, Lc8/TXe;->concat([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msgs"    # [Ljava/lang/Object;

    .prologue
    .line 109
    invoke-static {p1}, Lc8/TXe;->concat([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static isLoggable(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "level"    # I

    .prologue
    .line 26
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static varargs println(ILjava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msgs"    # [Ljava/lang/Object;

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msgs"    # [Ljava/lang/Object;

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msgs"    # [Ljava/lang/Object;

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 47
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msgs"    # [Ljava/lang/Object;

    .prologue
    .line 43
    invoke-static {p2}, Lc8/TXe;->concat([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msgs"    # [Ljava/lang/Object;

    .prologue
    .line 22
    invoke-static {p1}, Lc8/TXe;->concat([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 39
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static varargs wtf(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msgs"    # [Ljava/lang/Object;

    .prologue
    .line 92
    invoke-static {p2}, Lc8/TXe;->concat([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static varargs wtf(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msgs"    # [Ljava/lang/Object;

    .prologue
    .line 97
    invoke-static {p1}, Lc8/TXe;->concat([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
