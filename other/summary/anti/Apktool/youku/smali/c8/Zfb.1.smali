.class public Lc8/Zfb;
.super Ljava/lang/Object;
.source "AccountLinkContext.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static credentialService:Lc8/rhb;

.field public static executorService:Lc8/shb;

.field public static isBind:Z

.field public static loginService:Lc8/hib;

.field public static rpcService:Lc8/thb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lc8/Zfb;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/Zfb;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
