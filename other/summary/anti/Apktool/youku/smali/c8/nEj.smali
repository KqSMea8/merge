.class public Lc8/nEj;
.super Ljava/lang/Object;
.source "Profile.java"


# static fields
.field public static LOG:Z

.field public static PRE_DATA_PATH:Ljava/lang/String;

.field public static TAG:Ljava/lang/String;

.field public static USER_AGENT:Ljava/lang/String;

.field public static USE_SYSTEM_PLAYER:Z

.field public static isInited:Z

.field public static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8
    const-string/jumbo v0, ""

    sput-object v0, Lc8/nEj;->USER_AGENT:Ljava/lang/String;

    .line 9
    const-string/jumbo v0, "/data/data/"

    sput-object v0, Lc8/nEj;->PRE_DATA_PATH:Ljava/lang/String;

    .line 10
    const/4 v0, 0x1

    sput-boolean v0, Lc8/nEj;->LOG:Z

    .line 12
    sput-boolean v1, Lc8/nEj;->USE_SYSTEM_PLAYER:Z

    .line 13
    sput-boolean v1, Lc8/nEj;->isInited:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initProfile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "useragent"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    const/4 v0, 0x1

    sput-boolean v0, Lc8/nEj;->isInited:Z

    .line 17
    sput-object p0, Lc8/nEj;->TAG:Ljava/lang/String;

    .line 18
    sput-object p1, Lc8/nEj;->USER_AGENT:Ljava/lang/String;

    .line 19
    sput-object p2, Lc8/nEj;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method
