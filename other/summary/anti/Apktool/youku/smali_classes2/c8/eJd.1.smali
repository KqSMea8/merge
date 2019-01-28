.class public Lc8/eJd;
.super Ljava/lang/Object;
.source "ANImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/iJd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BatchedImageRequest"
.end annotation


# instance fields
.field private mANError:Lcom/meizu/cloud/pushsdk/networking/error/ANError;

.field private final mContainers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lc8/gJd;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequest:Lc8/VHd;

.field private mResponseBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lc8/iJd;


# direct methods
.method public constructor <init>(Lc8/iJd;Lc8/VHd;Lc8/gJd;)V
    .locals 1
    .param p2, "request"    # Lc8/VHd;
    .param p3, "container"    # Lc8/gJd;

    .prologue
    .line 294
    iput-object p1, p0, Lc8/eJd;->this$0:Lc8/iJd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lc8/eJd;->mContainers:Ljava/util/LinkedList;

    .line 295
    iput-object p2, p0, Lc8/eJd;->mRequest:Lc8/VHd;

    .line 296
    iget-object v0, p0, Lc8/eJd;->mContainers:Ljava/util/LinkedList;

    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 297
    return-void
.end method

.method static synthetic access$000(Lc8/eJd;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lc8/eJd;

    .prologue
    .line 284
    iget-object v0, p0, Lc8/eJd;->mResponseBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$300(Lc8/eJd;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lc8/eJd;

    .prologue
    .line 284
    iget-object v0, p0, Lc8/eJd;->mContainers:Ljava/util/LinkedList;

    return-object v0
.end method


# virtual methods
.method public getError()Lcom/meizu/cloud/pushsdk/networking/error/ANError;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lc8/eJd;->mANError:Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    return-object v0
.end method
