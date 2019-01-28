.class public Lc8/RUf;
.super Ljava/lang/Object;
.source "InitConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/PUf;,
        Lc8/QUf;
    }
.end annotation


# instance fields
.field private drawableLoader:Lc8/AVf;

.field private framework:Ljava/lang/String;

.field private httpAdapter:Lc8/DVf;

.field private imgAdapter:Lc8/EVf;

.field private mJSExceptionAdapter:Lc8/FVf;

.field private mURIAdapter:Lc8/IVf;

.field private soLoader:Lc8/GVf;

.field private storageAdapter:Lc8/oWf;

.field private utAdapter:Lc8/HVf;

.field private webSocketAdapterFactory:Lc8/AWf;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method synthetic constructor <init>(Lc8/PUf;)V
    .locals 0
    .param p1, "x0"    # Lc8/PUf;

    .prologue
    .line 34
    invoke-direct {p0}, Lc8/RUf;-><init>()V

    return-void
.end method

.method static synthetic access$1002(Lc8/RUf;Lc8/FVf;)Lc8/FVf;
    .locals 0
    .param p0, "x0"    # Lc8/RUf;
    .param p1, "x1"    # Lc8/FVf;

    .prologue
    .line 34
    iput-object p1, p0, Lc8/RUf;->mJSExceptionAdapter:Lc8/FVf;

    return-object p1
.end method

.method static synthetic access$102(Lc8/RUf;Lc8/DVf;)Lc8/DVf;
    .locals 0
    .param p0, "x0"    # Lc8/RUf;
    .param p1, "x1"    # Lc8/DVf;

    .prologue
    .line 34
    iput-object p1, p0, Lc8/RUf;->httpAdapter:Lc8/DVf;

    return-object p1
.end method

.method static synthetic access$202(Lc8/RUf;Lc8/EVf;)Lc8/EVf;
    .locals 0
    .param p0, "x0"    # Lc8/RUf;
    .param p1, "x1"    # Lc8/EVf;

    .prologue
    .line 34
    iput-object p1, p0, Lc8/RUf;->imgAdapter:Lc8/EVf;

    return-object p1
.end method

.method static synthetic access$302(Lc8/RUf;Lc8/AVf;)Lc8/AVf;
    .locals 0
    .param p0, "x0"    # Lc8/RUf;
    .param p1, "x1"    # Lc8/AVf;

    .prologue
    .line 34
    iput-object p1, p0, Lc8/RUf;->drawableLoader:Lc8/AVf;

    return-object p1
.end method

.method static synthetic access$402(Lc8/RUf;Lc8/HVf;)Lc8/HVf;
    .locals 0
    .param p0, "x0"    # Lc8/RUf;
    .param p1, "x1"    # Lc8/HVf;

    .prologue
    .line 34
    iput-object p1, p0, Lc8/RUf;->utAdapter:Lc8/HVf;

    return-object p1
.end method

.method static synthetic access$502(Lc8/RUf;Lc8/oWf;)Lc8/oWf;
    .locals 0
    .param p0, "x0"    # Lc8/RUf;
    .param p1, "x1"    # Lc8/oWf;

    .prologue
    .line 34
    iput-object p1, p0, Lc8/RUf;->storageAdapter:Lc8/oWf;

    return-object p1
.end method

.method static synthetic access$602(Lc8/RUf;Lc8/GVf;)Lc8/GVf;
    .locals 0
    .param p0, "x0"    # Lc8/RUf;
    .param p1, "x1"    # Lc8/GVf;

    .prologue
    .line 34
    iput-object p1, p0, Lc8/RUf;->soLoader:Lc8/GVf;

    return-object p1
.end method

.method static synthetic access$702(Lc8/RUf;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lc8/RUf;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lc8/RUf;->framework:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lc8/RUf;Lc8/IVf;)Lc8/IVf;
    .locals 0
    .param p0, "x0"    # Lc8/RUf;
    .param p1, "x1"    # Lc8/IVf;

    .prologue
    .line 34
    iput-object p1, p0, Lc8/RUf;->mURIAdapter:Lc8/IVf;

    return-object p1
.end method

.method static synthetic access$902(Lc8/RUf;Lc8/AWf;)Lc8/AWf;
    .locals 0
    .param p0, "x0"    # Lc8/RUf;
    .param p1, "x1"    # Lc8/AWf;

    .prologue
    .line 34
    iput-object p1, p0, Lc8/RUf;->webSocketAdapterFactory:Lc8/AWf;

    return-object p1
.end method


# virtual methods
.method public getDrawableLoader()Lc8/AVf;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lc8/RUf;->drawableLoader:Lc8/AVf;

    return-object v0
.end method

.method public getFramework()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lc8/RUf;->framework:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpAdapter()Lc8/DVf;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lc8/RUf;->httpAdapter:Lc8/DVf;

    return-object v0
.end method

.method public getIWXSoLoaderAdapter()Lc8/GVf;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lc8/RUf;->soLoader:Lc8/GVf;

    return-object v0
.end method

.method public getImgAdapter()Lc8/EVf;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lc8/RUf;->imgAdapter:Lc8/EVf;

    return-object v0
.end method

.method public getJSExceptionAdapter()Lc8/FVf;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lc8/RUf;->mJSExceptionAdapter:Lc8/FVf;

    return-object v0
.end method

.method public getStorageAdapter()Lc8/oWf;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lc8/RUf;->storageAdapter:Lc8/oWf;

    return-object v0
.end method

.method public getURIAdapter()Lc8/IVf;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lc8/RUf;->mURIAdapter:Lc8/IVf;

    return-object v0
.end method

.method public getUtAdapter()Lc8/HVf;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lc8/RUf;->utAdapter:Lc8/HVf;

    return-object v0
.end method

.method public getWebSocketAdapterFactory()Lc8/AWf;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lc8/RUf;->webSocketAdapterFactory:Lc8/AWf;

    return-object v0
.end method
