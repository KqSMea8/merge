.class public Lc8/HHd;
.super Ljava/lang/Object;
.source "AndroidNetworking.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc8/RHd;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "dirPath"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 147
    new-instance v0, Lc8/RHd;

    invoke-direct {v0, p0, p1, p2}, Lc8/RHd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static enableLogging()V
    .locals 0

    .prologue
    .line 196
    invoke-static {}, Lc8/IHd;->enableLogging()V

    .line 197
    return-void
.end method

.method public static get(Ljava/lang/String;)Lc8/SHd;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 85
    new-instance v0, Lc8/SHd;

    invoke-direct {v0, p0}, Lc8/SHd;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static post(Ljava/lang/String;)Lc8/UHd;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 105
    new-instance v0, Lc8/UHd;

    invoke-direct {v0, p0}, Lc8/UHd;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static upload(Ljava/lang/String;)Lc8/THd;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 157
    new-instance v0, Lc8/THd;

    invoke-direct {v0, p0}, Lc8/THd;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
