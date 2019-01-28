.class public Lc8/lPg;
.super Ljava/lang/Object;
.source "AtcLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/antitheftchain/AtcLog$LogLevel;
    }
.end annotation


# static fields
.field public static final PREFIX:Ljava/lang/String; = "Atc_"

.field public static enableDebug:Z

.field public static enableError:Z

.field public static enableInfo:Z

.field public static enableWarning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 7
    sput-boolean v0, Lc8/lPg;->enableError:Z

    .line 8
    sput-boolean v0, Lc8/lPg;->enableWarning:Z

    .line 9
    sput-boolean v0, Lc8/lPg;->enableInfo:Z

    .line 10
    const/4 v0, 0x0

    sput-boolean v0, Lc8/lPg;->enableDebug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 41
    sget-boolean v0, Lc8/lPg;->enableDebug:Z

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Atc_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    :cond_0
    return-void
.end method
