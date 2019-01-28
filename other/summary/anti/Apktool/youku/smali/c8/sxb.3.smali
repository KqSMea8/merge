.class public Lc8/sxb;
.super Ljava/lang/Object;
.source "PhenixTracker.java"


# static fields
.field private static final REPORT_IMAGE_QUALITY:I = 0x64

.field private static final TAG:Ljava/lang/String; = "PhenixTracker"

.field private static enabled:Z


# instance fields
.field private mEventReporter:Lc8/Uwb;

.field private final mRequestId:I

.field private mRequestIdString:Ljava/lang/String;
    .annotation build Lc8/jFp;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lc8/sxb;->enabled:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lc8/Vwb;->nextRequestId()I

    move-result v0

    iput v0, p0, Lc8/sxb;->mRequestId:I

    .line 39
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-static {}, Lc8/Uwb;->getInstance()Lc8/Uwb;

    move-result-object v0

    iput-object v0, p0, Lc8/sxb;->mEventReporter:Lc8/Uwb;

    .line 41
    const-string/jumbo v0, "PhenixTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Create new instance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lc8/sxb;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/sxb;

    .prologue
    .line 26
    invoke-direct {p0}, Lc8/sxb;->getRequestId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lc8/sxb;)Lc8/Uwb;
    .locals 1
    .param p0, "x0"    # Lc8/sxb;

    .prologue
    .line 26
    iget-object v0, p0, Lc8/sxb;->mEventReporter:Lc8/Uwb;

    return-object v0
.end method

.method static synthetic access$200(Lc8/sxb;Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1
    .param p0, "x0"    # Lc8/sxb;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lc8/sxb;->decideFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lc8/sxb;Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/sxb;
    .param p1, "x1"    # Landroid/graphics/Bitmap$CompressFormat;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lc8/sxb;->decideContentType(Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private canReport()Z
    .locals 1

    .prologue
    .line 148
    sget-boolean v0, Lc8/sxb;->enabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/sxb;->mEventReporter:Lc8/Uwb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/sxb;->mEventReporter:Lc8/Uwb;

    invoke-virtual {v0}, Lc8/Uwb;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private decideContentType(Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;
    .locals 2
    .param p1, "format"    # Landroid/graphics/Bitmap$CompressFormat;

    .prologue
    .line 137
    sget-object v0, Lc8/rxb;->$SwitchMap$android$graphics$Bitmap$CompressFormat:[I

    invoke-virtual {p1}, Landroid/graphics/Bitmap$CompressFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 143
    const-string/jumbo v0, "image/jpeg"

    :goto_0
    return-object v0

    .line 139
    :pswitch_0
    const-string/jumbo v0, "image/webp"

    goto :goto_0

    .line 141
    :pswitch_1
    const-string/jumbo v0, "image/png"

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private decideFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 126
    if-eqz p1, :cond_3

    .line 127
    const-string/jumbo v0, ".webp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ".WEBP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    .line 133
    :goto_0
    return-object v0

    .line 129
    :cond_1
    const-string/jumbo v0, ".png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, ".PNG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    .line 133
    :cond_3
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0
.end method

.method private getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lc8/sxb;->mRequestIdString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 153
    iget v0, p0, Lc8/sxb;->mRequestId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/sxb;->mRequestIdString:Ljava/lang/String;

    .line 155
    :cond_0
    iget-object v0, p0, Lc8/sxb;->mRequestIdString:Ljava/lang/String;

    return-object v0
.end method

.method public static newInstance()Lc8/sxb;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lc8/sxb;

    invoke-direct {v0}, Lc8/sxb;-><init>()V

    return-object v0
.end method

.method public static setEnabled(Z)V
    .locals 0
    .param p0, "isEnabled"    # Z

    .prologue
    .line 50
    sput-boolean p0, Lc8/sxb;->enabled:Z

    .line 51
    return-void
.end method


# virtual methods
.method public onFail(Lc8/pxf;)V
    .locals 2
    .param p1, "event"    # Lc8/pxf;

    .prologue
    .line 115
    invoke-direct {p0}, Lc8/sxb;->canReport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lc8/sxb;->mEventReporter:Lc8/Uwb;

    new-instance v1, Lc8/qxb;

    invoke-direct {v1, p0, p1}, Lc8/qxb;-><init>(Lc8/sxb;Lc8/pxf;)V

    invoke-virtual {v0, v1}, Lc8/Uwb;->execAsync(Ljava/lang/Runnable;)V

    .line 123
    :cond_0
    return-void
.end method

.method public onSuccess(Lc8/wxf;)V
    .locals 2
    .param p1, "event"    # Lc8/wxf;

    .prologue
    .line 73
    invoke-direct {p0}, Lc8/sxb;->canReport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lc8/sxb;->mEventReporter:Lc8/Uwb;

    new-instance v1, Lc8/pxb;

    invoke-direct {v1, p0, p1}, Lc8/pxb;-><init>(Lc8/sxb;Lc8/wxf;)V

    invoke-virtual {v0, v1}, Lc8/Uwb;->execAsync(Ljava/lang/Runnable;)V

    .line 112
    :cond_0
    return-void
.end method

.method public preRequest(Lc8/mxf;Ljava/util/Map;)V
    .locals 2
    .param p1, "creator"    # Lc8/mxf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/mxf;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lc8/sxb;->canReport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lc8/sxb;->mEventReporter:Lc8/Uwb;

    new-instance v1, Lc8/oxb;

    invoke-direct {v1, p0, p1, p2}, Lc8/oxb;-><init>(Lc8/sxb;Lc8/mxf;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lc8/Uwb;->execAsync(Ljava/lang/Runnable;)V

    .line 70
    :cond_0
    return-void
.end method
