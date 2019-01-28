.class public Lc8/KWc;
.super Ljava/lang/Object;
.source "Profile.java"


# static fields
.field public static COOKIE:Ljava/lang/String; = null

.field public static DEBUG:Z = false

.field public static FROM_TUDOU:I = 0x0

.field public static FROM_TUDOU_HD:I = 0x0

.field public static FROM_YOUKU:I = 0x0

.field public static LOG:Z = false

.field public static TAG:Ljava/lang/String; = null

.field public static final TIMEOUT:I = 0x7530

.field public static User_Agent:Ljava/lang/String;

.field public static mContext:Landroid/content/Context;

.field public static x86:Z

.field public static x86SoDownloaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lc8/KWc;->COOKIE:Ljava/lang/String;

    .line 56
    sput-boolean v1, Lc8/KWc;->DEBUG:Z

    .line 58
    sput-boolean v2, Lc8/KWc;->LOG:Z

    .line 60
    sput v1, Lc8/KWc;->FROM_YOUKU:I

    .line 61
    sput v2, Lc8/KWc;->FROM_TUDOU:I

    .line 62
    const/4 v0, 0x2

    sput v0, Lc8/KWc;->FROM_TUDOU_HD:I

    .line 64
    sput-boolean v1, Lc8/KWc;->x86:Z

    .line 66
    sput-boolean v1, Lc8/KWc;->x86SoDownloaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initProfile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "useragent"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    sput-object p0, Lc8/KWc;->TAG:Ljava/lang/String;

    .line 23
    sput-object p1, Lc8/KWc;->User_Agent:Ljava/lang/String;

    .line 24
    sput-object p2, Lc8/KWc;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method

.method public static isX86CanotPlay()Z
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lc8/KWc;->x86:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lc8/KWc;->x86SoDownloaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
