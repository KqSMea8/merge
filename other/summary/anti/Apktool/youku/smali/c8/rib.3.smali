.class public Lc8/rib;
.super Ljava/lang/Object;
.source "LoginContext.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static final bindBridgeName:Ljava/lang/String; = "loginBridge"

.field public static credentialService:Lc8/rhb; = null

.field public static executorService:Ljava/util/concurrent/ExecutorService; = null

.field public static final loginBridgeName:Ljava/lang/String; = "accountBridge"

.field public static rpcService:Lc8/thb;

.field public static storageService:Lc8/uhb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lc8/rib;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/rib;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
