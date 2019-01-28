.class public Lc8/oSh;
.super Ljava/lang/Object;
.source "Profile.java"


# static fields
.field public static User_Agent:Ljava/lang/String;

.field public static cookie:Ljava/lang/String;

.field public static isLogined:Z

.field public static isShowLog:Z

.field public static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lc8/oSh;->isShowLog:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPassportCookie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lc8/Gko;->getCookie()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lc8/Gko;->getCookie()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
