.class public Lc8/TYn;
.super Ljava/lang/Object;
.source "PlayStageTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/SYn;,
        Lc8/RYn;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;

.field static volatile mRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lc8/TYn;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/TYn;->TAG:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lc8/TYn;->mRegistered:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static upsRequest()Lc8/RYn;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lc8/SYn;

    invoke-direct {v0}, Lc8/SYn;-><init>()V

    return-object v0
.end method
