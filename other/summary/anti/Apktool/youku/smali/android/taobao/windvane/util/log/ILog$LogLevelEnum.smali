.class public final enum Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;
.super Ljava/lang/Enum;
.source "ILog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/fI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevelEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

.field public static final enum DEBUG:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

.field public static final enum ERROR:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

.field public static final enum INFO:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

.field public static final enum VERBOSE:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

.field public static final enum WARNING:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;


# instance fields
.field private LogLevel:I

.field private LogLevelName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    const-string/jumbo v1, "VERBOSE"

    const-string/jumbo v2, "V"

    invoke-direct {v0, v1, v3, v3, v2}, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->VERBOSE:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    new-instance v0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    const-string/jumbo v1, "DEBUG"

    const-string/jumbo v2, "D"

    invoke-direct {v0, v1, v4, v4, v2}, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->DEBUG:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    new-instance v0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    const-string/jumbo v1, "INFO"

    const-string/jumbo v2, "I"

    invoke-direct {v0, v1, v5, v5, v2}, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->INFO:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    new-instance v0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    const-string/jumbo v1, "WARNING"

    const-string/jumbo v2, "W"

    invoke-direct {v0, v1, v6, v6, v2}, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->WARNING:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    new-instance v0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    const-string/jumbo v1, "ERROR"

    const-string/jumbo v2, "E"

    invoke-direct {v0, v1, v7, v7, v2}, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->ERROR:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    .line 7
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    sget-object v1, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->VERBOSE:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    aput-object v1, v0, v3

    sget-object v1, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->DEBUG:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    aput-object v1, v0, v4

    sget-object v1, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->INFO:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    aput-object v1, v0, v5

    sget-object v1, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->WARNING:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    aput-object v1, v0, v6

    sget-object v1, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->ERROR:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    aput-object v1, v0, v7

    sput-object v0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->$VALUES:[Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "level"    # I
    .param p4, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-object p4, p0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->LogLevelName:Ljava/lang/String;

    .line 13
    iput p3, p0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->LogLevel:I

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    return-object v0
.end method

.method public static values()[Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->$VALUES:[Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    invoke-virtual {v0}, [Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    return-object v0
.end method


# virtual methods
.method public getLogLevel()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->LogLevel:I

    return v0
.end method

.method public getLogLevelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->LogLevelName:Ljava/lang/String;

    return-object v0
.end method
