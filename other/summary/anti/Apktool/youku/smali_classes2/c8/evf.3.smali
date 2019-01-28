.class public Lc8/evf;
.super Ljava/lang/Object;
.source "AnimatedFramesBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/gvf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CachedEntity"
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private references:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lc8/evf;->bitmap:Landroid/graphics/Bitmap;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lc8/evf;->references:I

    .line 55
    return-void
.end method

.method static synthetic access$000(Lc8/evf;)I
    .locals 1
    .param p0, "x0"    # Lc8/evf;

    .prologue
    .line 46
    iget v0, p0, Lc8/evf;->references:I

    return v0
.end method

.method static synthetic access$008(Lc8/evf;)I
    .locals 2
    .param p0, "x0"    # Lc8/evf;

    .prologue
    .line 46
    iget v0, p0, Lc8/evf;->references:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lc8/evf;->references:I

    return v0
.end method

.method static synthetic access$010(Lc8/evf;)I
    .locals 2
    .param p0, "x0"    # Lc8/evf;

    .prologue
    .line 46
    iget v0, p0, Lc8/evf;->references:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lc8/evf;->references:I

    return v0
.end method

.method static synthetic access$100(Lc8/evf;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lc8/evf;

    .prologue
    .line 46
    iget-object v0, p0, Lc8/evf;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method
