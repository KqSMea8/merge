.class public Lc8/Ksf;
.super Ljava/lang/Object;
.source "GlobalOrange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/orange/GlobalOrange$UPDMODE;,
        Lcom/taobao/orange/GlobalOrange$SERVER;,
        Lcom/taobao/orange/GlobalOrange$ENV;
    }
.end annotation


# static fields
.field public static mAppSecret:Ljava/lang/String;

.field public static mAppVersion:Ljava/lang/String;

.field public static mAppkey:Ljava/lang/String;

.field public static mAuthCode:Ljava/lang/String;

.field public static mContext:Landroid/content/Context;

.field public static mDeviceId:Ljava/lang/String;

.field public static mEnv:Lcom/taobao/orange/OConstant$ENV;

.field public static mIndexUpdMode:Lcom/taobao/orange/OConstant$UPDMODE;

.field public static mOrangeHeader:Ljava/lang/String;

.field public static mProbeHosts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mServerType:Lcom/taobao/orange/OConstant$SERVER;

.field public static mUserId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/taobao/orange/OConstant$UPDMODE;->O_XMD:Lcom/taobao/orange/OConstant$UPDMODE;

    sput-object v0, Lc8/Ksf;->mIndexUpdMode:Lcom/taobao/orange/OConstant$UPDMODE;

    .line 20
    sget-object v0, Lcom/taobao/orange/OConstant$ENV;->ONLINE:Lcom/taobao/orange/OConstant$ENV;

    sput-object v0, Lc8/Ksf;->mEnv:Lcom/taobao/orange/OConstant$ENV;

    .line 21
    sget-object v0, Lcom/taobao/orange/OConstant$SERVER;->TAOBAO:Lcom/taobao/orange/OConstant$SERVER;

    sput-object v0, Lc8/Ksf;->mServerType:Lcom/taobao/orange/OConstant$SERVER;

    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lc8/Ksf;->mProbeHosts:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method
