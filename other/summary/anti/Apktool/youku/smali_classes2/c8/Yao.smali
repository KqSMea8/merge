.class public Lc8/Yao;
.super Ljava/lang/Object;
.source "Profile.java"


# static fields
.field public static COOKIE:Ljava/lang/String; = null

.field public static DEBUG:Z = false

.field public static GUID:Ljava/lang/String; = null

.field public static LOG:Z = false

.field public static TAG:Ljava/lang/String; = null

.field public static final TIMEOUT:I = 0x7530

.field public static USER_AGENT:Ljava/lang/String;

.field public static isLogined:Z

.field public static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lc8/Yao;->COOKIE:Ljava/lang/String;

    .line 41
    sput-boolean v1, Lc8/Yao;->DEBUG:Z

    .line 43
    sput-boolean v1, Lc8/Yao;->LOG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initProfile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "useragent"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    sput-object p0, Lc8/Yao;->TAG:Ljava/lang/String;

    .line 18
    sput-object p1, Lc8/Yao;->USER_AGENT:Ljava/lang/String;

    .line 19
    sput-object p2, Lc8/Yao;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method

.method public static setLoginState(Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 1
    .param p0, "bLogined"    # Ljava/lang/Boolean;
    .param p1, "cookie"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lc8/Yao;->isLogined:Z

    .line 30
    sput-object p1, Lc8/Yao;->COOKIE:Ljava/lang/String;

    .line 31
    return-void
.end method
