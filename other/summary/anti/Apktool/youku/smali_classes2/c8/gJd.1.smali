.class public Lc8/gJd;
.super Ljava/lang/Object;
.source "ANImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/iJd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageContainer"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mCacheKey:Ljava/lang/String;

.field private final mListener:Lc8/hJd;

.field private final mRequestUrl:Ljava/lang/String;

.field final synthetic this$0:Lc8/iJd;


# direct methods
.method public constructor <init>(Lc8/iJd;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lc8/hJd;)V
    .locals 0
    .param p1, "this$0"    # Lc8/iJd;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "requestUrl"    # Ljava/lang/String;
    .param p4, "cacheKey"    # Ljava/lang/String;
    .param p5, "listener"    # Lc8/hJd;

    .prologue
    .line 245
    iput-object p1, p0, Lc8/gJd;->this$0:Lc8/iJd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p2, p0, Lc8/gJd;->mBitmap:Landroid/graphics/Bitmap;

    .line 247
    iput-object p3, p0, Lc8/gJd;->mRequestUrl:Ljava/lang/String;

    .line 248
    iput-object p4, p0, Lc8/gJd;->mCacheKey:Ljava/lang/String;

    .line 249
    iput-object p5, p0, Lc8/gJd;->mListener:Lc8/hJd;

    .line 250
    return-void
.end method

.method static synthetic access$400(Lc8/gJd;)Lc8/hJd;
    .locals 1
    .param p0, "x0"    # Lc8/gJd;

    .prologue
    .line 234
    iget-object v0, p0, Lc8/gJd;->mListener:Lc8/hJd;

    return-object v0
.end method

.method static synthetic access$502(Lc8/gJd;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lc8/gJd;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 234
    iput-object p1, p0, Lc8/gJd;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method
