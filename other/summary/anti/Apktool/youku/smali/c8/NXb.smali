.class public Lc8/NXb;
.super Ljava/lang/Object;
.source "MirrorLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/OXb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SourceViewInfo"
.end annotation


# static fields
.field private static final mTmpLocation:[I


# instance fields
.field alpha:F

.field private mPreX:I

.field private mPreY:I

.field private final mWeakSourceView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private triggerCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lc8/NXb;->mTmpLocation:[I

    return-void
.end method

.method private constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "sourceView"    # Landroid/view/View;

    .prologue
    const v0, 0x7fffffff

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v0, p0, Lc8/NXb;->mPreX:I

    .line 24
    iput v0, p0, Lc8/NXb;->mPreY:I

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lc8/NXb;->triggerCount:I

    .line 26
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lc8/NXb;->alpha:F

    .line 29
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/NXb;->mWeakSourceView:Ljava/lang/ref/WeakReference;

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lc8/MXb;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Lc8/MXb;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lc8/NXb;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lc8/NXb;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lc8/NXb;

    .prologue
    .line 21
    iget-object v0, p0, Lc8/NXb;->mWeakSourceView:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$200(Lc8/NXb;)I
    .locals 1
    .param p0, "x0"    # Lc8/NXb;

    .prologue
    .line 21
    iget v0, p0, Lc8/NXb;->triggerCount:I

    return v0
.end method

.method static synthetic access$208(Lc8/NXb;)I
    .locals 2
    .param p0, "x0"    # Lc8/NXb;

    .prologue
    .line 21
    iget v0, p0, Lc8/NXb;->triggerCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lc8/NXb;->triggerCount:I

    return v0
.end method

.method static synthetic access$210(Lc8/NXb;)I
    .locals 2
    .param p0, "x0"    # Lc8/NXb;

    .prologue
    .line 21
    iget v0, p0, Lc8/NXb;->triggerCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lc8/NXb;->triggerCount:I

    return v0
.end method

.method static synthetic access$300(Lc8/NXb;)Z
    .locals 1
    .param p0, "x0"    # Lc8/NXb;

    .prologue
    .line 21
    invoke-direct {p0}, Lc8/NXb;->isMoved()Z

    move-result v0

    return v0
.end method

.method private isMoved()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 35
    iget-object v5, p0, Lc8/NXb;->mWeakSourceView:Ljava/lang/ref/WeakReference;

    invoke-static {v5}, Lcom/alibaba/poplayer/utils/Utils;->getObjectFromWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 36
    .local v3, "view":Landroid/view/View;
    if-nez v3, :cond_0

    .line 43
    :goto_0
    return v4

    .line 38
    :cond_0
    sget-object v5, Lc8/NXb;->mTmpLocation:[I

    invoke-virtual {v3, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 39
    sget-object v5, Lc8/NXb;->mTmpLocation:[I

    aget v0, v5, v2

    .local v0, "curX":I
    sget-object v5, Lc8/NXb;->mTmpLocation:[I

    aget v1, v5, v4

    .line 40
    .local v1, "curY":I
    iget v5, p0, Lc8/NXb;->mPreX:I

    if-ne v0, v5, :cond_1

    iget v5, p0, Lc8/NXb;->mPreY:I

    if-eq v1, v5, :cond_2

    :cond_1
    move v2, v4

    .line 41
    .local v2, "isMoved":Z
    :cond_2
    iput v0, p0, Lc8/NXb;->mPreX:I

    .line 42
    iput v1, p0, Lc8/NXb;->mPreY:I

    move v4, v2

    .line 43
    goto :goto_0
.end method
