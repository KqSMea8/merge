.class public Lc8/wrb;
.super Lc8/ZUf;
.source "WXBlurEXModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/vrb;
    }
.end annotation


# static fields
.field public static final BLUR_MODULE_NAME:Ljava/lang/String; = "blurEx"

.field private static final DATA:Ljava/lang/String; = "data"

.field private static final DEFAULT_OVERLAY_COLOR:Ljava/lang/String; = "0x00FFFFFF"

.field private static final DEFAULT_SIZE:I = 0x10

.field private static final RESULT:Ljava/lang/String; = "result"

.field private static final RESULT_FAILED:Ljava/lang/String; = "failure"

.field private static final RESULT_SUCCESS:Ljava/lang/String; = "success"

.field static final TAG:Ljava/lang/String; = "WXBlurEXModule"


# instance fields
.field private mBitmapHolders:Lc8/vrb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/vrb",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIdGenerator:Ljava/util/concurrent/atomic/AtomicLong;

.field private mUIHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 35
    invoke-direct {p0}, Lc8/ZUf;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/wrb;->mBitmapHolders:Lc8/vrb;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lc8/wrb;->mIdGenerator:Ljava/util/concurrent/atomic/AtomicLong;

    .line 54
    new-instance v0, Landroid/os/Handler;

    .line 55
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/wrb;->mUIHandler:Landroid/os/Handler;

    .line 189
    return-void
.end method

.method static synthetic access$000(Lc8/wrb;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lc8/wrb;

    .prologue
    .line 35
    iget-object v0, p0, Lc8/wrb;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lc8/wrb;Ljava/lang/String;JLc8/EWf;)V
    .locals 0
    .param p0, "x0"    # Lc8/wrb;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # Lc8/EWf;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/wrb;->fireCallbackEvent(Ljava/lang/String;JLc8/EWf;)V

    return-void
.end method

.method static synthetic access$200(Lc8/wrb;)Lc8/vrb;
    .locals 1
    .param p0, "x0"    # Lc8/wrb;

    .prologue
    .line 35
    iget-object v0, p0, Lc8/wrb;->mBitmapHolders:Lc8/vrb;

    return-object v0
.end method

.method static synthetic access$202(Lc8/wrb;Lc8/vrb;)Lc8/vrb;
    .locals 0
    .param p0, "x0"    # Lc8/wrb;
    .param p1, "x1"    # Lc8/vrb;

    .prologue
    .line 35
    iput-object p1, p0, Lc8/wrb;->mBitmapHolders:Lc8/vrb;

    return-object p1
.end method

.method static synthetic access$300(Lc8/wrb;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .param p0, "x0"    # Lc8/wrb;

    .prologue
    .line 35
    iget-object v0, p0, Lc8/wrb;->mIdGenerator:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method private fireCallbackEvent(Ljava/lang/String;JLc8/EWf;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "data"    # J
    .param p4, "callback"    # Lc8/EWf;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 114
    if-nez p4, :cond_0

    .line 123
    :goto_0
    return-void

    .line 117
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 118
    .local v0, "returnValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "result"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-wide/16 v2, -0x1

    cmp-long v1, p2, v2

    if-eqz v1, :cond_1

    .line 120
    const-string/jumbo v1, "data"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_1
    invoke-interface {p4, v0}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public applyBlur(Ljava/lang/String;JLc8/EWf;)V
    .locals 10
    .param p1, "targetImgRef"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "uniqueId"    # J
    .param p4, "callback"    # Lc8/EWf;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    .line 129
    if-eqz p1, :cond_0

    const-string/jumbo v5, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lc8/wrb;->mWXSDKInstance:Lc8/nVf;

    if-nez v5, :cond_1

    .line 130
    :cond_0
    const-string/jumbo v5, "WXBlurEXModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "illegal argument. [sourceRef:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v5, p0, Lc8/wrb;->mBitmapHolders:Lc8/vrb;

    if-nez v5, :cond_2

    .line 135
    const-string/jumbo v5, "WXBlurEXModule"

    const-string/jumbo v6, "bitmapHolders not initialized"

    invoke-static {v5, v6}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string/jumbo v5, "failure"

    invoke-direct {p0, v5, v8, v9, p4}, Lc8/wrb;->fireCallbackEvent(Ljava/lang/String;JLc8/EWf;)V

    goto :goto_0

    .line 140
    :cond_2
    iget-object v5, p0, Lc8/wrb;->mBitmapHolders:Lc8/vrb;

    invoke-virtual {v5, p2, p3}, Lc8/vrb;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 141
    .local v1, "bitmapRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    .line 142
    :cond_3
    const-string/jumbo v5, "WXBlurEXModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "bitmap not found.[id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string/jumbo v5, "failure"

    invoke-direct {p0, v5, v8, v9, p4}, Lc8/wrb;->fireCallbackEvent(Ljava/lang/String;JLc8/EWf;)V

    goto :goto_0

    .line 146
    :cond_4
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 147
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lc8/wrb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v5}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lc8/Cyb;->findViewByRef(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    .line 148
    .local v4, "targetView":Landroid/view/View;
    if-nez v4, :cond_5

    .line 149
    const-string/jumbo v5, "WXBlurEXModule"

    const-string/jumbo v6, "view not found"

    invoke-static {v5, v6}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string/jumbo v5, "failure"

    invoke-direct {p0, v5, v8, v9, p4}, Lc8/wrb;->fireCallbackEvent(Ljava/lang/String;JLc8/EWf;)V

    goto :goto_0

    .line 154
    :cond_5
    instance-of v5, v4, Landroid/widget/ImageView;

    if-nez v5, :cond_6

    .line 155
    const-string/jumbo v5, "WXBlurEXModule"

    const-string/jumbo v6, "target is not an imageView"

    invoke-static {v5, v6}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string/jumbo v5, "failure"

    invoke-direct {p0, v5, v8, v9, p4}, Lc8/wrb;->fireCallbackEvent(Ljava/lang/String;JLc8/EWf;)V

    goto/16 :goto_0

    :cond_6
    move-object v3, v4

    .line 160
    check-cast v3, Landroid/widget/ImageView;

    .line 164
    .local v3, "imageView":Landroid/widget/ImageView;
    :try_start_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 166
    iget-object v5, p0, Lc8/wrb;->mBitmapHolders:Lc8/vrb;

    invoke-virtual {v5, p2, p3}, Lc8/vrb;->remove(J)V

    .line 167
    const-string/jumbo v5, "success"

    const-wide/16 v6, -0x1

    invoke-direct {p0, v5, v6, v7, p4}, Lc8/wrb;->fireCallbackEvent(Ljava/lang/String;JLc8/EWf;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 168
    :catch_0
    move-exception v2

    .line 169
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "WXBlurEXModule"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v5, p0, Lc8/wrb;->mBitmapHolders:Lc8/vrb;

    invoke-virtual {v5, p2, p3}, Lc8/vrb;->remove(J)V

    .line 171
    const-string/jumbo v5, "failure"

    invoke-direct {p0, v5, v8, v9, p4}, Lc8/wrb;->fireCallbackEvent(Ljava/lang/String;JLc8/EWf;)V

    goto/16 :goto_0
.end method

.method public createBlur(Ljava/lang/String;ILc8/EWf;)V
    .locals 1
    .param p1, "sourceRef"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "radius"    # I
    .param p3, "callback"    # Lc8/EWf;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 60
    const-string/jumbo v0, "0x00FFFFFF"

    invoke-virtual {p0, p1, p2, v0, p3}, Lc8/wrb;->createBlurWithOverlay(Ljava/lang/String;ILjava/lang/String;Lc8/EWf;)V

    .line 61
    return-void
.end method

.method public createBlurWithOverlay(Ljava/lang/String;ILjava/lang/String;Lc8/EWf;)V
    .locals 8
    .param p1, "sourceRef"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "radius"    # I
    .param p3, "overlayColor"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "callback"    # Lc8/EWf;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 66
    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-ltz p2, :cond_0

    if-eqz p4, :cond_0

    iget-object v0, p0, Lc8/wrb;->mWXSDKInstance:Lc8/nVf;

    if-nez v0, :cond_1

    .line 67
    :cond_0
    const-string/jumbo v0, "WXBlurEXModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "illegal argument. [sourceRef:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",radius:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :goto_0
    return-void

    .line 71
    :cond_1
    if-eqz p3, :cond_2

    const-string/jumbo v0, ""

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    :cond_2
    const-string/jumbo v0, "WXBlurEXModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "illegal argument. [overlayColor:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_3
    const/4 v0, 0x0

    invoke-static {p3, v0}, Lc8/Bgg;->getColor(Ljava/lang/String;I)I

    move-result v5

    .line 77
    .local v5, "overlayColorInt":I
    iget-object v0, p0, Lc8/wrb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lc8/Cyb;->findViewByRef(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    .line 78
    .local v4, "targetView":Landroid/view/View;
    if-nez v4, :cond_4

    .line 79
    const-string/jumbo v0, "WXBlurEXModule"

    const-string/jumbo v1, "view not found"

    invoke-static {v0, v1}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string/jumbo v0, "failure"

    const-wide/16 v6, -0x1

    invoke-direct {p0, v0, v6, v7, p4}, Lc8/wrb;->fireCallbackEvent(Ljava/lang/String;JLc8/EWf;)V

    goto :goto_0

    .line 84
    :cond_4
    new-instance v0, Lc8/rrb;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lc8/rrb;-><init>(Z)V

    invoke-static {v0}, Lc8/srb;->create(Lc8/qrb;)Lc8/srb;

    move-result-object v3

    .line 86
    .local v3, "controller":Lc8/srb;
    new-instance v0, Lc8/urb;

    const-string/jumbo v2, "WXBlurEXModule"

    move-object v1, p0

    move v6, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lc8/urb;-><init>(Lc8/wrb;Ljava/lang/String;Lc8/srb;Landroid/view/View;IILc8/EWf;)V

    invoke-static {v0}, Lc8/Vcf;->postTask(Lc8/Tcf;)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 178
    iget-object v0, p0, Lc8/wrb;->mBitmapHolders:Lc8/vrb;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lc8/wrb;->mBitmapHolders:Lc8/vrb;

    invoke-virtual {v0}, Lc8/vrb;->clear()V

    .line 181
    :cond_0
    iput-object v1, p0, Lc8/wrb;->mBitmapHolders:Lc8/vrb;

    .line 182
    iget-object v0, p0, Lc8/wrb;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lc8/wrb;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 185
    :cond_1
    iput-object v1, p0, Lc8/wrb;->mUIHandler:Landroid/os/Handler;

    .line 186
    return-void
.end method
