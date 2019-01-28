.class public Lc8/kcb;
.super Ljava/lang/Object;
.source "LottieComposition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/jcb;
    }
.end annotation


# instance fields
.field private final bounds:Landroid/graphics/Rect;

.field private final characters:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Lc8/Fdb;",
            ">;"
        }
    .end annotation
.end field

.field private final dpScale:F

.field private final endFrame:J

.field private final fonts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/Ddb;",
            ">;"
        }
    .end annotation
.end field

.field private final frameRate:F

.field private final images:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/wcb;",
            ">;"
        }
    .end annotation
.end field

.field private final layerMap:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Lc8/xfb;",
            ">;"
        }
    .end annotation
.end field

.field private final layers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/xfb;",
            ">;"
        }
    .end annotation
.end field

.field private final majorVersion:I

.field private final minorVersion:I

.field private final patchVersion:I

.field private final performanceTracker:Lc8/Acb;

.field private final precomps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lc8/xfb;",
            ">;>;"
        }
    .end annotation
.end field

.field private final startFrame:J

.field private final warnings:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/graphics/Rect;JJFFIII)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "startFrame"    # J
    .param p4, "endFrame"    # J
    .param p6, "frameRate"    # F
    .param p7, "dpScale"    # F
    .param p8, "major"    # I
    .param p9, "minor"    # I
    .param p10, "patch"    # I

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/kcb;->precomps:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/kcb;->images:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/kcb;->fonts:Ljava/util/Map;

    .line 48
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lc8/kcb;->characters:Landroid/support/v4/util/SparseArrayCompat;

    .line 49
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lc8/kcb;->layerMap:Landroid/support/v4/util/LongSparseArray;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/kcb;->layers:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc8/kcb;->warnings:Ljava/util/HashSet;

    .line 53
    new-instance v0, Lc8/Acb;

    invoke-direct {v0}, Lc8/Acb;-><init>()V

    iput-object v0, p0, Lc8/kcb;->performanceTracker:Lc8/Acb;

    .line 66
    iput-object p1, p0, Lc8/kcb;->bounds:Landroid/graphics/Rect;

    .line 67
    iput-wide p2, p0, Lc8/kcb;->startFrame:J

    .line 68
    iput-wide p4, p0, Lc8/kcb;->endFrame:J

    .line 69
    iput p6, p0, Lc8/kcb;->frameRate:F

    .line 70
    iput p7, p0, Lc8/kcb;->dpScale:F

    .line 71
    iput p8, p0, Lc8/kcb;->majorVersion:I

    .line 72
    iput p9, p0, Lc8/kcb;->minorVersion:I

    .line 73
    iput p10, p0, Lc8/kcb;->patchVersion:I

    .line 74
    const/4 v0, 0x4

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lc8/Kfb;->isAtLeastVersion(Lc8/kcb;III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    const-string/jumbo v0, "Lottie only supports bodymovin >= 4.5.0"

    invoke-virtual {p0, v0}, Lc8/kcb;->addWarning(Ljava/lang/String;)V

    .line 77
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Rect;JJFFIIILc8/icb;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/Rect;
    .param p2, "x1"    # J
    .param p4, "x2"    # J
    .param p6, "x3"    # F
    .param p7, "x4"    # F
    .param p8, "x5"    # I
    .param p9, "x6"    # I
    .param p10, "x7"    # I
    .param p11, "x8"    # Lc8/icb;

    .prologue
    .line 42
    invoke-direct/range {p0 .. p10}, Lc8/kcb;-><init>(Landroid/graphics/Rect;JJFFIII)V

    return-void
.end method

.method static synthetic access$100(Lc8/kcb;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lc8/kcb;

    .prologue
    .line 42
    iget-object v0, p0, Lc8/kcb;->layers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lc8/kcb;)Landroid/support/v4/util/LongSparseArray;
    .locals 1
    .param p0, "x0"    # Lc8/kcb;

    .prologue
    .line 42
    iget-object v0, p0, Lc8/kcb;->layerMap:Landroid/support/v4/util/LongSparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lc8/kcb;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lc8/kcb;

    .prologue
    .line 42
    iget-object v0, p0, Lc8/kcb;->precomps:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lc8/kcb;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lc8/kcb;

    .prologue
    .line 42
    iget-object v0, p0, Lc8/kcb;->images:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lc8/kcb;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lc8/kcb;

    .prologue
    .line 42
    iget-object v0, p0, Lc8/kcb;->fonts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lc8/kcb;)Landroid/support/v4/util/SparseArrayCompat;
    .locals 1
    .param p0, "x0"    # Lc8/kcb;

    .prologue
    .line 42
    iget-object v0, p0, Lc8/kcb;->characters:Landroid/support/v4/util/SparseArrayCompat;

    return-object v0
.end method


# virtual methods
.method public addWarning(Ljava/lang/String;)V
    .locals 1
    .param p1, "warning"    # Ljava/lang/String;
    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lc8/kcb;->warnings:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lc8/kcb;->bounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getCharacters()Landroid/support/v4/util/SparseArrayCompat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Lc8/Fdb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lc8/kcb;->characters:Landroid/support/v4/util/SparseArrayCompat;

    return-object v0
.end method

.method public getDpScale()F
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lc8/kcb;->dpScale:F

    return v0
.end method

.method public getDuration()J
    .locals 6

    .prologue
    .line 107
    iget-wide v2, p0, Lc8/kcb;->endFrame:J

    iget-wide v4, p0, Lc8/kcb;->startFrame:J

    sub-long v0, v2, v4

    .line 108
    .local v0, "frameDuration":J
    long-to-float v2, v0

    iget v3, p0, Lc8/kcb;->frameRate:F

    div-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    float-to-long v2, v2

    return-wide v2
.end method

.method public getDurationFrames()F
    .locals 2

    .prologue
    .line 163
    invoke-virtual {p0}, Lc8/kcb;->getDuration()J

    move-result-wide v0

    long-to-float v0, v0

    iget v1, p0, Lc8/kcb;->frameRate:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getEndFrame()J
    .locals 2
    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 133
    iget-wide v0, p0, Lc8/kcb;->endFrame:J

    return-wide v0
.end method

.method public getFonts()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/Ddb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lc8/kcb;->fonts:Ljava/util/Map;

    return-object v0
.end method

.method getImages()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/wcb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lc8/kcb;->images:Ljava/util/Map;

    return-object v0
.end method

.method public getLayers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/xfb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lc8/kcb;->layers:Ljava/util/List;

    return-object v0
.end method

.method public getMajorVersion()I
    .locals 1
    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 113
    iget v0, p0, Lc8/kcb;->majorVersion:I

    return v0
.end method

.method public getMinorVersion()I
    .locals 1
    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 118
    iget v0, p0, Lc8/kcb;->minorVersion:I

    return v0
.end method

.method public getPatchVersion()I
    .locals 1
    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 123
    iget v0, p0, Lc8/kcb;->patchVersion:I

    return v0
.end method

.method public getPerformanceTracker()Lc8/Acb;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lc8/kcb;->performanceTracker:Lc8/Acb;

    return-object v0
.end method

.method public getPrecomps(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lc8/xfb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lc8/kcb;->precomps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getStartFrame()J
    .locals 2
    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 128
    iget-wide v0, p0, Lc8/kcb;->startFrame:J

    return-wide v0
.end method

.method public layerModelForId(J)Lc8/xfb;
    .locals 1
    .param p1, "id"    # J
    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lc8/kcb;->layerMap:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/xfb;

    return-object v0
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 90
    iget-object v0, p0, Lc8/kcb;->performanceTracker:Lc8/Acb;

    invoke-virtual {v0, p1}, Lc8/Acb;->setEnabled(Z)V

    .line 91
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "LottieComposition:\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lc8/kcb;->layers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/xfb;

    .line 174
    .local v0, "layer":Lc8/xfb;
    const-string/jumbo v3, "\t"

    invoke-virtual {v0, v3}, Lc8/xfb;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 176
    .end local v0    # "layer":Lc8/xfb;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
