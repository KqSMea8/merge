.class public Lc8/YLn;
.super Ljava/lang/Object;
.source "LogTag.java"


# static fields
.field public static TAG_PLAYER:Ljava/lang/String;

.field public static TAG_PREFIX:Ljava/lang/String;

.field public static TAG_TIME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    const-string/jumbo v0, "YKPlayer-"

    sput-object v0, Lc8/YLn;->TAG_PREFIX:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lc8/YLn;->TAG_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "PlayFlow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/YLn;->TAG_PLAYER:Ljava/lang/String;

    .line 12
    const-string/jumbo v0, "TimeStat"

    sput-object v0, Lc8/YLn;->TAG_TIME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
