.class public Lc8/dzk;
.super Ljava/lang/Object;
.source "MKTHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/czk;,
        Lc8/azk;
    }
.end annotation


# static fields
.field public static final ACCS_YOUKU_TAG:Ljava/lang/String; = "youku"

.field private static ourInstance:Lc8/dzk;


# instance fields
.field private connection:Lc8/azk;

.field private mockDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lc8/dzk;

    invoke-direct {v0}, Lc8/dzk;-><init>()V

    sput-object v0, Lc8/dzk;->ourInstance:Lc8/dzk;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lc8/azk;

    invoke-direct {v0, p0}, Lc8/azk;-><init>(Lc8/dzk;)V

    iput-object v0, p0, Lc8/dzk;->connection:Lc8/azk;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/dzk;->mockDataMap:Ljava/util/Map;

    .line 65
    return-void
.end method

.method public static getInstance()Lc8/dzk;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lc8/dzk;->ourInstance:Lc8/dzk;

    return-object v0
.end method


# virtual methods
.method public getConnection()Lc8/azk;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lc8/dzk;->connection:Lc8/azk;

    return-object v0
.end method

.method public init(Landroid/app/Application;)V
    .locals 7
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MsgEnvironment bind"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    sget v0, Lc8/Dfh;->envType:I

    invoke-static {v0}, Lc8/KLj;->getAppkey(I)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "appkey":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lc8/Dfh;->envType:I

    invoke-static {v1}, Lc8/KLj;->getYkInappHost(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 73
    .local v6, "domain":Ljava/lang/String;
    invoke-static {p1}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    new-instance v4, Lcom/youku/phone/mkt/MKTHandler$1;

    invoke-direct {v4, p0}, Lcom/youku/phone/mkt/MKTHandler$1;-><init>(Lc8/dzk;)V

    new-instance v5, Lc8/Xyk;

    invoke-direct {v5, p0, v6}, Lc8/Xyk;-><init>(Lc8/dzk;Ljava/lang/String;)V

    move-object v0, p1

    .line 71
    invoke-static/range {v0 .. v5}, Lc8/PJf;->bind(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lc8/OJf;)V

    .line 104
    iget-object v0, p0, Lc8/dzk;->connection:Lc8/azk;

    invoke-static {v0}, Lc8/xJf;->bind(Lc8/PIf;)V

    .line 105
    new-instance v0, Lc8/czk;

    invoke-direct {v0, p0}, Lc8/czk;-><init>(Lc8/dzk;)V

    invoke-static {v0}, Lc8/xJf;->bind(Lc8/PIf;)V

    .line 108
    new-instance v0, Lc8/Yyk;

    invoke-direct {v0, p0}, Lc8/Yyk;-><init>(Lc8/dzk;)V

    invoke-static {v0}, Lc8/xIf;->setRemoteConfig(Lc8/wIf;)V

    .line 121
    new-instance v0, Lc8/Zyk;

    invoke-direct {v0, p0}, Lc8/Zyk;-><init>(Lc8/dzk;)V

    invoke-static {v0}, Lc8/ZJf;->setLog(Lc8/YJf;)V

    .line 147
    return-void
.end method
