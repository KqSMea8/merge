.class public Lc8/IHd;
.super Ljava/lang/Object;
.source "ANLog.java"


# static fields
.field private static IS_LOGGING_ENABLED:Z

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lc8/IHd;->IS_LOGGING_ENABLED:Z

    .line 30
    const-string/jumbo v0, "AndroidNetworking"

    sput-object v0, Lc8/IHd;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 52
    sget-boolean v0, Lc8/IHd;->IS_LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lc8/IHd;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lc8/xGd;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_0
    return-void
.end method

.method public static enableLogging()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lc8/IHd;->IS_LOGGING_ENABLED:Z

    .line 38
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 64
    sget-boolean v0, Lc8/IHd;->IS_LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lc8/IHd;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    return-void
.end method
