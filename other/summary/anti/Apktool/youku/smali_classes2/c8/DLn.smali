.class public Lc8/DLn;
.super Ljava/lang/Object;
.source "OrangeMgr.java"


# static fields
.field private static mInstance:Lc8/DLn;

.field public static uPasswordCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, "\uff04"

    sput-object v0, Lc8/DLn;->uPasswordCode:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p0}, Lc8/DLn;->getConfig()Ljava/lang/String;

    .line 23
    invoke-direct {p0}, Lc8/DLn;->registerListener()V

    .line 24
    return-void
.end method

.method public static getInstance()Lc8/DLn;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lc8/DLn;->mInstance:Lc8/DLn;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lc8/DLn;

    invoke-direct {v0}, Lc8/DLn;-><init>()V

    sput-object v0, Lc8/DLn;->mInstance:Lc8/DLn;

    .line 30
    :cond_0
    sget-object v0, Lc8/DLn;->mInstance:Lc8/DLn;

    return-object v0
.end method

.method private registerListener()V
    .locals 4

    .prologue
    .line 41
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "upassword_yk_orange"

    aput-object v3, v1, v2

    new-instance v2, Lc8/CLn;

    invoke-direct {v2, p0}, Lc8/CLn;-><init>(Lc8/DLn;)V

    invoke-virtual {v0, v1, v2}, Lc8/ctf;->registerListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V

    .line 49
    return-void
.end method


# virtual methods
.method public getConfig()Ljava/lang/String;
    .locals 5

    .prologue
    .line 34
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v1

    const-string/jumbo v2, "upassword_yk_orange"

    const-string/jumbo v3, "yk_upw_orange_code_key"

    const-string/jumbo v4, "\uff04"

    invoke-virtual {v1, v2, v3, v4}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getConfig result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    sput-object v0, Lc8/DLn;->uPasswordCode:Ljava/lang/String;

    return-object v0
.end method
